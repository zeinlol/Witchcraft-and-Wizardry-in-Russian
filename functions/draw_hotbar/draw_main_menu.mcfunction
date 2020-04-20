# Yuck this is some of the worst and knarliest command stuff I've ever done

effect give @s minecraft:haste 1 5 true

tag @s[tag=!seenMainMenu] add seenMainMenu

# cheeky hacked f and q detection
tag @s remove hasPressedF
execute as @s[scores={pressQ=1..}] run tag @s add hasPressedQ
execute as @s[tag=hasPressedQ] run kill @e[type=item,nbt={Item:{tag:{qDetect:1b}}}]
execute as @s[tag=hasPressedQ] run scoreboard players add @s editStick 1
execute as @s[tag=hasPressedQ] run scoreboard players set @s pressQ 0
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{fDetect:1b}}]}] run tag @s add hasPressedF

tag @s remove isSneaking
execute as @s[scores={sneak=1..}] run tag @s add isSneaking
execute as @s[tag=isSneaking] run scoreboard players add @s shiftTest 1
execute as @s[tag=isSneaking] run scoreboard players set @s sneak 0
execute as @s[tag=!isSneaking] run scoreboard players set @s shiftTest 0


# Scroll detection
execute store result score @s selectedSlot run data get entity @s SelectedItemSlot
scoreboard players add @s selectedSlot 1
execute as @s unless score @s selectedSlot = @s iniSelectSlot run tag @s add hasChangedSlot
execute as @s unless entity @s[scores={selectedSlot=8..9,iniSelectSlot=1..2}] if score @s selectedSlot > @s iniSelectSlot run tag @s add hasChangedSlotDown
execute as @s unless entity @s[scores={selectedSlot=1..2,iniSelectSlot=8..9}] if score @s selectedSlot < @s iniSelectSlot run tag @s add hasChangedSlotUp
execute as @s[scores={selectedSlot=1..2,iniSelectSlot=8..9}] run tag @s add hasChangedSlotDown
execute as @s[scores={selectedSlot=8..9,iniSelectSlot=1..2}] run tag @s add hasChangedSlotUp
scoreboard players operation @s iniSelectSlot = @s selectedSlot


# Init
execute as @s[tag=mainMenu,tag=!inMainMenu] run scoreboard players set @s animTest 40
execute as @s[tag=mainMenu,tag=!inMainMenu] run scoreboard players set @s selectCurrent 0
execute as @s[tag=mainMenu,tag=!inMainMenu] run scoreboard players set @s mainMenuState 0
execute as @s[tag=mainMenu,tag=!inMainMenu] run scoreboard players set @s playerID 0
execute as @s[tag=mainMenu,tag=!inMainMenu] run scoreboard players set @s menuPlayerID 0

execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:setup_gui name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1discover visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1empty visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1empty_fog visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1enemy visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1health visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1info visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player1quest visible false

execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2discover visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2empty visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2empty_fog visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2enemy visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2health visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2info visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player2quest visible false

execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3discover visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3empty visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3empty_fog visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3enemy visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3health visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3info visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player3quest visible false

execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4discover visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4empty visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4empty_fog visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4enemy visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4health visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4info visible false
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:player4quest visible false

execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu1 name {"translate":"Oh dear! The resource pack hasn't loaded properly","color":"gold"}
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu2 name {"translate":"If you are in Multiplayer download the resource pack from Discord","color":"gray"}
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu3 name {"translate":"If you are in Singleplayer try setting mip-map levels to 0","color":"gray"}
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu1 players @a[tag=mainMenu]
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu2 players @a[tag=mainMenu]
execute as @s[tag=mainMenu,tag=!inMainMenu] run bossbar set minecraft:mainmenu3 players @a[tag=mainMenu]

execute as @s[tag=mainMenu,tag=!inMainMenu] unless entity @p[scores={menuPlayerID=1}] unless entity @p[scores={menuPlayerID=2}] unless entity @p[scores={menuPlayerID=3}] unless entity @p[scores={menuPlayerID=4}] run scoreboard players set @s menuPlayerID 1
execute as @s[tag=mainMenu,tag=!inMainMenu] run stopsound @s ambient
execute as @s[tag=mainMenu,tag=!inMainMenu] at @s run playsound minecraft:custom.music.witchcraft_and_wizardry master @s ~ ~ ~ 10000 1 1
execute as @s[tag=mainMenu,tag=!inMainMenu] run tag @s add doNotPlayAmbience
execute as @s[tag=mainMenu,tag=!inMainMenu] run clear @s
execute as @s[tag=mainMenu,tag=!inMainMenu] run tag @s add inMainMenu

function hp:inventory/clear_inventory_slots

# Exit
execute as @s[tag=exitMainMenu] run tag @s remove mainMenu
execute as @s[tag=exitMainMenu] run tag @s remove inMainMenu
execute as @s[tag=exitMainMenu] run tag @s remove setupSingleplayer
execute as @s[tag=exitMainMenu] run tag @s remove showMainMenuControls
execute as @s[tag=exitMainMenu] run tag @s remove playerIsJoined
execute as @s[tag=exitMainMenu] run scoreboard players set @s menuPlayerID 0
execute as @s[tag=exitMainMenu] run scoreboard players set @s mainMenuState 0
execute as @s[tag=exitMainMenu] run bossbar set minecraft:mainmenu1 players @a[tag=mainMenu]
execute as @s[tag=exitMainMenu] run bossbar set minecraft:mainmenu2 players @a[tag=mainMenu]
execute as @s[tag=exitMainMenu] run bossbar set minecraft:mainmenu3 players @a[tag=mainMenu]
execute as @s[tag=exitMainMenu] run tag @s remove exitMainMenu

###############
# Multiplayer #
###############
# Count joined players
scoreboard players set global joinedPlayers 0
execute as @a[tag=playerIsJoined] run scoreboard players add global joinedPlayers 1

# Set menu player ID's
execute unless score @s menuPlayerID matches 1 run scoreboard players set @s menuPlayerID 0
execute as @s[scores={menuPlayerID=0}] if entity @p[scores={menuPlayerID=1}] unless entity @p[scores={menuPlayerID=2}] run scoreboard players set @s menuPlayerID 2
execute as @s[scores={menuPlayerID=0}] if entity @p[scores={menuPlayerID=1}] unless entity @p[scores={menuPlayerID=3}] run scoreboard players set @s menuPlayerID 3
execute as @s[scores={menuPlayerID=0}] if entity @p[scores={menuPlayerID=1}] unless entity @p[scores={menuPlayerID=4}] run scoreboard players set @s menuPlayerID 4

######################################

# Titles
execute as @s[scores={mainMenuState=0,animTest=-10}] run title @s actionbar ""
# Player 1 - Singleplayer / multiplayer
execute as @s[scores={menuPlayerID=1,mainMenuState=1,selectCurrent=0}] run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"},{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={menuPlayerID=1,mainMenuState=1,selectCurrent=1}] run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"},{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"}]
# Player 2+ - Wait for player 1 to start the gmae
execute as @s[scores={menuPlayerID=2..,mainMenuState=1}] unless entity @p[scores={menuPlayerID=1,mainMenuState=2..}] run title @s actionbar ["",{"text":"Подождите "},{"selector":"@p[scores={menuPlayerID=1}]"},{"text":" для начала игры"}]
# Player 2+ - Join / spectate
execute as @s[scores={menuPlayerID=2..,mainMenuState=1,selectCurrent=0}] if entity @p[scores={menuPlayerID=1,mainMenuState=20..}] run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"},{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={menuPlayerID=2..,mainMenuState=1,selectCurrent=1}] if entity @p[scores={menuPlayerID=1,mainMenuState=20..}] run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"},{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"}]
# Player 2+ - spectate
execute as @s[scores={menuPlayerID=2..,mainMenuState=1}] if entity @p[scores={menuPlayerID=1,mainMenuState=2..15}] run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"}]
execute as @s[scores={menuPlayerID=2..,mainMenuState=1}] if score global mainMenuState matches 1 run title @s actionbar [{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"gold"}]


execute as @s[scores={mainMenuState=2..4}] run title @s actionbar [{"text":" ","color":"white"}]
execute as @s[scores={mainMenuState=5}] run title @s actionbar ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @s[scores={mainMenuState=6..}] run title @s actionbar [{"text":" ","color":"white"}]
bossbar set minecraft:setup_gui players @a[scores={mainMenuState=5}]
execute if score @s mainMenuState matches 5 run tag @s add adjustingGUIScale
execute unless score @s mainMenuState matches 5 run tag @s remove adjustingGUIScale
bossbar set minecraft:mainmenu1 players @a[tag=mainMenu,tag=!adjustingGUIScale]	
bossbar set minecraft:mainmenu2 players @a[tag=mainMenu,tag=!adjustingGUIScale]
bossbar set minecraft:mainmenu3 players @a[tag=mainMenu,tag=!adjustingGUIScale]

# WASD

execute as @s[scores={mainMenuState=1,menuPlayerID=1}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=1}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=1,menuPlayerID=1}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=1}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=51}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=51}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=51}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=51}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=4}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=4}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=4}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=4}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

# Mouse scroll
execute as @s[scores={mainMenuState=1,menuPlayerID=1},tag=hasChangedSlotDown] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=1},tag=hasChangedSlotDown] at @s run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=1,menuPlayerID=1},tag=hasChangedSlotUp] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=1},tag=hasChangedSlotUp] at @s run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=51},tag=hasChangedSlotDown] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=51},tag=hasChangedSlotDown] at @s run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=51},tag=hasChangedSlotUp] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=51},tag=hasChangedSlotUp] at @s run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=4},tag=hasChangedSlotDown] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=4},tag=hasChangedSlotDown] at @s run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=4},tag=hasChangedSlotUp] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=4},tag=hasChangedSlotUp] at @s run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

# Other players

execute as @s[scores={mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s if block ~0.4999 54 ~ minecraft:jungle_planks run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1

execute as @s[scores={mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s if block ~-0.4999 54 ~ minecraft:light_blue_wool run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

# Mouse scroll
execute as @s[scores={mainMenuState=1,menuPlayerID=2..},tag=hasChangedSlotDown] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=0}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=2..},tag=hasChangedSlotDown] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s run scoreboard players add @s[scores={selectCurrent=0}] selectCurrent 1

execute as @s[scores={mainMenuState=1,menuPlayerID=2..},tag=hasChangedSlotUp] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s run playsound minecraft:ui.button.click master @s[scores={selectCurrent=1}] ~ ~ ~ 0.5 1 0.5
execute as @s[scores={mainMenuState=1,menuPlayerID=2..},tag=hasChangedSlotUp] if entity @p[scores={menuPlayerID=1,mainMenuState=50..}] at @s run scoreboard players remove @s[scores={selectCurrent=1}] selectCurrent 1


# Sometimes a glitch causes the levitation effect to break and function oddly. This fixes that
execute store result score @s tmp run data get entity @s Pos[1] 1000
execute as @s[scores={tmp=60001..}] run effect clear @s levitation



# Lock rotation

# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity @s Rotation[0] 1000
execute unless score @s tmp matches 0 run tag @s add lookTP
execute store result score @s tmp run data get entity @s Rotation[1] 1000
execute unless score @s tmp matches 90000 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute positioned -1000 60 -26 as @s[distance=0.0001..] run tag @s add lookTP
execute as @s[tag=lookTP,scores={menuPlayerID=1}] run tp @s -1000 60 -26 0 90
execute as @s[tag=lookTP,scores={menuPlayerID=2}] run tp @s -1006 60 -26 0 90
execute as @s[tag=lookTP,scores={menuPlayerID=3}] run tp @s -1000 60 -32 0 90
execute as @s[tag=lookTP,scores={menuPlayerID=4}] run tp @s -1006 60 -32 0 90
tag @s[tag=lookTP] remove lookTP

# effects
effect give @s minecraft:levitation 10 255 true
tag @s add isLevitating
effect give @s minecraft:invisibility 10 1 true



# Stage 0
execute as @s[tag=hasPressedF,scores={mainMenuState=0,animTest=-10}] run tag @s add selectGamemode
execute as @s[tag=selectGamemode] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=selectGamemode] run tag @s add showMainMenuControls
execute as @s[tag=selectGamemode] run tag @s remove hasPressedF
execute as @s[tag=selectGamemode] run scoreboard players set @s mainMenuState 1
execute as @s[tag=selectGamemode] run tag @s remove selectGamemode

# Start singleplayer
execute as @s[tag=hasPressedF,scores={mainMenuState=12,animTest=30},tag=isStartingSingleplayerGame] run tag @s add initSinglePlayer

execute as @s[tag=initSinglePlayer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=initSinglePlayer] run tag @s remove mainMenu
execute as @s[tag=initSinglePlayer] run bossbar set minecraft:mainmenu1 players @a[tag=mainMenu]
execute as @s[tag=initSinglePlayer] run bossbar set minecraft:mainmenu2 players @a[tag=mainMenu]
execute as @s[tag=initSinglePlayer] run bossbar set minecraft:mainmenu3 players @a[tag=mainMenu]
execute as @s[tag=initSinglePlayer] run tag @s remove inMainMenu
execute as @s[tag=initSinglePlayer] run tag @s remove setupSingleplayer
execute as @s[tag=initSinglePlayer] run tag @s remove showMainMenuControls
execute as @s[tag=initSinglePlayer] run function hp:setup/add_as_player1
execute as @s[tag=initSinglePlayer] run scoreboard players set @s overrideRespawn 1
execute as @s[tag=initSinglePlayer] run tag @s add doNotSaveStartingLocation
execute as @s[tag=initSinglePlayer] run tag @s add doNotControlPlayerLocation
execute as @s[tag=initSinglePlayer] run scoreboard players set @s cutSceneID 6
execute as @s[tag=initSinglePlayer] run tag @s add cutsceneMaster
execute as @s[tag=initSinglePlayer] run tag @s add cutsceneSlave
execute as @s[tag=initSinglePlayer] run function hp:cutscenes/init_cutscene
execute as @s[tag=initSinglePlayer] run tag @s add doNotPlayAmbience
execute as @s[tag=initSinglePlayer] run tag @s remove isStartingSingleplayerGame
execute as @s[tag=initSinglePlayer] run scoreboard players set global mainMenuState 1
execute as @s[tag=initSinglePlayer] run tag @s remove initSinglePlayer

# Start multiplayer
execute as @s[tag=hasPressedF,scores={mainMenuState=12,animTest=30},tag=isStartingMultiplayerGame] run tag @s add waitingToInitMultiplayer
execute as @s[tag=hasPressedF,scores={mainMenuState=12,animTest=30},tag=isStartingMultiplayerGame] unless entity @p[scores={mainMenuState=2..11}] run tag @a[tag=waitingToInitMultiplayer] add initMultiPlayer

execute as @s[tag=initMultiPlayer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=initMultiPlayer] run tag @s remove mainMenu
execute as @s[tag=initMultiPlayer] run bossbar set minecraft:mainmenu1 players @a[tag=mainMenu]
execute as @s[tag=initMultiPlayer] run bossbar set minecraft:mainmenu2 players @a[tag=mainMenu]
execute as @s[tag=initMultiPlayer] run bossbar set minecraft:mainmenu3 players @a[tag=mainMenu]
execute as @s[tag=initMultiPlayer] run tag @s remove inMainMenu
execute as @s[tag=initMultiPlayer] run tag @s remove setupSingleplayer
execute as @s[tag=initMultiPlayer] run tag @s remove showMainMenuControls
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=1}] run function hp:setup/add_as_player1
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=2}] run function hp:setup/add_as_player2
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=3}] run function hp:setup/add_as_player3
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=4}] run function hp:setup/add_as_player4
execute as @s[tag=initMultiPlayer] run scoreboard players set @s overrideRespawn 1
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=1}] run tag @s add doNotSaveStartingLocation
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=1}] run tag @s add doNotControlPlayerLocation
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=1}] run tag @s add cutsceneMaster
execute as @s[tag=initMultiPlayer,scores={menuPlayerID=1..4}] run scoreboard players set @s cutSceneID 6
execute as @s[tag=initMultiPlayer] run tag @s add cutsceneSlave
execute as @s[tag=initMultiPlayer] run function hp:cutscenes/init_cutscene
execute as @s[tag=initMultiPlayer] run tag @s add doNotPlayAmbience
execute as @s[tag=initMultiPlayer] run tag @s remove playerIsJoined
execute as @s[tag=initMultiPlayer] run tag @s remove waitingToInitMultiplayer
execute as @s[tag=initMultiPlayer] run tag @s remove isStartingMultiplayerGame
execute as @s[tag=initMultiPlayer] run scoreboard players set global mainMenuState 1
execute as @s[tag=initMultiPlayer] run tag @s remove initMultiPlayer



# Setup
execute as @s[tag=hasPressedF,scores={mainMenuState=4,animTest=30,selectCurrent=0}] run tag @s remove AMDgraphicsCard
execute as @s[tag=hasPressedF,scores={mainMenuState=4,animTest=30,selectCurrent=1}] run tag @s add AMDgraphicsCard

execute as @s[tag=hasPressedF,scores={mainMenuState=2..11,animTest=30}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=hasPressedF,scores={mainMenuState=2..11,animTest=30}] run scoreboard players add @s mainMenuState 1

execute as @s[tag=hasPressedF,scores={mainMenuState=49,animTest=30}] run tag @s add hasContinuedFromMultiplayerWarning
execute as @s[tag=hasContinuedFromMultiplayerWarning] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=hasContinuedFromMultiplayerWarning] run scoreboard players add @s mainMenuState 1
execute as @s[tag=hasContinuedFromMultiplayerWarning] run tag @s remove hasPressedF
execute as @s[tag=hasContinuedFromMultiplayerWarning] run tag @s remove hasContinuedFromMultiplayerWarning

# Singleplayer
execute as @s[tag=hasPressedF,scores={selectCurrent=0,mainMenuState=1,menuPlayerID=1}] run tag @s add selectSingleplayer
execute as @s[tag=selectSingleplayer] run scoreboard players set @s animTest 0
execute as @s[tag=selectSingleplayer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=selectSingleplayer] run title @s clear
execute as @s[tag=selectSingleplayer] run scoreboard players set @s mainMenuState 2
execute as @s[tag=selectSingleplayer] run tag @s add isStartingSingleplayerGame
execute as @s[tag=selectSingleplayer] run tag @s remove hasPressedF
execute as @s[tag=selectSingleplayer] run tag @s remove selectSingleplayer

# Multiplayer
execute as @s[tag=hasPressedF,scores={selectCurrent=1,mainMenuState=1,menuPlayerID=1}] run tag @s add selectMultiplayer
execute as @s[tag=selectMultiplayer] at @s run scoreboard players set @s animTest 0
execute as @s[tag=selectMultiplayer] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=selectMultiplayer] run title @s clear
execute as @s[tag=selectMultiplayer] run tag @s add playerIsJoined
execute as @s[tag=selectMultiplayer] run scoreboard players set @s mainMenuState 49
execute as @s[tag=selectMultiplayer] run tag @s remove hasPressedF
execute as @s[tag=selectMultiplayer] run tag @s remove selectMultiplayer


# start multiplayer game
execute as @s[tag=hasPressedF,scores={mainMenuState=50,menuPlayerID=1}] run tag @s add startMultiplayerGame
execute as @s[tag=startMultiplayerGame] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=startMultiplayerGame] run scoreboard players set @s selectCurrent 0
execute as @s[tag=startMultiplayerGame] run scoreboard players set @s mainMenuState 51
execute as @s[tag=startMultiplayerGame] run tag @s remove hasPressedF
execute as @s[tag=startMultiplayerGame] run tag @s remove startMultiplayerGame

# Cancel start multiplayer game
execute as @s[tag=hasPressedF,scores={selectCurrent=1,mainMenuState=51,menuPlayerID=1}] run tag @s add cancelMultiplayergame
execute as @s[tag=cancelMultiplayergame] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=cancelMultiplayergame] run scoreboard players set @s selectCurrent 0
execute as @s[tag=cancelMultiplayergame] run scoreboard players set @s mainMenuState 50
execute as @s[tag=cancelMultiplayergame] run tag @s remove hasPressedF
execute as @s[tag=cancelMultiplayergame] run tag @s remove cancelMultiplayergame

# Confirm start multiplayer game
execute as @s[tag=hasPressedF,scores={selectCurrent=0,mainMenuState=51,menuPlayerID=1}] run tag @s add confirmMultiplayerGame
execute as @s[tag=confirmMultiplayerGame] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=confirmMultiplayerGame] run scoreboard players set @s selectCurrent 0
execute as @s[tag=confirmMultiplayerGame] run scoreboard players set @a[tag=playerIsJoined] mainMenuState 2
execute as @s[tag=confirmMultiplayerGame] run tag @a[tag=playerIsJoined] add isStartingMultiplayerGame
execute as @s[tag=confirmMultiplayerGame] run tag @s remove hasPressedF
execute as @s[tag=confirmMultiplayerGame] run tag @s remove confirmMultiplayerGame

# Join
execute if score global mainMenuState matches 0 as @s[tag=hasPressedF,scores={selectCurrent=0,mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=20..}] run tag @s add joinGame
execute as @s[tag=joinGame] run scoreboard players set @s animTest 0
execute as @s[tag=joinGame] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=joinGame] run title @s clear
execute as @s[tag=joinGame] run tag @s add playerIsJoined
execute as @s[tag=joinGame] run scoreboard players set @s mainMenuState 50
execute as @s[tag=joinGame] run tag @s remove hasPressedF
execute as @s[tag=joinGame] run tag @s remove joinGame

#########
# Shift #
#########
execute as @s[tag=isSneaking,scores={mainMenuState=51,shiftTest=1}] run tag @s add backStartMultiplayerGame
execute as @s[tag=backStartMultiplayerGame] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.65 0.5
execute as @s[tag=backStartMultiplayerGame] run scoreboard players set @s mainMenuState 50
execute as @s[tag=backStartMultiplayerGame] run scoreboard players set @s selectCurrent 0
execute as @s[tag=backStartMultiplayerGame] run tag @s remove isSneaking
execute as @s[tag=backStartMultiplayerGame] run tag @s remove backStartMultiplayerGame

execute as @s[tag=isSneaking,scores={mainMenuState=3..15,shiftTest=1},tag=!initMultiplayer] run tag @s add backSetup
execute as @s[tag=backSetup] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.65 0.5
execute as @s[tag=backSetup] run scoreboard players remove @s mainMenuState 1
execute as @s[tag=backSetup] run scoreboard players set @s selectCurrent 0
execute as @s[tag=backSetup] run tag @s remove waitingToInitMultiplayer
execute as @s[tag=backSetup] run tag @s remove isSneaking
execute as @s[tag=backSetup] run tag @s remove backSetup




########
# Draw #
########
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=!showMainMenuControls] hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:32}

execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}
execute unless entity @s[scores={animTest=30,mainMenuState=2..}] run replaceitem entity @s[tag=showMainMenuControls] hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,Damage:31}

# Fade in
scoreboard players remove @s[scores={animTest=-9..,mainMenuState=0}] animTest 1
scoreboard players add @s[scores={animTest=..29,mainMenuState=2..}] animTest 1
execute if score @s mainMenuState matches 4 run replaceitem entity @s[scores={animTest=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{Damage:32}}]}] weapon.offhand minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:32,fDetect:1b}
execute if score @s mainMenuState matches 4 run effect give @s minecraft:night_vision 10 1 true
execute if score @s mainMenuState matches 4 run effect give @s minecraft:blindness 10 1 true
execute if score @s mainMenuState matches 4 as @s[scores={menuPlayerID=1}] run data merge entity @e[tag=AMDdetectP1,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1292}}]}
execute if score @s mainMenuState matches 4 as @s[scores={menuPlayerID=2}] run data merge entity @e[tag=AMDdetectP2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1292}}]}
execute if score @s mainMenuState matches 4 as @s[scores={menuPlayerID=3}] run data merge entity @e[tag=AMDdetectP3,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1292}}]}
execute if score @s mainMenuState matches 4 as @s[scores={menuPlayerID=4}] run data merge entity @e[tag=AMDdetectP4,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1292}}]}
execute unless score @s mainMenuState matches 4 as @s[scores={menuPlayerID=1}] run data merge entity @e[tag=AMDdetectP1,limit=1] {ArmorItems:[{},{},{},{}]}
execute unless score @s mainMenuState matches 4 as @s[scores={menuPlayerID=2}] run data merge entity @e[tag=AMDdetectP2,limit=1] {ArmorItems:[{},{},{},{}]}
execute unless score @s mainMenuState matches 4 as @s[scores={menuPlayerID=3}] run data merge entity @e[tag=AMDdetectP3,limit=1] {ArmorItems:[{},{},{},{}]}
execute unless score @s mainMenuState matches 4 as @s[scores={menuPlayerID=4}] run data merge entity @e[tag=AMDdetectP4,limit=1] {ArmorItems:[{},{},{},{}]}
execute unless score @s mainMenuState matches 4 run effect clear @s minecraft:night_vision
execute unless score @s mainMenuState matches 4 run effect clear @s minecraft:blindness
execute unless score @s mainMenuState matches 4 run replaceitem entity @s[scores={animTest=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:32}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:32,fDetect:1b}
replaceitem entity @s[scores={animTest=19},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:31}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:31,fDetect:1b}
replaceitem entity @s[scores={animTest=18},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:30}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:30,fDetect:1b}
replaceitem entity @s[scores={animTest=17},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:29}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:29,fDetect:1b}
replaceitem entity @s[scores={animTest=16},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:28}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:28,fDetect:1b}
replaceitem entity @s[scores={animTest=15},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:27}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:27,fDetect:1b}
replaceitem entity @s[scores={animTest=14},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:26}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:26,fDetect:1b}
replaceitem entity @s[scores={animTest=13},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:25}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:25,fDetect:1b}
replaceitem entity @s[scores={animTest=12},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:24}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:24,fDetect:1b}
replaceitem entity @s[scores={animTest=11},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:23}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:23,fDetect:1b}
replaceitem entity @s[scores={animTest=10},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:22}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:22,fDetect:1b}
replaceitem entity @s[scores={animTest=9},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:21}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:21,fDetect:1b}
replaceitem entity @s[scores={animTest=8},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:20}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:20,fDetect:1b}
replaceitem entity @s[scores={animTest=7},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:19}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:19,fDetect:1b}
replaceitem entity @s[scores={animTest=6},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:18}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:18,fDetect:1b}
replaceitem entity @s[scores={animTest=5},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:17}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:17,fDetect:1b}
replaceitem entity @s[scores={animTest=4},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:16}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:16,fDetect:1b}
replaceitem entity @s[scores={animTest=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:15}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:15,fDetect:1b}
replaceitem entity @s[scores={animTest=..2},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{Damage:32}}]}] weapon.offhand minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Unbreakable:1,Damage:32,fDetect:1b}



# Setup
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=2}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:30,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=3}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:29,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}


# AMD detection
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=0}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:6,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=4,selectCurrent=1}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:7,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=5}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:26,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=6}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:27,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=7}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:1,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=8}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:3,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=9}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:2,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=10}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:28,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=11}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:5,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=!waitingToInitMultiplayer] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:25,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=12},tag=waitingToInitMultiplayer] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:16,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

# Multiplayer
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=49,menuPlayerID=1}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:0,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 1 run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:24,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 2 run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:23,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 3 run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:22,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 4 run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:21,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=1}] if score global joinedPlayers matches 5.. run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:20,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=50,menuPlayerID=2..}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

# Are you sure you want to start yet?
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=0}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:19,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=51,selectCurrent=1}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:18,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}


execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=60}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:17,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}

# Cleanup
tag @s remove hasChangedSlot
tag @s remove hasChangedSlotUp
tag @s remove hasChangedSlotDown


# Wrong version
execute as @s[tag=!inWrongVersion] run function hp:version_test/version_test
execute as @s[tag=wrongVersion] run scoreboard players set @s animTest 0
execute as @s[tag=wrongVersion] run title @s clear
execute as @s[tag=wrongVersion] run scoreboard players set @s mainMenuState 1000
execute as @s[tag=wrongVersion] run tag @s add isStartingSingleplayerGame
execute as @s[tag=wrongVersion] run tag @s remove wrongVersion

execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.0 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.1 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.2 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.3 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.5 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.6 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.7 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}
execute as @s[scores={animTest=30,mainMenuState=1000}] run replaceitem entity @s hotbar.8 minecraft:golden_axe{display:{Name:"{\"text\":\" \"}"},Damage:4,Unbreakable:1b,qDetect:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],HideFlags:63}


# Spectate
execute if score global mainMenuState matches 0 as @s[tag=hasPressedF,scores={mainMenuState=1,menuPlayerID=2..}] if entity @p[scores={menuPlayerID=1,mainMenuState=2..15}] run tag @s add joinAsSpectator
execute if score global mainMenuState matches 1 as @s[tag=hasPressedF,scores={mainMenuState=1,menuPlayerID=2..}] run tag @s add joinAsSpectator
execute as @s[tag=joinAsSpectator] run clear @s
execute as @s[tag=joinAsSpectator] run title @s clear
execute as @s[tag=joinAsSpectator] run gamemode creative
execute as @s[tag=joinAsSpectator] run tag @s add spectate
execute as @s[tag=joinAsSpectator] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.75 0.75 0.5
execute as @s[tag=joinAsSpectator] run tag @s remove mainMenu
execute as @s[tag=joinAsSpectator] run bossbar set minecraft:mainmenu1 players @a[tag=mainMenu]
execute as @s[tag=joinAsSpectator] run bossbar set minecraft:mainmenu2 players @a[tag=mainMenu]
execute as @s[tag=joinAsSpectator] run bossbar set minecraft:mainmenu3 players @a[tag=mainMenu]
execute as @s[tag=joinAsSpectator] run tag @s remove inMainMenu
execute as @s[tag=joinAsSpectator] run tag @s remove setupSingleplayer
execute as @s[tag=joinAsSpectator] run tag @s remove showMainMenuControls
execute as @s[tag=joinAsSpectator] run tag @s remove playerIsJoined
execute as @s[tag=joinAsSpectator] run scoreboard players set @s menuPlayerID 0
execute as @s[tag=joinAsSpectator] run tp @s 2310.30 80.00 -785.79 -144.25 31.28
execute as @s[tag=joinAsSpectator] run tag @s remove hasPressedF
execute as @s[tag=joinAsSpectator] run tag @s remove joinAsSpectator