#ifndef MSXBARE_GAMEMASTER_CATALOG_H
#define MSXBARE_GAMEMASTER_CATALOG_H

#include <stdint.h>

#define GAMEMASTER_CATALOG_PATH "SD:/gamemaster.cht"
#define GAMEMASTER_CHEATS_ROOT "SD:/cheats"

#define GAMEMASTER_MAX_GAMES 4u
#define GAMEMASTER_MAX_CHEATS 160u
#define GAMEMASTER_MAX_POKES 256u
#define GAMEMASTER_TITLE_MAX 96u
#define GAMEMASTER_ROM_ID_MAX 40u

typedef enum
{
    GameMasterLoadOk = 0,
    GameMasterLoadFileOpenFailed = 1,
    GameMasterLoadCatalogEmpty = 2,
    GameMasterLoadLineTooLong = 3,
    GameMasterLoadSyntaxError = 4,
    GameMasterLoadUnexpectedKeyword = 5,
    GameMasterLoadUnexpectedEnd = 6,
    GameMasterLoadMissingGame = 7,
    GameMasterLoadMissingCheat = 8,
    GameMasterLoadDuplicateGame = 9,
    GameMasterLoadDuplicateCheat = 10,
    GameMasterLoadDuplicateRomId = 11,
    GameMasterLoadTooManyGames = 12,
    GameMasterLoadTooManyCheats = 13,
    GameMasterLoadTooManyPokes = 14,
    GameMasterLoadInvalidHex = 15,
    GameMasterLoadInvalidSize = 16,
    GameMasterLoadValueOutOfRange = 17,
    GameMasterLoadTitleTooLong = 18
} TGameMasterLoadStatus;

typedef struct
{
    uint16_t address;
    uint16_t value;
    uint8_t size_bits;
} TGameMasterPoke;

typedef struct
{
    char title[GAMEMASTER_TITLE_MAX + 1u];
    uint16_t poke_first;
    uint16_t poke_count;
} TGameMasterCheat;

typedef struct
{
    char title[GAMEMASTER_TITLE_MAX + 1u];
    char rom_id[GAMEMASTER_ROM_ID_MAX + 1u];
    uint16_t cheat_first;
    uint16_t cheat_count;
} TGameMasterGame;

typedef struct
{
    TGameMasterGame games[GAMEMASTER_MAX_GAMES];
    TGameMasterCheat cheats[GAMEMASTER_MAX_CHEATS];
    TGameMasterPoke pokes[GAMEMASTER_MAX_POKES];
    uint16_t game_count;
    uint16_t cheat_count;
    uint16_t poke_count;
    uint16_t error_line;
    uint8_t last_status;
} TGameMasterCatalog;

#ifdef __cplusplus
extern "C" {
#endif

void game_master_catalog_reset(TGameMasterCatalog *catalog);
int game_master_catalog_load(TGameMasterCatalog *catalog, const char *path);
int game_master_catalog_load_default(TGameMasterCatalog *catalog);
int game_master_catalog_load_mcf(TGameMasterCatalog *catalog,
                                 const char *path,
                                 const char *title,
                                 const char *rom_id);
const char *game_master_catalog_status_name(unsigned status);

#ifdef __cplusplus
}
#endif

#endif
