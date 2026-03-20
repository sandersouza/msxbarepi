#include "gamemaster_catalog.h"

#include <string.h>

#include "streams/file_stream.h"

typedef struct
{
    TGameMasterCatalog *catalog;
    TGameMasterGame *current_game;
    TGameMasterCheat *current_cheat;
    unsigned line_number;
} TGameMasterParser;

static char gm_tolower_ascii(char ch)
{
    if (ch >= 'A' && ch <= 'Z')
    {
        return (char) (ch - 'A' + 'a');
    }
    return ch;
}

static int gm_is_space(char ch)
{
    return ch == ' ' || ch == '\t';
}

static int gm_is_hex(char ch)
{
    ch = gm_tolower_ascii(ch);
    return (ch >= '0' && ch <= '9') || (ch >= 'a' && ch <= 'f');
}

static unsigned gm_strlen(const char *text)
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

static int gm_streq_nocase(const char *a, const char *b)
{
    unsigned i = 0u;
    if (a == 0 || b == 0)
    {
        return 0;
    }
    while (a[i] != '\0' && b[i] != '\0')
    {
        if (gm_tolower_ascii(a[i]) != gm_tolower_ascii(b[i]))
        {
            return 0;
        }
        ++i;
    }
    return a[i] == '\0' && b[i] == '\0';
}

static char *gm_skip_space(char *cursor)
{
    while (cursor != 0 && gm_is_space(*cursor))
    {
        ++cursor;
    }
    return cursor;
}

static const char *gm_skip_space_const(const char *cursor)
{
    while (cursor != 0 && gm_is_space(*cursor))
    {
        ++cursor;
    }
    return cursor;
}

static int gm_line_done(const char *cursor)
{
    cursor = gm_skip_space_const(cursor);
    return cursor == 0 || *cursor == '\0' || *cursor == '#' || *cursor == ';';
}

static void gm_strip_eol(char *line)
{
    unsigned i = 0u;
    if (line == 0)
    {
        return;
    }
    while (line[i] != '\0')
    {
        if (line[i] == '\r' || line[i] == '\n')
        {
            line[i] = '\0';
            return;
        }
        ++i;
    }
}

static int gm_parse_keyword(char **cursor, char *dst, unsigned dst_size)
{
    unsigned len = 0u;
    char *src = gm_skip_space(*cursor);
    if (src == 0 || *src == '\0' || *src == '#' || *src == ';')
    {
        return 0;
    }
    while (*src != '\0' && !gm_is_space(*src))
    {
        if (*src == '#' || *src == ';')
        {
            break;
        }
        if (len + 1u >= dst_size)
        {
            return 0;
        }
        dst[len++] = *src++;
    }
    dst[len] = '\0';
    *cursor = src;
    return len > 0u;
}

static int gm_parse_quoted(char **cursor, char *dst, unsigned dst_size)
{
    unsigned len = 0u;
    char *src = gm_skip_space(*cursor);
    if (src == 0 || *src != '"')
    {
        return 0;
    }
    ++src;
    while (*src != '\0' && *src != '"')
    {
        if (len + 1u >= dst_size)
        {
            return -1;
        }
        dst[len++] = *src++;
    }
    if (*src != '"')
    {
        return 0;
    }
    dst[len] = '\0';
    *cursor = src + 1;
    return 1;
}

static int gm_parse_word_or_quoted(char **cursor, char *dst, unsigned dst_size)
{
    unsigned len = 0u;
    char *src = gm_skip_space(*cursor);
    if (src == 0 || *src == '\0' || *src == '#' || *src == ';')
    {
        return 0;
    }
    if (*src == '"')
    {
        return gm_parse_quoted(cursor, dst, dst_size);
    }
    while (*src != '\0' && !gm_is_space(*src) && *src != '#' && *src != ';')
    {
        if (len + 1u >= dst_size)
        {
            return -1;
        }
        dst[len++] = *src++;
    }
    dst[len] = '\0';
    *cursor = src;
    return len > 0u;
}

static int gm_parse_hex16(char **cursor, uint16_t *value)
{
    unsigned result = 0u;
    unsigned digits = 0u;
    char *src = gm_skip_space(*cursor);
    if (src == 0 || !gm_is_hex(*src))
    {
        return 0;
    }
    while (*src != '\0' && gm_is_hex(*src))
    {
        result <<= 4;
        if (*src >= '0' && *src <= '9')
        {
            result |= (unsigned) (*src - '0');
        }
        else
        {
            result |= (unsigned) (gm_tolower_ascii(*src) - 'a' + 10);
        }
        ++src;
        ++digits;
        if (result > 0xFFFFu || digits > 4u)
        {
            return -1;
        }
    }
    *value = (uint16_t) result;
    *cursor = src;
    return digits > 0u;
}

static int gm_parse_size_bits(char **cursor, uint8_t *size_bits)
{
    char token[16];
    const int status = gm_parse_word_or_quoted(cursor, token, sizeof(token));
    if (status <= 0)
    {
        return status;
    }
    if (gm_streq_nocase(token, "8") || gm_streq_nocase(token, "8-bit") || gm_streq_nocase(token, "8bit"))
    {
        *size_bits = 8u;
        return 1;
    }
    if (gm_streq_nocase(token, "16") || gm_streq_nocase(token, "16-bit") || gm_streq_nocase(token, "16bit"))
    {
        *size_bits = 16u;
        return 1;
    }
    return 0;
}

static void gm_fail(TGameMasterCatalog *catalog, unsigned status, unsigned line_number)
{
    if (catalog == 0)
    {
        return;
    }
    catalog->game_count = 0u;
    catalog->cheat_count = 0u;
    catalog->poke_count = 0u;
    catalog->last_status = (uint8_t) status;
    catalog->error_line = (uint16_t) line_number;
}

static int gm_game_title_exists(const TGameMasterCatalog *catalog, const char *title)
{
    unsigned i;
    for (i = 0u; i < catalog->game_count; ++i)
    {
        if (gm_streq_nocase(catalog->games[i].title, title))
        {
            return 1;
        }
    }
    return 0;
}

static int gm_game_rom_exists(const TGameMasterCatalog *catalog, const char *rom_id)
{
    unsigned i;
    if (rom_id == 0 || rom_id[0] == '\0')
    {
        return 0;
    }
    for (i = 0u; i < catalog->game_count; ++i)
    {
        if (gm_streq_nocase(catalog->games[i].rom_id, rom_id))
        {
            return 1;
        }
    }
    return 0;
}

static int gm_current_game_cheat_exists(const TGameMasterCatalog *catalog,
                                        const TGameMasterGame *game,
                                        const char *title)
{
    unsigned i;
    const unsigned first = game->cheat_first;
    const unsigned count = game->cheat_count;
    for (i = 0u; i < count; ++i)
    {
        if (gm_streq_nocase(catalog->cheats[first + i].title, title))
        {
            return 1;
        }
    }
    return 0;
}

static int gm_begin_game(TGameMasterParser *parser, char *cursor)
{
    TGameMasterCatalog *catalog = parser->catalog;
    TGameMasterGame *game;
    char title[GAMEMASTER_TITLE_MAX + 1u];
    const int parse_status = gm_parse_quoted(&cursor, title, sizeof(title));
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadTitleTooLong, parser->line_number);
        return 0;
    }
    if (parse_status == 0 || !gm_line_done(cursor))
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_game != 0 || parser->current_cheat != 0)
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (catalog->game_count >= GAMEMASTER_MAX_GAMES)
    {
        gm_fail(catalog, GameMasterLoadTooManyGames, parser->line_number);
        return 0;
    }
    if (gm_game_title_exists(catalog, title))
    {
        gm_fail(catalog, GameMasterLoadDuplicateGame, parser->line_number);
        return 0;
    }

    game = &catalog->games[catalog->game_count++];
    memset(game, 0, sizeof(*game));
    strncpy(game->title, title, sizeof(game->title) - 1u);
    game->title[sizeof(game->title) - 1u] = '\0';
    game->cheat_first = catalog->cheat_count;
    parser->current_game = game;
    return 1;
}

static int gm_set_rom_id(TGameMasterParser *parser, char *cursor)
{
    TGameMasterCatalog *catalog = parser->catalog;
    char rom_id[GAMEMASTER_ROM_ID_MAX + 1u];
    const int parse_status = gm_parse_word_or_quoted(&cursor, rom_id, sizeof(rom_id));
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadTitleTooLong, parser->line_number);
        return 0;
    }
    if (parse_status == 0 || !gm_line_done(cursor))
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_game == 0)
    {
        gm_fail(catalog, GameMasterLoadMissingGame, parser->line_number);
        return 0;
    }
    if (parser->current_cheat != 0)
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_game->rom_id[0] != '\0' || gm_game_rom_exists(catalog, rom_id))
    {
        gm_fail(catalog, GameMasterLoadDuplicateRomId, parser->line_number);
        return 0;
    }

    strncpy(parser->current_game->rom_id, rom_id, sizeof(parser->current_game->rom_id) - 1u);
    parser->current_game->rom_id[sizeof(parser->current_game->rom_id) - 1u] = '\0';
    return 1;
}

static int gm_begin_cheat(TGameMasterParser *parser, char *cursor)
{
    TGameMasterCatalog *catalog = parser->catalog;
    TGameMasterCheat *cheat;
    char title[GAMEMASTER_TITLE_MAX + 1u];
    const int parse_status = gm_parse_quoted(&cursor, title, sizeof(title));
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadTitleTooLong, parser->line_number);
        return 0;
    }
    if (parse_status == 0 || !gm_line_done(cursor))
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_game == 0)
    {
        gm_fail(catalog, GameMasterLoadMissingGame, parser->line_number);
        return 0;
    }
    if (parser->current_cheat != 0)
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (catalog->cheat_count >= GAMEMASTER_MAX_CHEATS)
    {
        gm_fail(catalog, GameMasterLoadTooManyCheats, parser->line_number);
        return 0;
    }
    if (gm_current_game_cheat_exists(catalog, parser->current_game, title))
    {
        gm_fail(catalog, GameMasterLoadDuplicateCheat, parser->line_number);
        return 0;
    }

    cheat = &catalog->cheats[catalog->cheat_count++];
    memset(cheat, 0, sizeof(*cheat));
    strncpy(cheat->title, title, sizeof(cheat->title) - 1u);
    cheat->title[sizeof(cheat->title) - 1u] = '\0';
    cheat->poke_first = catalog->poke_count;
    parser->current_game->cheat_count++;
    parser->current_cheat = cheat;
    return 1;
}

static int gm_add_poke(TGameMasterParser *parser, char *cursor)
{
    TGameMasterCatalog *catalog = parser->catalog;
    TGameMasterPoke *poke;
    uint16_t address = 0u;
    uint16_t value = 0u;
    uint8_t size_bits = 0u;
    int parse_status;

    if (parser->current_game == 0)
    {
        gm_fail(catalog, GameMasterLoadMissingGame, parser->line_number);
        return 0;
    }
    if (parser->current_cheat == 0)
    {
        gm_fail(catalog, GameMasterLoadMissingCheat, parser->line_number);
        return 0;
    }
    if (catalog->poke_count >= GAMEMASTER_MAX_POKES)
    {
        gm_fail(catalog, GameMasterLoadTooManyPokes, parser->line_number);
        return 0;
    }

    parse_status = gm_parse_hex16(&cursor, &address);
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadInvalidHex, parser->line_number);
        return 0;
    }
    if (parse_status == 0)
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }

    parse_status = gm_parse_hex16(&cursor, &value);
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadInvalidHex, parser->line_number);
        return 0;
    }
    if (parse_status == 0)
    {
        gm_fail(catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }

    parse_status = gm_parse_size_bits(&cursor, &size_bits);
    if (parse_status < 0)
    {
        gm_fail(catalog, GameMasterLoadTitleTooLong, parser->line_number);
        return 0;
    }
    if (parse_status == 0 || !gm_line_done(cursor))
    {
        gm_fail(catalog, GameMasterLoadInvalidSize, parser->line_number);
        return 0;
    }
    if ((size_bits == 8u && value > 0x00FFu) || (size_bits == 16u && value > 0xFFFFu))
    {
        gm_fail(catalog, GameMasterLoadValueOutOfRange, parser->line_number);
        return 0;
    }

    poke = &catalog->pokes[catalog->poke_count++];
    poke->address = address;
    poke->value = value;
    poke->size_bits = size_bits;
    parser->current_cheat->poke_count++;
    return 1;
}

static int gm_end_cheat(TGameMasterParser *parser, char *cursor)
{
    if (!gm_line_done(cursor))
    {
        gm_fail(parser->catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_cheat == 0)
    {
        gm_fail(parser->catalog, GameMasterLoadUnexpectedEnd, parser->line_number);
        return 0;
    }
    if (parser->current_cheat->poke_count == 0u)
    {
        gm_fail(parser->catalog, GameMasterLoadMissingCheat, parser->line_number);
        return 0;
    }
    parser->current_cheat = 0;
    return 1;
}

static int gm_end_game(TGameMasterParser *parser, char *cursor)
{
    if (!gm_line_done(cursor))
    {
        gm_fail(parser->catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (parser->current_game == 0 || parser->current_cheat != 0)
    {
        gm_fail(parser->catalog, GameMasterLoadUnexpectedEnd, parser->line_number);
        return 0;
    }
    if (parser->current_game->cheat_count == 0u)
    {
        gm_fail(parser->catalog, GameMasterLoadMissingCheat, parser->line_number);
        return 0;
    }
    parser->current_game = 0;
    return 1;
}

static int gm_parse_line(TGameMasterParser *parser, char *line)
{
    char keyword[16];
    char *cursor = gm_skip_space(line);

    if (cursor == 0 || *cursor == '\0' || *cursor == '#' || *cursor == ';')
    {
        return 1;
    }
    if (!gm_parse_keyword(&cursor, keyword, sizeof(keyword)))
    {
        gm_fail(parser->catalog, GameMasterLoadSyntaxError, parser->line_number);
        return 0;
    }
    if (gm_streq_nocase(keyword, "game"))
    {
        return gm_begin_game(parser, cursor);
    }
    if (gm_streq_nocase(keyword, "rom"))
    {
        return gm_set_rom_id(parser, cursor);
    }
    if (gm_streq_nocase(keyword, "cheat"))
    {
        return gm_begin_cheat(parser, cursor);
    }
    if (gm_streq_nocase(keyword, "poke"))
    {
        return gm_add_poke(parser, cursor);
    }
    if (gm_streq_nocase(keyword, "endcheat"))
    {
        return gm_end_cheat(parser, cursor);
    }
    if (gm_streq_nocase(keyword, "endgame"))
    {
        return gm_end_game(parser, cursor);
    }

    gm_fail(parser->catalog, GameMasterLoadUnexpectedKeyword, parser->line_number);
    return 0;
}

void game_master_catalog_reset(TGameMasterCatalog *catalog)
{
    if (catalog == 0)
    {
        return;
    }
    memset(catalog, 0, sizeof(*catalog));
    catalog->last_status = (uint8_t) GameMasterLoadOk;
}

int game_master_catalog_load(TGameMasterCatalog *catalog, const char *path)
{
    char line[256];
    RFILE *file;
    TGameMasterParser parser;

    if (catalog == 0 || path == 0 || path[0] == '\0')
    {
        return (int) GameMasterLoadSyntaxError;
    }

    game_master_catalog_reset(catalog);

    file = rfopen(path, "rb");
    if (file == 0)
    {
        gm_fail(catalog, GameMasterLoadFileOpenFailed, 0u);
        return (int) catalog->last_status;
    }

    parser.catalog = catalog;
    parser.current_game = 0;
    parser.current_cheat = 0;
    parser.line_number = 0u;

    while (!rfeof(file))
    {
        char *result = rfgets(line, sizeof(line), file);
        if (result == 0)
        {
            break;
        }

        ++parser.line_number;
        if (strchr(line, '\n') == 0 && !rfeof(file))
        {
            rfclose(file);
            gm_fail(catalog, GameMasterLoadLineTooLong, parser.line_number);
            return (int) catalog->last_status;
        }

        gm_strip_eol(line);
        if (!gm_parse_line(&parser, line))
        {
            rfclose(file);
            return (int) catalog->last_status;
        }
    }

    rfclose(file);

    if (parser.current_cheat != 0 || parser.current_game != 0)
    {
        gm_fail(catalog, GameMasterLoadUnexpectedEnd, parser.line_number == 0u ? 1u : parser.line_number);
        return (int) catalog->last_status;
    }
    if (catalog->game_count == 0u || catalog->cheat_count == 0u || catalog->poke_count == 0u)
    {
        gm_fail(catalog, GameMasterLoadCatalogEmpty, parser.line_number);
        return (int) catalog->last_status;
    }

    catalog->last_status = (uint8_t) GameMasterLoadOk;
    catalog->error_line = 0u;
    return (int) GameMasterLoadOk;
}

int game_master_catalog_load_default(TGameMasterCatalog *catalog)
{
    return game_master_catalog_load(catalog, GAMEMASTER_CATALOG_PATH);
}

const char *game_master_catalog_status_name(unsigned status)
{
    switch ((TGameMasterLoadStatus) status)
    {
        case GameMasterLoadOk: return "ok";
        case GameMasterLoadFileOpenFailed: return "file-open-failed";
        case GameMasterLoadCatalogEmpty: return "catalog-empty";
        case GameMasterLoadLineTooLong: return "line-too-long";
        case GameMasterLoadSyntaxError: return "syntax-error";
        case GameMasterLoadUnexpectedKeyword: return "unexpected-keyword";
        case GameMasterLoadUnexpectedEnd: return "unexpected-end";
        case GameMasterLoadMissingGame: return "missing-game";
        case GameMasterLoadMissingCheat: return "missing-cheat";
        case GameMasterLoadDuplicateGame: return "duplicate-game";
        case GameMasterLoadDuplicateCheat: return "duplicate-cheat";
        case GameMasterLoadDuplicateRomId: return "duplicate-rom-id";
        case GameMasterLoadTooManyGames: return "too-many-games";
        case GameMasterLoadTooManyCheats: return "too-many-cheats";
        case GameMasterLoadTooManyPokes: return "too-many-pokes";
        case GameMasterLoadInvalidHex: return "invalid-hex";
        case GameMasterLoadInvalidSize: return "invalid-size";
        case GameMasterLoadValueOutOfRange: return "value-out-of-range";
        case GameMasterLoadTitleTooLong: return "title-too-long";
        default: return "unknown";
    }
}
