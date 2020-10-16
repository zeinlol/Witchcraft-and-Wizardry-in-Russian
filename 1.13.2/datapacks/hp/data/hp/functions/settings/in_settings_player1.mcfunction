# reset scroll indicators
tag 0-0-3-0-4 remove active
tag 0-0-3-0-5 remove active

execute unless score @s convState matches 2 as @s[scores={animTest=0..1}] run function hp:settings/read_settings

execute store result score @s falling run data get entity 0-0-13-0-1 FallDistance 10

##############################################
#               Scrolling                    #
##############################################
tag @s remove hasScrolled

# Scroll testers
execute as 0-0-13-0-1 at @s positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"settingsUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[settingsSelect,selectUp],UUIDMost:20,UUIDLeast:1}
execute as 0-0-13-0-1 at @s positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"settingsDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[settingsSelect,selectDown],UUIDMost:20,UUIDLeast:2}
execute as 0-0-13-0-1 at @s positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"settingsUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[settingsSelect,selectLeft],UUIDMost:20,UUIDLeast:3}
execute as 0-0-13-0-1 at @s positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"settingsDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[settingsSelect,selectRight],UUIDMost:20,UUIDLeast:4}

# Scroll down
execute unless score @s convState matches 1..2 as @s[tag=hasChangedSlotDown,tag=!hasScrolled] run function hp:settings/settings_scroll_down
execute unless score @s convState matches 1..2 at 0-0-13-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=settingsSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:settings/settings_scroll_down
execute if score @s convState matches 1 as @s[tag=hasChangedSlotDown,tag=!hasScrolled] run function hp:settings/settings_credits_scroll_down
execute if score @s convState matches 1 at 0-0-13-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=settingsSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:settings/settings_credits_scroll_down


# Scroll up
execute unless score @s convState matches 1..2 as @s[tag=hasChangedSlotUp,tag=!hasScrolled] run function hp:settings/settings_scroll_up
execute unless score @s convState matches 1..2 at 0-0-13-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=settingsSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:settings/settings_scroll_up
execute if score @s convState matches 1 as @s[tag=hasChangedSlotUp,tag=!hasScrolled] run function hp:settings/settings_credits_scroll_up
execute if score @s convState matches 1 at 0-0-13-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=settingsSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:settings/settings_credits_scroll_up


# Indicators
execute unless score @s convState matches 1 as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000004 InvItemNumber matches 5.. run tag 0-0-3-0-4 add active
execute unless score @s convState matches 1 as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000006 InvItemNumber < @s convMaxView run tag 0-0-3-0-5 add active 

execute if score @s convState matches 1 as @s[tag=!invInspectItem] if score @s settingsScroll matches 1.. run tag 0-0-3-0-4 add active
execute if score @s convState matches 1 as @s[tag=!invInspectItem] if score @s settingsScroll matches ..144 run tag 0-0-3-0-5 add active 

execute if score @s convState matches 2 as @s[tag=hasPressedF,scores={selectCurrent=9}] run tag @s add completedSetup
execute as @s[tag=completedSetup] run scoreboard players set @s settingsScroll 0
execute as @s[tag=completedSetup] run scoreboard players set @s selectCurrent 1
execute as @s[tag=completedSetup] run scoreboard players set @s settingsScroll 0
execute as @s[tag=completedSetup] run scoreboard players set @s convState 0
execute as @s[tag=completedSetup] run tag @s add preventDoubleExecution
execute as @s[tag=completedSetup] run function hp:settings/read_settings
execute as @s[tag=completedSetup] run tag @s remove completedSetup


# Detect exitSettings
scoreboard players remove @s[scores={selectTest=1..}] selectTest 1
execute as @s[tag=isSneaking,scores={selectTest=0}] run function hp:settings/settings_press_shift

# slowness is just for zoom effect thing. Levitation prevents handmodel moving
effect give @s minecraft:slowness 100 2 true
effect give @s minecraft:levitation 100 255 true
tag @s add isLevitating
execute as @s[scores={animTest=0}] run effect give @s minecraft:night_vision 100 10 true


# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity 0-0-13-0-1 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-13-0-1 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-13-0-1 as @s[distance=0.001..,tag=!softExitMap] run tag @s add lookTP
execute as @s[tag=lookTP,tag=!delaySettingsOneTick] run tp @s 0-0-13-0-1
tag @s[tag=lookTP] remove lookTP


# enter animation
execute as @s[scores={animTest=1..}] run scoreboard players remove @s animTest 1

# Start state
execute as @s[tag=hasPressedF] run function hp:settings/settings_press_f

# Draw Settings
execute as @s[scores={animTest=0},tag=!invInspectItem,tag=!inResetPoint] unless score @s convState matches 2 run function hp:settings/tellraw_settings

execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=1,selectCurrent=2}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите респавнуться? \n","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n     "},{"text":">> [","color":"green"},{"text":"Да","color":"dark_green","underlined":true},{"text":"] <<","color":"green"},{"text":"\n       "},{"text":" [","color":"dark_gray"},{"text":"Нет","color":"red"},{"text":"]","color":"dark_gray"},{"text":"\n\n\n"}]]
execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=2,selectCurrent=2}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите респавнуться? \n","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n       "},{"text":" [","color":"dark_gray"},{"text":"Да","color":"green"},{"text":"]","color":"dark_gray"},{"text":"\n     "},{"text":">> [","color":"red"},{"text":"Нет","color":"dark_red","underlined":true},{"text":"] <<","color":"red"},{"text":"\n\n\n"}]]

execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=1,selectCurrent=7}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите выйти из игрового режима?\n     Вы сможете продолжить прохождение позже","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n     "},{"text":">> [","color":"green"},{"text":"Да","color":"dark_green","underlined":true},{"text":"] <<","color":"green"},{"text":"\n       "},{"text":" [","color":"dark_gray"},{"text":"Нет","color":"red"},{"text":"]","color":"dark_gray"},{"text":"\n\n\n"}]]
execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=2,selectCurrent=7}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите выйти из игрового режима?\n     Вы сможете продолжить прохождение позже","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n       "},{"text":" [","color":"dark_gray"},{"text":"Да","color":"green"},{"text":"]","color":"dark_gray"},{"text":"\n     "},{"text":">> [","color":"red"},{"text":"Нет","color":"dark_red","underlined":true},{"text":"] <<","color":"red"},{"text":"\n\n\n"}]]

execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=1,selectCurrent=8}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите сбросить игру?\n     Весь прогресс будет утерян! ","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n     "},{"text":">> [","color":"green"},{"text":"Да","color":"dark_green","underlined":true},{"text":"] <<","color":"green"},{"text":"\n       "},{"text":" [","color":"dark_gray"},{"text":"Нет","color":"red"},{"text":"]","color":"dark_gray"},{"text":"\n\n\n"}]]
execute as @s[tag=invInspectItem,scores={convState=0,selectSecondary=2,selectCurrent=8}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Вы действительно хотите сбросить игру?\n     Весь прогресс будет утерян! ","bold":false,"color":"gray"},{"text":"\n     ˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙\n       "},{"text":" [","color":"dark_gray"},{"text":"Да","color":"green"},{"text":"]","color":"dark_gray"},{"text":"\n     "},{"text":">> [","color":"red"},{"text":"Нет","color":"dark_red","underlined":true},{"text":"] <<","color":"red"},{"text":"\n\n\n"}]]

# Setup GUI scale
execute as @s[scores={convState=2,selectCurrent=3,playerID=1},tag=!adjustGUI] run bossbar set minecraft:player1info name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={convState=2,selectCurrent=3,playerID=2},tag=!adjustGUI] run bossbar set minecraft:player2info name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={convState=2,selectCurrent=3,playerID=3},tag=!adjustGUI] run bossbar set minecraft:player3info name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={convState=2,selectCurrent=3,playerID=4},tag=!adjustGUI] run bossbar set minecraft:player4info name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={convState=2,selectCurrent=3},tag=!adjustGUI] run tag @s add adjustGUI
execute as @s[tag=adjustGUI,scores={playerID=1}] unless entity @s[scores={convState=2,selectCurrent=3}] run bossbar set minecraft:player1info name {"text":"Settings","bold":true,"color":"gray"}
execute as @s[tag=adjustGUI,scores={playerID=2}] unless entity @s[scores={convState=2,selectCurrent=3}] run bossbar set minecraft:player2info name {"text":"Settings","bold":true,"color":"gray"}
execute as @s[tag=adjustGUI,scores={playerID=3}] unless entity @s[scores={convState=2,selectCurrent=3}] run bossbar set minecraft:player3info name {"text":"Settings","bold":true,"color":"gray"}
execute as @s[tag=adjustGUI,scores={playerID=4}] unless entity @s[scores={convState=2,selectCurrent=3}] run bossbar set minecraft:player4info name {"text":"Settings","bold":true,"color":"gray"}
execute as @s[tag=adjustGUI] unless entity @s[scores={convState=2,selectCurrent=3}] run tag @s remove adjustGUI

execute as @s[tag=adjustGUI] run title @s actionbar ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]


# Cleanup for next player
tag @s[tag=delaySettingsOneTick] remove delaySettingsOneTick
kill 0-0-14-0-1
kill 0-0-14-0-2
kill 0-0-14-0-3
kill 0-0-14-0-4