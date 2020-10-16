# Track selected quest
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=!lockTrackedQuest,tag=!noQuests] if entity @e[type=armor_stand,tag=inventoryOption,tag=selected,tag=isTrackedQuest,limit=1] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 10000 1.6 1
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=!lockTrackedQuest,tag=!noQuests] if entity @e[type=armor_stand,tag=inventoryOption,tag=selected,tag=isTrackedQuest,limit=1] run scoreboard players set @s trackedQuestID 0
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=!lockTrackedQuest,tag=!noQuests] if entity @e[type=armor_stand,tag=inventoryOption,tag=selected,tag=!isTrackedQuest,limit=1] run scoreboard players operation @s trackedQuestID = @s selectQuestID
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=!lockTrackedQuest,tag=!noQuests] if entity @e[type=armor_stand,tag=inventoryOption,tag=selected,tag=!isTrackedQuest,limit=1] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 10000 1.9 1
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=lockTrackedQuest,tag=!noQuests] run title @s times 5 30 5
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=lockTrackedQuest,tag=!noQuests] run title @s title {"text":" "}
execute as @s[scores={questMenu=1},tag=!preventDoubleExecution,tag=lockTrackedQuest,tag=!noQuests] run title @s subtitle {"text":"Вы не можете сейчас изменить отслеживаемый квест","bold":false,"color":"red"}


# Select Menus
execute as @s[scores={selectSecondary=1,questMenu=0},tag=!preventDoubleExecution] store success score @s viewChanged run tag @s add enterQuestMenu1
execute as @s[tag=enterQuestMenu1] run scoreboard players set @s selectCurrent 1
execute as @s[tag=enterQuestMenu1] run scoreboard players set @s selectSecondary 1
execute as @s[tag=enterQuestMenu1] run scoreboard players set @s questMenu 1
execute as @s[tag=enterQuestMenu1] run scoreboard players set @s InvScroll 0
execute as @s[tag=enterQuestMenu1] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=enterQuestMenu1] run tag @s remove enterQuestMenu1

execute as @s[scores={selectSecondary=2,questMenu=0},tag=!preventDoubleExecution] store success score @s viewChanged run tag @s add enterQuestMenu2
execute as @s[tag=enterQuestMenu2] run scoreboard players set @s selectCurrent 1
execute as @s[tag=enterQuestMenu2] run scoreboard players set @s selectSecondary 1
execute as @s[tag=enterQuestMenu2] run scoreboard players set @s questMenu 2
execute as @s[tag=enterQuestMenu2] run scoreboard players set @s InvScroll 0
execute as @s[tag=enterQuestMenu2] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=enterQuestMenu2] run tag @s remove enterQuestMenu2

execute as @s[scores={selectSecondary=3,questMenu=0},tag=!preventDoubleExecution] store success score @s viewChanged run tag @s add enterQuestMenu3
execute as @s[tag=enterQuestMenu3	] run scoreboard players set @s selectCurrent 1
execute as @s[tag=enterQuestMenu3] run scoreboard players set @s selectSecondary 1
execute as @s[tag=enterQuestMenu3] run scoreboard players set @s questMenu 3
execute as @s[tag=enterQuestMenu3] run scoreboard players set @s InvScroll 0
execute as @s[tag=enterQuestMenu3] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=enterQuestMenu3] run tag @s remove enterQuestMenu3

tag @s[tag=preventDoubleExecution] remove preventDoubleExecution