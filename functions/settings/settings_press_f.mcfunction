scoreboard players set @s tmp 0

execute if score @s convState matches 2 as @s[scores={selectCurrent=..8}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score @s convState matches 2 as @s[scores={selectCurrent=..8}] run scoreboard players add @s selectCurrent 1

execute as @s[scores={convState=0,selectCurrent=1,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run tag @s add exitSettings
execute as @s[scores={convState=0,selectCurrent=2,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run tag @s add invInspectItem
execute as @s[scores={convState=0,selectCurrent=2,tmp=0,selectSecondary=1},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run function hp:settings/respawn_player_from_settings
execute as @s[scores={convState=0,selectCurrent=2,tmp=0,selectSecondary=2},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run tag @s remove invInspectItem
execute as @s[scores={convState=0,selectCurrent=3,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run scoreboard players set @s convState 1
execute as @s[scores={convState=0,selectCurrent=4,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @s[scores={convState=0,selectCurrent=4,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run scoreboard players set @s convState 2
execute as @s[scores={convState=0,selectCurrent=5,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem,tag=AMDgraphicsCard] store success score @s tmp run tag @s remove AMDgraphicsCard
execute as @s[scores={convState=0,selectCurrent=5,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem,tag=!AMDgraphicsCard] store success score @s tmp run tag @s add AMDgraphicsCard
execute as @s[scores={convState=0,selectCurrent=6,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] unless score noGlowEffect global matches 1 store success score @s tmp run scoreboard players set noGlowEffect global 1
execute as @s[scores={convState=0,selectCurrent=6,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] if score noGlowEffect global matches 1 store success score @s tmp run scoreboard players set noGlowEffect global 0
execute as @s[scores={convState=0,selectCurrent=7,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run tag @s add invInspectItem
execute as @s[scores={convState=0,selectCurrent=7,tmp=0,selectSecondary=1},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run tag @s add spectateFromSettings
execute as @s[scores={convState=0,selectCurrent=7,tmp=0,selectSecondary=2},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run tag @s remove invInspectItem
execute as @s[scores={convState=0,selectCurrent=8,tmp=0},tag=!preventDoubleExecution,tag=!invInspectItem] store success score @s tmp run tag @s add invInspectItem
execute as @s[scores={convState=0,selectCurrent=8,tmp=0,selectSecondary=1},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run function hp:settings/reset_game_from_settings
execute as @s[scores={convState=0,selectCurrent=8,tmp=0,selectSecondary=2},tag=!preventDoubleExecution,tag=invInspectItem] store success score @s tmp run tag @s remove invInspectItem

execute as @s[scores={tmp=1..},tag=invInspectItem] run scoreboard players set @s selectSecondary 1
execute as @s[scores={tmp=1..},tag=!invInspectItem] unless score @s selectCurrent matches 5..6 run scoreboard players set @s selectCurrent 1
execute as @s[scores={tmp=1..},tag=!invInspectItem] unless score @s selectCurrent matches 5..6 run scoreboard players set @s settingsScroll 0
execute as @s[scores={tmp=1..}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .75 0.5