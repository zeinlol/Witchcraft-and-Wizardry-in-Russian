# Fixes some weird bug that crashes the game when you die in certain locations
# execute store result score @s dead run data get entity @s DeathTime

#####################
# GLOBAL PER PLAYER #
#####################

# Clear inventory slots
execute as @s[tag=play] run function hp:inventory/clear_inventory_slots

# Remove quest event hooks from previous ticks
tag @s[tag=hasExitedInventory] remove hasExitedInventory
tag @s[tag=hasExitedConversation] remove hasExitedConversation

# Fix to prevent the player overriding the qeued quest by accepting a new one too quickly
tag @s[tag=startQueingQuest] add queingQuest
tag @s[tag=startQueingQuest] remove startQueingQuest


# Global Cleanup
# tag @e[type=!item_frame] remove hover

# On relog
execute as @s[scores={leave=1..}] run function hp:misc/relog
execute as @s[scores={relogTimer=1..},gamemode=adventure,tag=play] run effect give @s minecraft:instant_health 1 100
execute as @s[scores={relogTimer=1..,currentHealth=1..},gamemode=adventure,tag=play] run scoreboard players remove @s relogTimer 1

# Input
function hp:input/input

# World Barrier
execute as @s[tag=play,tag=!inProperCutScene] run function hp:barrier/main_barrier

# Hover
function hp:interaction/hover

# Creation Tools (Comment out when not used)
function hp:creation_tools/main_creation_tools
execute as @s[tag=!play] run function hp:npc/edit_path

# Discovery
execute as @s[tag=play] run function hp:discovery/main_discover

# Ambient sounds
function hp:ambience/main_ambience

# Music
function hp:music/main_music

# Tools
execute as @s[tag=play] run function hp:tools/main_tools
# Settings
execute as @s[tag=!inInventory,tag=!inConversation] run function hp:settings/main_settings
# Map
execute as @s[tag=!inInventory,tag=!inConversation] run function hp:map/main_map
# Conversation
function hp:conversation/main_conversation
# Custom Inventory
execute as @s[tag=!inMap] run function hp:inventory/main_inventory

# Equipment
function hp:inventory/equipment/equipment

# Spell
execute as @s[tag=unlockedSpells,tag=!playerIsInvisible] run function hp:spells/main_spells
function hp:spells/passive_spells
execute as @s[scores={selectedSlot=1},tag=hasUnlockedWand,tag=!unlockedSpells,tag=!anim_playingAlohomora,tag=!playerIsInvisible] run function hp:misc/wave_wand

# Health
execute as @s[scores={playerID=1}] run function hp:health/draw_health_player1
execute as @s[scores={playerID=2}] run function hp:health/draw_health_player2
execute as @s[scores={playerID=3}] run function hp:health/draw_health_player3
execute as @s[scores={playerID=4}] run function hp:health/draw_health_player4

# Travel Points
execute as @s[tag=inTravelPoint] run function hp:travel_point/main_travel_points

# Invisibility Cloak
execute as @s[tag=invisCape] run function hp:items/invisibility_cape

# Omnioculars
execute as @s[tag=omnioculars] run function hp:items/omnioculars

# Earmuffs
execute as @s[tag=earmuffs] run function hp:items/earmuffs

# Potions
execute as @s[tag=!inMap,tag=!inConversation] run function hp:potion_brewing/main_brewer

# Pensive
execute as @s[tag=!inMap,tag=!inConversation] run function hp:pensive/main_pensive

# Quests
execute as @s run function hp:quests/main_quests

# Draw hotbar
execute as @s[tag=takeOverInventory] run function hp:draw_hotbar/draw_main_performance_wrapper

# Cutscenes
tag @s[tag=cutsceneEndedThisTick] remove cutsceneEndedThisTick
execute as @s[tag=inCutScene] run function hp:cutscenes/in_cutscene

# Reset Point - World barrier or respawn
execute as @s[tag=inResetPoint] run function hp:reset_point/in_reset_point

# Potions
execute as @s[tag=usingAbsorptionPotion] run function hp:potions/elixir_of_life
execute as @s[tag=usingStrengthPotion] run function hp:potions/strength_potion
execute as @s[tag=usingAntidotePotion] run function hp:potions/antidote_to_poisons
execute as @s[tag=usingInvisibilityPotion] run function hp:potions/invisibility_potion
# Drowning
# Get Air
execute store result score @s air run data get entity @s Air
execute as @s[scores={air=..299}] run tag @s add isDrowning
execute as @s[tag=isDrowning] run function hp:misc/drowning

# Hit entity
execute as @s[scores={didDamage=1..}] run function hp:misc/hit_entity

# Spell hit enemy
execute as @s[tag=spellUpdateBossbar] run function hp:misc/update_bossbars
execute as @s[tag=spellUpdateBossbar] run tag @s remove spellUpdateBossbar

# Enemy health
execute as @s[scores={creatureFocus=1..}] run function hp:creatures/creatures_health

# Reset creature kills scoreboards
function hp:creatures/creature_quest_hooks

# Spectate if player has selected it from settings (needs to be at end of stack)
execute as @s[tag=spectateFromSettings] run function hp:settings/spectate_from_settings

# Fixes that Hagrid sometimes looks really weird because of odd armorstand rotation bugs
scoreboard players set @s tmp 0
execute store success score @s tmp at @s as cb44ecd2-3cb4-400c-89e4-28da27fb8634 if entity @s[distance=..60]
execute as @s[scores={tmp=1..},tag=!hagrid_id1] as cb44ecd2-3cb4-400c-89e4-28da27fb8634 run function hp:misc/fix_hagrid_rotation
execute as @s[scores={tmp=1..},tag=!hagrid_id1] run tag @s add hagrid_id1
execute as @s[scores={tmp=0},tag=hagrid_id1] run tag @s remove hagrid_id1

scoreboard players set @s tmp 0
execute store success score @s tmp at @s as 317258ac-bcb3-4b00-8064-430b265970fe if entity @s[distance=..60]
execute as @s[scores={tmp=1..},tag=!hagrid_id2] as 317258ac-bcb3-4b00-8064-430b265970fe run function hp:misc/fix_hagrid_rotation
execute as @s[scores={tmp=1..},tag=!hagrid_id2] run tag @s add hagrid_id2
execute as @s[scores={tmp=0},tag=hagrid_id2] run tag @s remove hagrid_id2

scoreboard players set @s tmp 0
execute store success score @s tmp at @s as 24196cf4-8783-452f-ab9a-bb3015499b22 if entity @s[distance=..60]
execute as @s[scores={tmp=1..},tag=!hagrid_id3] as 24196cf4-8783-452f-ab9a-bb3015499b22 run function hp:misc/fix_hagrid_rotation
execute as @s[scores={tmp=1..},tag=!hagrid_id3] run tag @s add hagrid_id3
execute as @s[scores={tmp=0},tag=hagrid_id3] run tag @s remove hagrid_id3

scoreboard players set @s tmp 0
execute store success score @s tmp at @s as c47ce60f-7217-4732-b6e7-ec8ccaed8e68 if entity @s[distance=..60]
execute as @s[scores={tmp=1..},tag=!hagrid_id4] as c47ce60f-7217-4732-b6e7-ec8ccaed8e68 run function hp:misc/fix_hagrid_rotation
execute as @s[scores={tmp=1..},tag=!hagrid_id4] run tag @s add hagrid_id4
execute as @s[scores={tmp=0},tag=hagrid_id4] run tag @s remove hagrid_id4

# Mandrake
execute at @s[tag=play,tag=!inCutScene,tag=!inResetPoint] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=..5] run function hp:creatures/mandrake/affected_by_mandrake
execute at @s[tag=play,tag=!inCutScene,tag=!inResetPoint,tag=affectedByMandrake] unless entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=..5] run function hp:creatures/mandrake/affected_by_mandrake

# Clear hunger from husks
effect clear @s minecraft:hunger

# Dark spirit stuff
execute store success score @s tmp run effect clear @s minecraft:wither
execute as @s[scores={tmp=1..}] at @s run particle minecraft:dust 0 0 0 2.5 ~ ~1.8 ~ 0.4 0.4 0.4 1 18 normal
execute as @s[scores={tmp=1..},tag=!stunnedByDarkSpirit] run function hp:creatures/dark_spirit/init_stunned_by_dark_spirit
execute as @s[scores={tmp=1..}] unless score @s darkSpiritStun matches 100.. run scoreboard players add @s darkSpiritStun 40
execute as @s[scores={tmp=1..,darkSpiritStun=101..}] run scoreboard players set @s darkSpiritStun 100
scoreboard players remove @s[scores={darkSpiritStun=1..},tag=offhandCanBeReplaced] darkSpiritStun 1
execute as @s[scores={darkSpiritStun=0},tag=stunnedByDarkSpirit] run function hp:creatures/dark_spirit/exit_stunned_by_dark_spirit

# Evil wizard stuff
scoreboard players set @s tmp 0
execute store success score @s tmp run effect clear @s[tag=!isLevitating] minecraft:levitation
execute as @s[scores={tmp=1..}] run effect give @s instant_damage 1 1

# jumpPlant
execute as @s[scores={jumpPlant=1..}] run function hp:misc/in_jump_plant

# Riding Broom
execute as @s[tag=!flyingBroom,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand"}}},scores={broomDelay=-1}] at @s run function hp:items/ride_broom
execute as @s[tag=flyingBroom] at @s run function hp:items/broom_input

# Used so I don't have to do all these tests many times in the quests
tag @s remove inNormalState
execute if entity @s[tag=!playingQuestAnim,tag=!isFastTravelling,tag=!inConversation,tag=!inBrewer,tag=!inPensive,tag=!inLetter,tag=!inWingardium,tag=!inAppiration,tag=!inMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!flyingBroom,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!inProperCutScene,tag=!inResetPoint,tag=play] run tag @s add inNormalState

# Highlight hover. The extra checks below here are for non glowable interactable objects. Originally clearing of the tags was done seperately but it was moved into hover_glow for mimimizing the number of @e
execute as @e[type=!item_frame,tag=glowable] run function hp:interaction/hover_glow
execute as @s[tag=!hasClearedHover] run tag @e[tag=hover] remove hover
execute as @s[tag=!hasClearedQuestHover] run tag @e[tag=questHover,limit=1] remove questHover
tag @s remove hasClearedHover
tag @s remove hasClearedQuestHover

# When cheating / going in creative mode players often return to survival mode instead of adventure mode
gamemode adventure @s[gamemode=survival]


tag @s remove activePlayer
