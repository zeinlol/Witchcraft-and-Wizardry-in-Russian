# reset scroll indicators
tag 0-0-3-0-4 remove active
tag 0-0-3-0-5 remove active

execute store result score @s falling run data get entity 0-0-a-0-3 FallDistance 10

# Cleanup
tag @s remove selectedDestinationLocked

execute if entity @s[scores={playerID=1,animTest=0..1}] as 0-0-5-0-1 run function hp:map/read_map
execute if entity @s[scores={playerID=2,animTest=0..1}] as 0-0-5-0-2 run function hp:map/read_map
execute if entity @s[scores={playerID=3,animTest=0..1}] as 0-0-5-0-3 run function hp:map/read_map
execute if entity @s[scores={playerID=4,animTest=0..1}] as 0-0-5-0-4 run function hp:map/read_map


##############################################
#               Scrolling                    #
##############################################
tag @s remove hasScrolled

# Scroll testers
execute as 0-0-a-0-3 at @s[tag=!softExitMap] positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[mapSelect,selectUp],UUIDMost:11,UUIDLeast:9}
execute as 0-0-a-0-3 at @s[tag=!softExitMap] positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[mapSelect,selectDown],UUIDMost:11,UUIDLeast:10}
execute as 0-0-a-0-3 at @s[tag=!softExitMap] positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[mapSelect,selectLeft],UUIDMost:11,UUIDLeast:11}
execute as 0-0-a-0-3 at @s[tag=!softExitMap] positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[mapSelect,selectRight],UUIDMost:11,UUIDLeast:12}

# Scroll down
execute as @s[tag=hasChangedSlotDown,tag=!softExitMap,tag=!hasScrolled] run function hp:map/map_scroll_down
execute at 0-0-a-0-3 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!softExitMap,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=mapSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:map/map_scroll_down

# Scroll up
execute as @s[tag=hasChangedSlotUp,tag=!softExitMap,tag=!hasScrolled] run function hp:map/map_scroll_up
execute at 0-0-a-0-3 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!softExitMap,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=mapSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:map/map_scroll_up

# Indicators
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000004 InvItemNumber matches 5.. run tag 0-0-3-0-4 add active
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000006 InvItemNumber < @s convMaxView run tag 0-0-3-0-5 add active 



# slowness is just for zoom effect thing. Levitation prevents handmodel moving
execute as @s[tag=!softExitMap] run effect give @s minecraft:slowness 100 2 true
execute as @s[tag=!softExitMap] run effect give @s minecraft:levitation 100 255 true
execute as @s[tag=!softExitMap] run tag @s add isLevitating
execute as @s[scores={animTest=0},tag=!softExitMap] run effect give @s minecraft:night_vision 100 10 true


# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity 0-0-a-0-3 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-a-0-3 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-a-0-3 as @s[distance=0.001..,tag=!softExitMap] run tag @s add lookTP
execute as @s[tag=lookTP,tag=!delayMapOneTick] run tp @s 0-0-a-0-3
tag @s[tag=lookTP] remove lookTP

# enter animation
execute as @s[scores={animTest=1..}] run scoreboard players remove @s animTest 1

# Yo future me this is a really nasty hack but done to prevent a visual bug please fix it 
# execute as @s[tag=tmpExecute] run function hp:draw_hotbar/draw_inventory
# Yo past me I fixed it no worries.

# input
execute as @s[tag=hasPressedF] run function hp:map/map_press_f
execute as @s[tag=isSneaking,scores={shiftTest=1}] run function hp:map/map_press_shift

# Draw map
execute as @s[tag=!softExitMap,scores={animTest=0},tag=!invInspectItem] run function hp:map/tellraw_map

execute as @s[tag=!softExitMap,tag=invInspectItem,scores={selectSecondary=1},tag=!delayMapOneTick] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы уверены что хотите отправиться в \n     ","bold":false,"color":"gray"},{"selector":"@e[type=armor_stand,tag=inventoryOption,tag=inspectedItem,limit=1]"},{"text":"?","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n     "},{"text":">> [","color":"green"},{"text":"Да","color":"dark_green","underlined":true},{"text":"] <<","color":"green"},{"text":"\n       "},{"text":" [","color":"dark_gray"},{"text":"Нет","color":"red"},{"text":"]","color":"dark_gray"},{"text":"\n\n\n"}]]
execute as @s[tag=!softExitMap,tag=invInspectItem,scores={selectSecondary=2},tag=!delayMapOneTick] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы уверены что хотите отправиться в \n     ","bold":false,"color":"gray"},{"selector":"@e[type=armor_stand,tag=inventoryOption,tag=inspectedItem,limit=1]"},{"text":"?","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n       "},{"text":" [","color":"dark_gray"},{"text":"Да","color":"green"},{"text":"]","color":"dark_gray"},{"text":"\n     "},{"text":">> [","color":"red"},{"text":"Нет","color":"dark_red","underlined":true},{"text":"] <<","color":"red"},{"text":"\n\n\n"}]]



# The order needs to be like this to prevent a visual glitch. It's kinda wonky but that's show biz baibee
execute as @s[tag=unInspectMapLocation] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-1 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-2 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-3 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-4 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-5 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag 0-0-1-0-6 remove inspectedItem
execute as @s[tag=unInspectMapLocation] run tag @s remove invInspectItem
execute as @s[tag=unInspectMapLocation] run tag @s remove unInspectMapLocation

# Soft Exit
execute as @s[tag=isFastTravelling,tag=!softExitMap] run function hp:map/init_soft_exit

# Cleanup for next player
tag @s[tag=delayMapOneTick] remove delayMapOneTick
kill 0-0-b-0-9
kill 0-0-b-0-a
kill 0-0-b-0-b
kill 0-0-b-0-c