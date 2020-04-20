# Exit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s[tag=!inConversation] minecraft:slowness
effect clear @s[tag=!inConversation] minecraft:levitation
tag @s[tag=!inConversation] remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-c-0-1
execute as @s[scores={playerID=2}] run kill 0-0-c-0-2
execute as @s[scores={playerID=3}] run kill 0-0-c-0-3
execute as @s[scores={playerID=4}] run kill 0-0-c-0-4
execute as @s[tag=!isContainer] at @s run playsound minecraft:custom.ui.inventory.interaction.close_inventory master @a ~ ~ ~ 1 1
execute as @s[tag=!buy,tag=!sell] run tag @s remove showBossbarHeader
execute as @s[tag=!buy,tag=!sell] run function hp:misc/update_bossbars
# Fixes an issue with exiting shops causing a one tick flicker
scoreboard players set @s delayConvTellraw 1

# Prevent scrolling when exiting shop / sell
execute unless entity @s[tag=!buy,tag=!sell] as @s[scores={playerID=1}] run tp @s 0-0-e-0-1
execute unless entity @s[tag=!buy,tag=!sell] as @s[scores={playerID=2}] run tp @s 0-0-e-0-2
execute unless entity @s[tag=!buy,tag=!sell] as @s[scores={playerID=3}] run tp @s 0-0-e-0-3
execute unless entity @s[tag=!buy,tag=!sell] as @s[scores={playerID=4}] run tp @s 0-0-e-0-4


execute as @e[tag=inventory,tag=largeChest] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.35 1
execute as @e[tag=inventory,tag=smallChest] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 0.55 1
execute as @e[tag=inventory,tag=chest] run tag @s add closeChest
tag @s remove isContainer
tag @s remove buy
tag @s remove sell
execute as @s[tag=inConversation] run tag @s add exitInventoryInConversation
tag @s add preventDoubleExecution
tag @s remove inInventory
scoreboard players set @s selectCurrent 1
tag @s[tag=!inLumos] remove preventPunching


execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest

tag @s[tag=!inLumos,scores={selectedSlot=1},tag=!anim_playingEnter] add anim_enter

scoreboard players set @s[scores={hotbar_stage=3}] hotbar_stage 4
tag @s remove invTutorial

tag @s remove exitInventory

# If editing container
execute if entity @s[tag=!play] as @e[tag=editAddItemsTarget] run function hp:inventory/reset_store_chest_items
execute if entity @s[tag=!play] as @e[tag=editAddItemsTarget] run tag @s remove editAddItemsTarget
tag @s remove editAddItems
tag @s remove editRemoveItems

# Revert to player inventory
execute as @s run tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4}] run tag 0-0-5-0-4 add inventory

# Quest event hook
tag @s add hasExitedInventory