# Перевод уже созданных в мире контейнеров
execute as @e[tag=largeChest] run data merge entity @s {CustomName:"{\"text\":\"Сундукˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}"}
execute as @e[tag=smallChest] run data merge entity @s {CustomName:"{\"text\":\"Шкатулкаˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}"}

# Перевод инвентаря
data merge entity 0-0-5-0-1 {CustomName: "{\"color\":\"gray\",\"text\":\"Инвентарьˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\"}"}
data merge entity 0-0-5-0-2 {CustomName: "{\"color\":\"gray\",\"text\":\"Инвентарьˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\"}"}
data merge entity 0-0-5-0-3 {CustomName: "{\"color\":\"gray\",\"text\":\"Инвентарьˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\"}"}
data merge entity 0-0-5-0-4 {CustomName: "{\"color\":\"gray\",\"text\":\"Инвентарьˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\"}"}

###################
# These are functions that should be executed globally for all players, no more than once per tick.

# Spectating players
execute as @a[tag=spectate] run function hp:misc/spectate

# Reset spread over a few ticks
execute if score reset resetTimer matches 1.. run function hp:setup/in_reset_game

# Kill items
kill @e[type=item]

# Manage game leader
function hp:main/assign_game_leader

# Random number
function hp:misc/random_number

# Make sure that entities that lose their team and scores still glow orange and restore their important scoreboard scores   -   Mojang please! The amount of pain this has caused :,-(
# All resettable entities are also restorable so I moved reset for next session test in this function for performance
execute as @e[type=!item_frame,tag=restorable] run function hp:misc/reset_wrapper

# Reset when session id is incremented
# execute as @e[type=armor_stand,tag=resettable] unless score @s sessionID = global sessionID run function hp:misc/reset_for_next_session

# Chests
execute as @e[type=armor_stand,tag=openedChest] run function hp:inventory/chest_animation

# Creatures
function hp:creatures/main_creatures
execute as @e[tag=invisible,type=!item_frame] run effect give @s minecraft:invisibility 999999 1 true

# NPCs


scoreboard players remove pathCorrection tmp 1
execute if score pathCorrection tmp matches 0 run scoreboard players set pathCorrection tmp 120
execute as @e[type=villager,tag=fpEngine] at @s if entity @p[distance=..75] run function hp:npc/follow_path

execute as @e[tag=npc] at @s if entity @p[distance=..75] run function hp:npc/npc_base

# Lerp
execute as @e[tag=lerp1,tag=!stop] at @s run function hp:misc/lerp1
execute as @e[tag=lerp2,tag=!stop] at @s run function hp:misc/lerp2
execute as @e[tag=lerp3] at @s run function hp:misc/lerp3

# Tp Check
# Used by walking NPC's (atleast that's the plan) and brooms to compare score ID's every second or so to see which entities belong together. 
# It is significantly more performance intensive than simply teleporting to the nearest entity which is why it's not done every tick.
scoreboard players remove tpCheck global 1
execute if score tpCheck global matches ..0 run scoreboard players set tpCheck global 30

# Spells
execute as @e[tag=spellEntity,type=!item_frame] run function hp:spells/spell/spell_entities

# Decay particle timer and show particles for wingardium switches and vera verto too
execute if score wingardiumSwitchParticles global matches 1.. run scoreboard players remove wingardiumSwitchParticles global 1
execute unless score wingardiumSwitchParticles global matches 1.. as @e[type=armor_stand,tag=wingardiumSwitch] at @s run particle portal ~ ~-.25 ~ .15 .15 .15 .35 1
execute unless score wingardiumSwitchParticles global matches 1.. as @e[type=armor_stand,tag=veraVerto] at @s run particle minecraft:nautilus ~ ~1 ~ 0.1 0.1 0.1 0.5 1 force
execute unless score wingardiumSwitchParticles global matches 1.. run scoreboard players set wingardiumSwitchParticles global 7

# Make this happen only like once every second or so
scoreboard players add resetItemFrame global 1
execute if score resetItemFrame global matches 20 if score global itemFrameLock matches 0 as @e[type=minecraft:item_frame] run function hp:misc/store_item_frame_rotation
execute if score resetItemFrame global matches 20 if score global itemFrameLock matches 1 as @e[type=minecraft:item_frame] run function hp:misc/lock_item_frame_rotation
execute if score resetItemFrame global matches 20 run scoreboard players set resetItemFrame global 0

# Kill Iron Golems when they spawn because many places in the map meet the spawn requirements of iron golems
execute as @e[type=minecraft:iron_golem,tag=!keep] run tp @s ~ -10000 ~

# falling leaves
scoreboard players remove global leaves 1
execute if score global leaves matches ..-1 run scoreboard players set global leaves 4

# Global ambient sound
function hp:ambience/global_ambience

# Quest Specific commands are executed from here if a player is within a determined area
# Lumos
execute if entity @p[x=5023,dx=85,y=90,dy=32,z=-5,dz=97] run function hp:quests/quests/lumos/mechanics
# Stupefy
execute if entity @p[x=5468,dx=115,y=0,dy=123,z=-105,dz=162] run function hp:quests/quests/stupefy/mechanics
# Brackium Emendo
execute if entity @p[x=5970,dx=62,y=6,dy=96,z=-32,dz=64] run function hp:quests/quests/brackium_emendo/mechanics
# Alohomora
execute if entity @p[x=6432,dx=191,y=0,dy=87,z=-48,dz=95] run function hp:quests/quests/alohomora/mechanics
# Wingardium Leviosa
execute if entity @p[x=6912,dx=255,y=0,dy=151,z=-80,dz=119] run function hp:quests/quests/wingardium_leviosa/mechanics
# Bombarda Maxima
execute if entity @p[x=7393,dx=190,y=16,dy=206,z=-116,dz=594] run function hp:quests/quests/bombarda_maxima/mechanics
# Vera Verto
execute if entity @p[x=8432,dx=263,y=40,dy=126,z=-81,dz=160] run function hp:quests/quests/vera_verto/mechanics
# Expecto Patronum
execute if entity @p[x=7970,dx=173,y=0,dy=175,z=-50,dz=277] run function hp:quests/quests/expecto_patronum/mechanics
# Apparition
execute if entity @p[x=8811,dx=345,y=0,dy=256,z=-88,dz=342] run function hp:quests/quests/apparition/mechanics
# Herbology
execute if score rotateHerbologyStars global matches 1 run function hp:quests/quests/herbology/mechanics
# Azkaban
execute if score azkabanQuestIsGoing global matches 1 if entity @p[x=4789,dx=462,y=0,dy=255,z=9806,dz=456] run function hp:quests/quests/azkaban/mechanics
# Gringotts Vaults
execute if entity @p[x=2953,y=0,z=1098,dx=200,dy=129,dz=203] run function hp:quests/quests/gringotts_vaults/mechanics


#########################
# Area Secific commands #
#########################

execute if entity @p[x=708,y=35,z=13,dx=143,dy=40,dz=41] run function hp:area_specific/hogwarts/greenhouses/door
execute if entity @p[x=768,y=94,z=64,dx=20,dy=10,dz=55] run function hp:area_specific/hogwarts/room_of_requirement_entrance
execute if entity @p[x=786,y=22,z=59,dx=54,dy=23,dz=112] run function hp:area_specific/hogwarts/hufflepuff_entrance
execute if entity @p[x=768,y=75,z=64,dx=28,dy=25,dz=37] run function hp:area_specific/hogwarts/restricted_section_entrance

####################
# Hogwarts Puzzles #
####################
execute if entity @p[x=771,y=70,z=124,dx=25,dy=14,dz=20] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_1
execute if entity @p[x=772,y=79,z=109,dx=23,dy=6,dz=10] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_2
execute if entity @p[x=645,y=54,z=260,dx=45,dy=6,dz=16] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_3
execute if entity @p[x=636,y=28,z=244,dx=32,dy=9,dz=40] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_4
execute if entity @p[x=674,y=50,z=221,dx=16,dy=13,dz=17] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_stair_5
execute if entity @p[x=699,y=74,z=239,dx=14,dy=17,dz=11] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_6
execute if entity @p[x=699,y=74,z=239,dx=14,dy=17,dz=11] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_stair1_6
execute if entity @p[x=699,y=74,z=239,dx=14,dy=17,dz=11] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_stair2_6
execute if entity @p[x=637,y=56,z=247,dx=5,dy=9,dz=40] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_7
execute if entity @p[x=717,y=99,z=296,dx=739,dy=128,dz=319] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_8
execute if entity @p[x=763,y=49,z=166,dx=7,dy=7,dz=17] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_9
execute if entity @p[x=773,y=62,z=123,dx=20,dy=7,dz=21] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_10
execute if entity @p[x=608,y=132,z=246,dx=13,dy=11,dz=46] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_11
execute if entity @p[x=590,y=85,z=281,dx=23,dy=17,dz=10] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_12
execute if entity @p[x=661,y=42,z=135,dx=16,dy=7,dz=23] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_pillar_13
execute if entity @p[x=660,y=94,z=59,dx=17,dy=33,dz=17] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_14

execute if entity @p[x=626,y=0,z=-86,dx=138,dy=35,dz=116] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_15
execute if score puzzle15MazeIsEmpty global matches 0 unless entity @p[x=626,y=0,z=-86,dx=138,dy=35,dz=116] run scoreboard players add puzzle15ID global 1
execute if score puzzle15MazeIsEmpty global matches 0 unless entity @p[x=626,y=0,z=-86,dx=138,dy=35,dz=116] run scoreboard players set puzzle15MazeIsEmpty global 1

execute if entity @p[x=748,y=125,z=58,dx=22,dy=75,dz=22] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_16
execute if score puzzle16TowerIsEmpty global matches 0 unless entity @p[x=748,y=125,z=58,dx=22,dy=75,dz=22,tag=!inTravelPoint,tag=play] run tag ca02eb49-ddc4-432d-8662-59f7f6b50521 add disable
execute if score puzzle16TowerIsEmpty global matches 0 unless entity @p[x=748,y=125,z=58,dx=22,dy=75,dz=22,tag=!inTravelPoint,tag=play] as ca02eb49-ddc4-432d-8662-59f7f6b50521 run function hp:creatures/remove_nest_creatures
execute if score puzzle16TowerIsEmpty global matches 0 unless entity @p[x=748,y=125,z=58,dx=22,dy=75,dz=22,tag=!inTravelPoint,tag=play] run scoreboard players set puzzle16TowerIsEmpty global 1


execute if entity @p[x=676,y=54,z=117,dx=26,dy=8,dz=20] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_17
execute if entity @p[x=678,y=54,z=98,dx=15,dy=8,dz=19] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_17
execute if score puzzle17LibraryIsEmpty global matches 0 unless entity @p[x=676,y=54,z=117,dx=26,dy=8,dz=20,tag=!inTravelPoint,tag=play] unless entity @p[x=678,y=54,z=98,dx=15,dy=8,dz=19] run scoreboard players add puzzle17ID global 1
execute if score puzzle17LibraryIsEmpty global matches 0 unless entity @p[x=676,y=54,z=117,dx=26,dy=8,dz=20,tag=!inTravelPoint,tag=play] unless entity @p[x=678,y=54,z=98,dx=15,dy=8,dz=19] run scoreboard players set puzzle17LibraryIsEmpty global 1

execute if entity @p[x=688,y=38,z=95,dx=8,dy=14,dz=14] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_18
execute if score puzzle18SmallWineCellarIsEmpty global matches 0 unless entity @p[x=663,y=38,z=86,dx=33,dy=13,dz=31,tag=!inTravelPoint,tag=play] run scoreboard players add puzzle18ID global 1
execute if score puzzle18SmallWineCellarIsEmpty global matches 0 unless entity @p[x=663,y=38,z=86,dx=33,dy=13,dz=31,tag=!inTravelPoint,tag=play] run scoreboard players set puzzle18SmallWineCellarIsEmpty global 1


execute if entity @p[x=701,y=14,z=243,dx=16,dy=7,dz=16] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_19
execute if entity @p[x=786,y=4,z=289,dx=19,dy=12,dz=20] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_19
execute if score puzzle19WaterCaveIsEmpty global matches 0 unless entity @p[x=698,y=0,z=242,dx=106,dy=26,dz=72,tag=!inTravelPoint,tag=play] run scoreboard players add puzzle19ID global 1
execute if score puzzle19WaterCaveIsEmpty global matches 0 unless entity @p[x=698,y=0,z=242,dx=106,dy=26,dz=72,tag=!inTravelPoint,tag=play] run scoreboard players set puzzle19WaterCaveIsEmpty global 1

execute if entity @p[x=-117,y=0,z=203,dx=47,dy=46,dz=57] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_20

execute if entity @p[x=720,y=169,z=131,dx=13,dy=9,dz=13] run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_21

# Demiguise for demiguise dodge
execute if entity @p[x=241,y=0,z=287,dx=171,dy=47,dz=157] as 3590c6d9-cad7-4c06-bbab-2ae7ab139288 run function hp:quests/quests/demiguise_dodge/demiguise

# Gryffindor Tower 708 55 287 742 246 329
execute if entity @p[x=708,y=55,z=287,dx=34,dy=191,dz=42] run function hp:area_specific/gryffindor_tower/gryffindor_tower

# Diagon Alley
execute if entity @p[x=2698,dx=236,y=0,dy=125,z=770,dz=358] run function hp:area_specific/diagon_alley/diagon_alley
execute if entity @p[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] run function hp:area_specific/diagon_alley/gringotts_cave

# Ministry
execute if entity @p[x=9786,dx=214,y=0,dy=256,z=10000,dz=338] run function hp:area_specific/ministry/ministry

# Kind of awkward way to reset the flying classes that take place at hogwarts after they're done when the player is at a certain distance
execute if score resetFlyingClass global matches 1 positioned 669.00 53.00 20.59 unless entity @p[distance=..80] run function hp:quests/quests/flying_lesson/clear_flying_lesson
execute if score resetHerbologyClass global matches 1 positioned 730.56 54.00 60.52 unless entity @p[distance=..80] run function hp:quests/quests/herbology/clear_herbology_lesson
execute if score resetExpectoPatronumClass global matches 1 positioned 644.63 96.00 233.31 unless entity @p[distance=..80] run function hp:quests/quests/expecto_patronum/clear_expecto_patronum_lesson

# Forbidden Forest
execute if entity @p[x=2,y=0,z=-60,dx=88,dy=128,dz=87] run function hp:area_specific/hogwarts/forbidden_forest/underground_library_entrance

# Underground Library
execute if entity @p[x=6917,y=24,z=4888,dx=151,dy=91,dz=159] run function hp:quests/quests/underground_library/mechanics

# Chamber of Secrets
execute if entity @p[x=6388,y=17,z=838,dx=294,dy=128,dz=160] run function hp:quests/quests/chamber_of_secrets/mechanics

# Chamber of secrets girls' lavatory
execute if entity @p[x=779,y=45,z=115,dx=23,dy=28,dz=47] run function hp:area_specific/hogwarts/chamber_of_secrets_tunnel_entrance

# Challenge Chambers
execute if entity @p[x=1799,y=0,z=605,dx=231,dy=128,dz=224] run function hp:quests/quests/challenge_chambers/mechanics
execute if score challengeChambersKeys global matches 1 unless entity @p[x=1818,y=26,z=576,dx=119,dy=70,dz=164] run function hp:quests/quests/challenge_chambers/remove_flying_keys

# Dungeon Delving 
execute if entity @p[x=1641,y=2,z=761,dx=253,dy=139,dz=211] run function hp:quests/quests/dungeon_delving/mechanics

# Conv npc
execute at @a[tag=!editNPC,tag=!inProperCutScene,tag=!inResetPoint,tag=!playerIsInvisible] as @e[type=!item_frame,tag=convNPC,tag=interactable,distance=..6,tag=!ignorePlayers,tag=!showingConvIndicator,tag=!inConversationNPC,tag=!hagrid,tag=!riddleLockedDoor,tag=!clue] run tag @s add showingConvIndicator
execute as @e[tag=showingConvIndicator,type=!item_frame] at @s run function hp:conversation/conv_indicator

# Entity Culling
function hp:entity_culling/main_entity_culling