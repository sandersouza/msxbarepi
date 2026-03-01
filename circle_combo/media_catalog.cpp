#include "media_catalog.h"

extern "C" {
#include <fatfs/ff.h>
}

static const unsigned kCatalogMaxEntries = 512u;
static const unsigned kCatalogMaxDepth = 16u;

struct TCatalogRoot
{
	const char *path;
	unsigned char type;
};

struct TCatalogStackNode
{
	char path[192];
	unsigned char type;
	DIR dir;
};

static const TCatalogRoot kCatalogRoots[] = {
	{"SD:/roms", (unsigned char) ComboMediaTypeRom},
	{"SD:/disks", (unsigned char) ComboMediaTypeDisk}
};

static TComboMediaEntry s_Entries[kCatalogMaxEntries];
static unsigned s_EntryCount = 0u;
static unsigned s_RomCount = 0u;
static unsigned s_DiskCount = 0u;
static unsigned s_DirCount = 0u;
static unsigned s_FileCount = 0u;
static unsigned s_ErrorCount = 0u;
static unsigned s_DroppedCount = 0u;
static unsigned s_RootIndex = 0u;
static unsigned s_StackDepth = 0u;
static boolean s_Scanning = FALSE;
static TCatalogStackNode s_Stack[kCatalogMaxDepth];

static void local_memset(void *dst, unsigned char value, unsigned size)
{
	unsigned char *out = (unsigned char *) dst;
	for (unsigned i = 0u; i < size; ++i)
	{
		out[i] = value;
	}
}

static void local_memcpy(void *dst, const void *src, unsigned size)
{
	unsigned char *out = (unsigned char *) dst;
	const unsigned char *in = (const unsigned char *) src;
	for (unsigned i = 0u; i < size; ++i)
	{
		out[i] = in[i];
	}
}

static unsigned local_strlen(const char *text)
{
	unsigned len = 0u;
	if (text == 0)
	{
		return 0u;
	}
	while (text[len] != '\0')
	{
		++len;
	}
	return len;
}

static char local_tolower(char ch)
{
	if (ch >= 'A' && ch <= 'Z')
	{
		return (char) (ch - 'A' + 'a');
	}
	return ch;
}

static int local_starts_with_dot(const char *name)
{
	return name != 0 && (name[0] == '.') && (name[1] == '\0' || (name[1] == '.' && name[2] == '\0'));
}

static int local_ext_match(const char *name, const char *ext)
{
	const unsigned name_len = local_strlen(name);
	const unsigned ext_len = local_strlen(ext);
	if (name_len < ext_len || ext_len == 0u)
	{
		return 0;
	}

	const char *a = name + (name_len - ext_len);
	for (unsigned i = 0u; i < ext_len; ++i)
	{
		if (local_tolower(a[i]) != local_tolower(ext[i]))
		{
			return 0;
		}
	}
	return 1;
}

static int local_is_supported_file(const char *name, unsigned char type)
{
	if (name == 0 || name[0] == '\0')
	{
		return 0;
	}

	if (type == (unsigned char) ComboMediaTypeRom)
	{
		return local_ext_match(name, ".rom")
			|| local_ext_match(name, ".mx1")
			|| local_ext_match(name, ".mx2");
	}
	if (type == (unsigned char) ComboMediaTypeDisk)
	{
		return local_ext_match(name, ".dsk");
	}
	return 0;
}

static int local_join_path(char *dst, unsigned dst_size, const char *base, const char *name)
{
	if (dst == 0 || dst_size == 0u || base == 0 || name == 0)
	{
		return 0;
	}

	const unsigned base_len = local_strlen(base);
	const unsigned name_len = local_strlen(name);
	const unsigned needs_sep = (base_len > 0u && base[base_len - 1u] != '/') ? 1u : 0u;
	const unsigned total = base_len + needs_sep + name_len + 1u;
	if (total > dst_size)
	{
		return 0;
	}

	local_memcpy(dst, base, base_len);
	unsigned cursor = base_len;
	if (needs_sep)
	{
		dst[cursor++] = '/';
	}
	local_memcpy(dst + cursor, name, name_len);
	cursor += name_len;
	dst[cursor] = '\0';
	return 1;
}

static void local_pop_stack(void)
{
	if (s_StackDepth == 0u)
	{
		return;
	}
	f_closedir(&s_Stack[s_StackDepth - 1u].dir);
	--s_StackDepth;
}

static void local_record_entry(const char *path, unsigned size_bytes, unsigned char type)
{
	if (path == 0 || path[0] == '\0')
	{
		return;
	}

	if (s_EntryCount >= kCatalogMaxEntries)
	{
		++s_DroppedCount;
		return;
	}

	TComboMediaEntry *entry = &s_Entries[s_EntryCount++];
	local_memset(entry, 0, sizeof(*entry));
	const unsigned len = local_strlen(path);
	const unsigned copy_len = len < sizeof(entry->path) - 1u ? len : (sizeof(entry->path) - 1u);
	local_memcpy(entry->path, path, copy_len);
	entry->path[copy_len] = '\0';
	entry->size_bytes = size_bytes;
	entry->type = type;
	if (type == (unsigned char) ComboMediaTypeRom)
	{
		++s_RomCount;
	}
	else if (type == (unsigned char) ComboMediaTypeDisk)
	{
		++s_DiskCount;
	}
}

static void local_open_next_root(void)
{
	while (s_RootIndex < (sizeof(kCatalogRoots) / sizeof(kCatalogRoots[0])))
	{
		const TCatalogRoot *root = &kCatalogRoots[s_RootIndex++];
		if (s_StackDepth >= kCatalogMaxDepth)
		{
			++s_ErrorCount;
			s_Scanning = FALSE;
			return;
		}

		TCatalogStackNode *node = &s_Stack[s_StackDepth];
		local_memset(node, 0, sizeof(*node));
		const unsigned root_len = local_strlen(root->path);
		if (root_len >= sizeof(node->path))
		{
			++s_ErrorCount;
			continue;
		}
		local_memcpy(node->path, root->path, root_len + 1u);
		node->type = root->type;

		const FRESULT fr = f_opendir(&node->dir, node->path);
		if (fr == FR_OK)
		{
			++s_StackDepth;
			return;
		}

		if (fr != FR_NO_PATH && fr != FR_NO_FILE)
		{
			++s_ErrorCount;
		}
	}

	s_Scanning = FALSE;
}

void combo_media_catalog_reset(void)
{
	s_EntryCount = 0u;
	s_RomCount = 0u;
	s_DiskCount = 0u;
	s_DirCount = 0u;
	s_FileCount = 0u;
	s_ErrorCount = 0u;
	s_DroppedCount = 0u;
	s_RootIndex = 0u;
	s_StackDepth = 0u;
	s_Scanning = FALSE;
	local_memset(s_Entries, 0, sizeof(s_Entries));
	local_memset(s_Stack, 0, sizeof(s_Stack));
}

void combo_media_catalog_begin_scan(void)
{
	combo_media_catalog_reset();
	s_Scanning = TRUE;
	local_open_next_root();
}

void combo_media_catalog_scan_step(unsigned budget_entries)
{
	if (!s_Scanning || budget_entries == 0u)
	{
		return;
	}

	while (budget_entries > 0u && s_Scanning)
	{
		if (s_StackDepth == 0u)
		{
			local_open_next_root();
			if (!s_Scanning)
			{
				break;
			}
		}

		TCatalogStackNode *node = &s_Stack[s_StackDepth - 1u];
		FILINFO fno;
		local_memset(&fno, 0, sizeof(fno));
		const FRESULT fr = f_readdir(&node->dir, &fno);
		--budget_entries;

		if (fr != FR_OK)
		{
			++s_ErrorCount;
			local_pop_stack();
			continue;
		}

		if (fno.fname[0] == '\0')
		{
			local_pop_stack();
			continue;
		}

		if ((fno.fattrib & AM_DIR) != 0u)
		{
			if (local_starts_with_dot(fno.fname))
			{
				continue;
			}
			++s_DirCount;
			if (s_StackDepth >= kCatalogMaxDepth)
			{
				++s_ErrorCount;
				continue;
			}

			TCatalogStackNode *child = &s_Stack[s_StackDepth];
			local_memset(child, 0, sizeof(*child));
			if (!local_join_path(child->path, sizeof(child->path), node->path, fno.fname))
			{
				++s_ErrorCount;
				continue;
			}
			child->type = node->type;

			const FRESULT child_fr = f_opendir(&child->dir, child->path);
			if (child_fr == FR_OK)
			{
				++s_StackDepth;
			}
			else if (child_fr != FR_NO_PATH && child_fr != FR_NO_FILE)
			{
				++s_ErrorCount;
			}
			continue;
		}

		++s_FileCount;
		if (!local_is_supported_file(fno.fname, node->type))
		{
			continue;
		}

		char full_path[192];
		if (!local_join_path(full_path, sizeof(full_path), node->path, fno.fname))
		{
			++s_ErrorCount;
			continue;
		}

		local_record_entry(full_path, (unsigned) fno.fsize, node->type);
	}
}

boolean combo_media_catalog_is_scanning(void)
{
	return s_Scanning;
}

unsigned combo_media_catalog_entry_count(void)
{
	return s_EntryCount;
}

unsigned combo_media_catalog_rom_count(void)
{
	return s_RomCount;
}

unsigned combo_media_catalog_disk_count(void)
{
	return s_DiskCount;
}

unsigned combo_media_catalog_dir_count(void)
{
	return s_DirCount;
}

unsigned combo_media_catalog_file_count(void)
{
	return s_FileCount;
}

unsigned combo_media_catalog_error_count(void)
{
	return s_ErrorCount;
}

unsigned combo_media_catalog_dropped_count(void)
{
	return s_DroppedCount;
}

const TComboMediaEntry *combo_media_catalog_entries(void)
{
	return s_Entries;
}
