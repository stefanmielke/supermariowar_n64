V=1
SOURCE_DIR=src/smw
SOURCE_COMMON_DIR=src/common
BUILD_DIR=build_n64
include $(N64_INST)/include/n64.mk

N64_CFLAGS += -Idependencies/sdl_n64/lib -Isrc/common -DNETWORK_DISABLED -DUSE_SDL2
N64_CFLAGS += -Wno-error=array-bounds

N64_CXXFLAGS += -Idependencies/sdl_n64/lib/SDL2 -Idependencies/yaml-cpp-noboost/include
N64_CXXFLAGS += -Isrc/common -Isrc/common_netplay -Isrc/smw -DNETWORK_DISABLED -DUSE_SDL2
N64_CXXFLAGS += -Wno-error=unknown-pragmas -Wno-error=sign-compare -Wno-error=unused-but-set-variable -Wno-error=unused-variable
N64_CXXFLAGS += -Wno-error=address -Wno-error=sequence-point -Wno-error=misleading-indentation -Wno-error=narrowing -Wno-error=reorder
N64_CXXFLAGS += -Wno-error=format= -Wno-error=class-memaccess -Wno-error=format-overflow= -Wno-error=stringop-truncation -fpermissive

N64_ROM_TITLE = "SM War 64"
N64_ROM_SAVETYPE = none
N64_ROM_REGIONFREE = true
N64_ROM_RTC = false

C_FILES := $(SOURCE_DIR)/ai.cpp $(SOURCE_DIR)/gamemodes.cpp $(SOURCE_DIR)/GSMenu.cpp \
           $(SOURCE_DIR)/player.cpp $(SOURCE_DIR)/world.cpp $(SOURCE_DIR)/uicustomcontrol.cpp \
           $(SOURCE_DIR)/objectgame.cpp $(SOURCE_DIR)/objecthazard.cpp \
           $(SOURCE_DIR)/net.cpp $(SOURCE_DIR)/FPSLimiter.cpp $(SOURCE_DIR)/GSSplashScreen.cpp \
           $(SOURCE_DIR)/GSGameplay.cpp $(SOURCE_DIR)/ObjectContainer.cpp $(SOURCE_DIR)/main.cpp \
           $(SOURCE_DIR)/network/NetConfigManager.cpp

C_FILES += $(SOURCE_DIR)/objects/blocks/IO_Block.cpp \
			$(SOURCE_DIR)/objects/blocks/BounceBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/BreakableBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/DonutBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/FlipBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/NoteBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/OnOffSwitchBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/PowerupBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/ViewBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/SwitchBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/ThrowBlock.cpp \
			$(SOURCE_DIR)/objects/blocks/WeaponBreakableBlock.cpp \
			$(SOURCE_DIR)/objects/moving/MovingObject.cpp \
			$(SOURCE_DIR)/objects/overmap/OverMapObject.cpp

C_FILES += $(SOURCE_DIR)/player_components/PlayerAwardEffects.cpp \
			$(SOURCE_DIR)/player_components/PlayerBurnupTimer.cpp \
			$(SOURCE_DIR)/player_components/PlayerCollisions.cpp \
			$(SOURCE_DIR)/player_components/PlayerCape.cpp \
			$(SOURCE_DIR)/player_components/PlayerCardCollection.cpp \
			$(SOURCE_DIR)/player_components/PlayerInvincibility.cpp \
			$(SOURCE_DIR)/player_components/PlayerJail.cpp \
			$(SOURCE_DIR)/player_components/PlayerKuriboShoe.cpp \
			$(SOURCE_DIR)/player_components/PlayerOutOfArenaTimer.cpp \
			$(SOURCE_DIR)/player_components/PlayerSecretCode.cpp \
			$(SOURCE_DIR)/player_components/PlayerShield.cpp \
			$(SOURCE_DIR)/player_components/PlayerSpinStatus.cpp \
			$(SOURCE_DIR)/player_components/PlayerSuicideTimer.cpp \
			$(SOURCE_DIR)/player_components/PlayerSuperStomp.cpp \
			$(SOURCE_DIR)/player_components/PlayerTail.cpp \
			$(SOURCE_DIR)/player_components/PlayerTanookiSuit.cpp \
			$(SOURCE_DIR)/player_components/PlayerWarpStatus.cpp \
			$(SOURCE_DIR)/player_components/PlayerWings.cpp

C_FILES += $(SOURCE_DIR)/ui/NetworkListScroll.cpp \
			$(SOURCE_DIR)/ui/MI_StringScroll.cpp \
			$(SOURCE_DIR)/ui/MI_PowerupSlider.cpp \
			$(SOURCE_DIR)/ui/MI_FrenzyModeOptions.cpp \
			$(SOURCE_DIR)/ui/MI_InputControlContainer.cpp \
			$(SOURCE_DIR)/ui/MI_TeamSelect.cpp \
			$(SOURCE_DIR)/ui/MI_NetRoomTeamSelect.cpp

C_FILES += $(SOURCE_DIR)/menu/MainMenu.cpp \
			$(SOURCE_DIR)/menu/BonusWheelMenu.cpp \
			$(SOURCE_DIR)/menu/GameSettingsMenu.cpp \
			$(SOURCE_DIR)/menu/ModeOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/MapFilterEditMenu.cpp \
			$(SOURCE_DIR)/menu/MatchSelectionMenu.cpp \
			$(SOURCE_DIR)/menu/OptionsMenu.cpp \
			$(SOURCE_DIR)/menu/PlayerControlsMenu.cpp \
			$(SOURCE_DIR)/menu/PlayerControlsSelectMenu.cpp \
			$(SOURCE_DIR)/menu/TeamSelectMenu.cpp \
			$(SOURCE_DIR)/menu/TournamentScoreboardMenu.cpp \
			$(SOURCE_DIR)/menu/TourStopMenu.cpp \
			$(SOURCE_DIR)/menu/WorldMenu.cpp

C_FILES += $(SOURCE_DIR)/menu/options/EyeCandyOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/options/GameplayOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/options/GraphicsOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/options/PowerupDropRatesMenu.cpp \
			$(SOURCE_DIR)/menu/options/PowerupSettingsMenu.cpp \
			$(SOURCE_DIR)/menu/options/ProjectileLimitsMenu.cpp \
			$(SOURCE_DIR)/menu/options/ProjectileOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/options/SoundOptionsMenu.cpp \
			$(SOURCE_DIR)/menu/options/TeamOptionsMenu.cpp

C_FILES += $(SOURCE_DIR)/menu/network/NetEditServersMenu.cpp \
			$(SOURCE_DIR)/menu/network/NetLobbyMenu.cpp \
			$(SOURCE_DIR)/menu/network/NetNewRoomMenu.cpp \
			$(SOURCE_DIR)/menu/network/NetNewRoomSettingsMenu.cpp \
			$(SOURCE_DIR)/menu/network/NetRoomMenu.cpp \
			$(SOURCE_DIR)/menu/network/NetServersMenu.cpp

C_FILES += $(SOURCE_COMMON_DIR)/CmdArgs.cpp \
			$(SOURCE_COMMON_DIR)/dirlist.cpp \
			$(SOURCE_COMMON_DIR)/eyecandy.cpp \
			$(SOURCE_COMMON_DIR)/FileIO.cpp \
			$(SOURCE_COMMON_DIR)/FileList.cpp \
			$(SOURCE_COMMON_DIR)/Game.cpp \
			$(SOURCE_COMMON_DIR)/GameModeSettings.cpp \
			$(SOURCE_COMMON_DIR)/GameValues.cpp \
			$(SOURCE_COMMON_DIR)/gfx.cpp \
			$(SOURCE_COMMON_DIR)/gfx/gfxFont.cpp \
			$(SOURCE_COMMON_DIR)/gfx/gfxPalette.cpp \
			$(SOURCE_COMMON_DIR)/gfx/gfxSDL.cpp \
			$(SOURCE_COMMON_DIR)/gfx/gfxSprite.cpp \
			$(SOURCE_COMMON_DIR)/gfx/SFont.cpp \
			$(SOURCE_COMMON_DIR)/global.cpp \
			$(SOURCE_COMMON_DIR)/input.cpp \
			$(SOURCE_COMMON_DIR)/linfunc.cpp \
			$(SOURCE_COMMON_DIR)/map.cpp \
			$(SOURCE_COMMON_DIR)/map/MapReader.cpp \
			$(SOURCE_COMMON_DIR)/map/MapReader15xx.cpp \
			$(SOURCE_COMMON_DIR)/map/MapReader16xx.cpp \
			$(SOURCE_COMMON_DIR)/map/MapReader17xx.cpp \
			$(SOURCE_COMMON_DIR)/map/MapReader18xx.cpp \
			$(SOURCE_COMMON_DIR)/MapList.cpp \
			$(SOURCE_COMMON_DIR)/ObjectBase.cpp \
			$(SOURCE_COMMON_DIR)/path.cpp \
			$(SOURCE_COMMON_DIR)/RandomNumberGenerator.cpp \
			$(SOURCE_COMMON_DIR)/ResourceManager.cpp \
			$(SOURCE_COMMON_DIR)/sfx.cpp \
			$(SOURCE_COMMON_DIR)/TilesetManager.cpp \
			$(SOURCE_COMMON_DIR)/ui/MI_MapPreview.cpp \
			$(SOURCE_COMMON_DIR)/ui/MI_MapField.cpp \
			$(SOURCE_COMMON_DIR)/ui/MI_SelectField.cpp \
			$(SOURCE_COMMON_DIR)/ui/MI_ImageSelectField.cpp \
			$(SOURCE_COMMON_DIR)/ui/MI_SliderField.cpp

C_FILES += $(SOURCE_COMMON_DIR)/movingplatform.cpp $(SOURCE_COMMON_DIR)/uicontrol.cpp $(SOURCE_COMMON_DIR)/uimenu.cpp

C_SDL_FILES := $(wildcard dependencies/sdl_n64/lib/SDL2/*.c)

SRC_C = $(C_SDL_FILES)
SRC_CPP = $(C_FILES)
OBJS_CPP = $(SRC_C:%.c=%.o) $(SRC_CPP:%.cpp=%.o)
DEPS_CPP = $(SRC_C:%.c=%.d) $(SRC_CPP:%.cpp=%.d)

all: smw.z64
smw.z64: $(BUILD_DIR)/smw.dfs

$(BUILD_DIR)/smw.dfs: $(wildcard resources/n64/*)
	$(N64_MKDFS) $@ resources/n64

$(BUILD_DIR)/smw.elf: $(OBJS_CPP)

clean:
	find . -name '*.v64' -delete
	find . -name '*.z64' -delete
	find . -name '*.elf' -delete
	find . -name '*.o' -delete
	find . -name '*.d' -delete
	find . -name '*.bin' -delete
	find . -name '*.plan_bak*' -delete
	find . -name '*.dfs' -delete
	find . -name '*.raw' -delete
	find . -name '*.z64' -delete
	find . -name '*.n64' -delete

-include $(DEPS_CPP)

.PHONY: all clean