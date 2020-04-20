# This function holds commands that are only triggered when the player has interacted with the pensive. It's based on inventory system so variabe names dont make a lot of sense

# enter animation
execute as @s[scores={animTest=1..}] run scoreboard players remove @s animTest 1

##############################################
#               Scrolling                    #
##############################################

# Scroll testers
execute as 0-0-11-0-4 at @s[tag=!softExitConv,tag=!inInventory] positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"pensiveUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[pensiveSelect,selectUp],UUIDMost:18,UUIDLeast:13}
execute as 0-0-11-0-4 at @s[tag=!softExitConv,tag=!inInventory] positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"pensiveDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[pensiveSelect,selectDown],UUIDMost:18,UUIDLeast:14}
execute as 0-0-11-0-4 at @s[tag=!softExitConv,tag=!inInventory] positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"pensiveUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[pensiveSelect,selectLeft],UUIDMost:18,UUIDLeast:15}
execute as 0-0-11-0-4 at @s[tag=!softExitConv,tag=!inInventory] positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"pensiveDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[pensiveSelect,selectRight],UUIDMost:18,UUIDLeast:16}

# Sideways Scroll
# Select potion to brew
execute at 0-0-11-0-4 as @s[distance=0.001..,tag=!invInspectItem] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectRight] run scoreboard players add @p selectCurrent 1
execute at 0-0-11-0-4 as @s[distance=0.001..,tag=!invInspectItem] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectRight] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.5 1 0.5
execute at 0-0-11-0-4 as @s[distance=0.001..,tag=!invInspectItem] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectLeft] run scoreboard players remove @p selectCurrent 1
execute at 0-0-11-0-4 as @s[distance=0.001..,tag=!invInspectItem] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectLeft] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.5 1 0.5

execute as @s[tag=hasChangedSlotUp,tag=!invInspectItem] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=hasChangedSlotUp,tag=!invInspectItem] run scoreboard players add @s selectCurrent 1
execute as @s[tag=hasChangedSlotDown,tag=!invInspectItem] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=hasChangedSlotDown,tag=!invInspectItem] run scoreboard players remove @s selectCurrent 1

# Wrapping for spell challenge selection
scoreboard players set @s[scores={selectCurrent=10..}] selectCurrent 1
scoreboard players set @s[scores={selectCurrent=..0}] selectCurrent 9

# Scroll down secondary scroll (for when inspecting an item or similar)
execute as @s[tag=hasChangedSlotDown,tag=invInspectItem,scores={selectSecondary=..2}] run scoreboard players add @s selectSecondary 1
execute as @s[tag=hasChangedSlotDown,tag=invInspectItem,scores={selectSecondary=1}] run scoreboard players add @s selectSecondary 1
execute at 0-0-11-0-4 as @s[distance=0.001..] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectDown] as @p run playsound minecraft:ui.button.click master @s[tag=invInspectItem,scores={selectSecondary=1}] ~ ~ ~ 0.5 1 0.5
execute at 0-0-11-0-4 as @s[distance=0.001..] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectDown] as @p run scoreboard players add @s[tag=invInspectItem,scores={selectSecondary=1}] selectSecondary 1

# Scroll up secondary
execute as @s[tag=hasChangedSlotUp,tag=invInspectItem,scores={selectSecondary=2..}] run scoreboard players remove @s selectSecondary 1
execute as @s[tag=hasChangedSlotUp,tag=invInspectItem,scores={selectSecondary=2}] run scoreboard players remove @s selectSecondary 1
execute at 0-0-11-0-4 as @s[distance=0.001..] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectUp] as @p run playsound minecraft:ui.button.click master @s[tag=invInspectItem,scores={selectSecondary=2}] ~ ~ ~ 0.5 1 0.5
execute at 0-0-11-0-4 as @s[distance=0.001..] at @s as @e[tag=pensiveSelect,limit=1,sort=nearest] run execute if entity @s[tag=selectUp] as @p run scoreboard players remove @s[tag=invInspectItem,scores={selectSecondary=2}] selectSecondary 1

# slowness is just for zoom effect thing. Levitation is to prevent viewbobbing and general akwardness. Nightvision is so the item preview wont be affected by the lightlevel of where the player is standing.
effect give @s minecraft:slowness 100 2 true
effect give @s minecraft:levitation 100 255 true
tag @s add isLevitating
execute as @s[scores={animTest=0}] run effect give @s minecraft:night_vision 100 10 true

# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity 0-0-11-0-4 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-11-0-4 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-11-0-4 as @s[distance=0.001..] run tag @s add lookTP
execute as @s[tag=lookTP,tag=!inInventory] run tp @s 0-0-11-0-4
tag @s[tag=lookTP] remove lookTP


##############################################
#               Functionality                #
##############################################

# Trigger inspect item
execute as @s[tag=hasPressedF,tag=!invInspectItem,tag=!preventDoubleExecution,scores={animTest=0}] run tag @s add inspectItem
execute as @s[tag=inspectItem] run scoreboard players set @s selectSecondary 1
execute as @s[tag=inspectItem] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.8 0.5
execute as @s[tag=inspectItem] run tag @s add preventDoubleExecution
execute as @s[tag=inspectItem] run tag @s add invInspectItem
execute as @s[tag=inspectItem] run tag @s remove inspectItem


# Confirm relive memory
execute as @s[tag=hasPressedF,tag=invInspectItem,scores={selectSecondary=1},tag=!preventDoubleExecution] run tag @s add reliveMemory
execute as @s[tag=reliveMemory] run scoreboard players operation @s reliveMemoryID = @s selectCurrent
execute as @s[tag=reliveMemory] run scoreboard players operation confirmingPensiveMemoryID global = @s selectCurrent
execute as @s[tag=reliveMemory] run tag @s remove invInspectItem
execute as @s[tag=reliveMemory] run tag @s add waitingToReliveMemory
execute as @s[tag=reliveMemory] run tag @s add exitPensive
execute as @s[tag=reliveMemory] run scoreboard players set @s pensiveCancel 0
execute as @s[tag=reliveMemory] run tag @s remove reliveMemory

execute as @s[tag=hasPressedF,tag=invInspectItem,scores={selectSecondary=2},tag=!preventDoubleExecution] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.6 0.5
execute as @s[tag=hasPressedF,tag=invInspectItem,scores={selectSecondary=2},tag=!preventDoubleExecution] run tag @s remove invInspectItem
execute as @s[tag=hasPressedF,tag=!invInspectItem,scores={selectSecondary=2},tag=!preventDoubleExecution] run tag @s add preventDoubleExecution


# read inventory resources and draw in chat
execute as @s[scores={animTest=0..1}] run function hp:pensive/tellraw_pensive

# When pressing shift
execute as @s[tag=!ibrewerIntroduction,tag=isSneaking,tag=!invInspectItem,scores={shiftTest=1}] run tag @s add exitPensive
execute as @s[tag=isSneaking,tag=invInspectItem,scores={shiftTest=1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.6 0.5
execute as @s[tag=isSneaking,tag=invInspectItem,scores={shiftTest=1}] run tag @s remove invInspectItem

tag @s[tag=preventDoubleExecution] remove preventDoubleExecution


# Cleanup for next player
kill 0-0-12-0-d
kill 0-0-12-0-e
kill 0-0-12-0-f
kill 0-0-12-0-10
