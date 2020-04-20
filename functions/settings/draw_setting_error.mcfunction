scoreboard players add @s InvItemNumber 1
execute unless score @s convState matches 1 run scoreboard players add @s convMaxView 1

execute as @e[tag=inventoryOption] if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption

scoreboard players operation @e[tag=focusInventoryOption,limit=1] InvItemID = @s InvItemID


# Locations
##############################
#         Options            #
##############################

#  Close Settings
execute if entity @s[scores={InvItemID=-1}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Закрыть Настройки\",\"color\":\"dark_gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-1}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Закрыть Настройки\",\"color\":\"gray\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Respawn
execute if entity @s[scores={InvItemID=-2}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Возрождение\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-2}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Возрождение\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Credits
execute if entity @s[scores={InvItemID=-3}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Титры\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-3}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Титры\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Setup Guide
execute if entity @s[scores={InvItemID=-4}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Гайд по настройке интерфейса\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-4}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Гайд по настройке интерфейса\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Change Lumos effect
execute if entity @s[scores={InvItemID=-5},tag=!AMDgraphicsCard] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Эффект Люмос: Продвинутый\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-5},tag=!AMDgraphicsCard] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Эффект Люмос: Продвинутый\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}
execute if entity @s[scores={InvItemID=-5},tag=AMDgraphicsCard] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Эффект Люмос: Простой (для AMD)\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-5},tag=AMDgraphicsCard] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Эффект Люмос: Простой (для AMD)\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Remove glow effect
execute if entity @s[scores={InvItemID=-6}] unless score noGlowEffect global matches 1 as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\""Эффект свечения": Включен\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-6}] unless score noGlowEffect global matches 1 as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Эффект свечения": Включен\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}
execute if entity @s[scores={InvItemID=-6}] if score noGlowEffect global matches 1 as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Эффект свечения": Выключен (для Шейдеров)\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-6}] if score noGlowEffect global matches 1 as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Эффект свечения": Выключен (для Шейдеров)\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Exit Playmode and Explore
execute if entity @s[scores={InvItemID=-7}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Выйти из режима прохождения\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-7}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Выйти из режима прохождения\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Reset game
execute if entity @s[scores={InvItemID=-8}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Сбросить игры\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-8}] as @e[tag=focusInventoryOption,limit=1,tag=selected] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Сбросить игру\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#################################
#            Credits            #
#################################

# 1
execute if entity @s[scores={InvItemID=1}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Created by:\",\"color\":\"white\"}]"}
# 2
execute if entity @s[scores={InvItemID=2}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wednesday Frog and Tacocat\",\"color\":\"gray\"}]"}
# 3
execute if entity @s[scores={InvItemID=3}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 4
execute if entity @s[scores={InvItemID=4}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Modelers:\",\"color\":\"white\"}]"}
# 5
execute if entity @s[scores={InvItemID=5}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wacky\",\"color\":\"gray\"}]"}
# 6
execute if entity @s[scores={InvItemID=6}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"RedstoneMvv\",\"color\":\"gray\"}]"}
# 7
execute if entity @s[scores={InvItemID=7}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wednesday Frog\",\"color\":\"gray\"}]"}
# 8
execute if entity @s[scores={InvItemID=8}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 9
execute if entity @s[scores={InvItemID=9}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Game design and commands:\",\"color\":\"white\"}]"}
# 10
execute if entity @s[scores={InvItemID=10}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Tacocat\",\"color\":\"gray\"}]"}
# 11
execute if entity @s[scores={InvItemID=11}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 12
execute if entity @s[scores={InvItemID=12}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Building:\",\"color\":\"white\"}]"}
# 13
execute if entity @s[scores={InvItemID=13}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wednesday Frog\",\"color\":\"gray\"}]"}
# 14
execute if entity @s[scores={InvItemID=14}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"With help from\",\"color\":\"white\"}]"}
# 15
execute if entity @s[scores={InvItemID=15}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Barteldvn\",\"color\":\"gray\"}]"}
# 16
execute if entity @s[scores={InvItemID=16}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Aendrel\",\"color\":\"gray\"}]"}
# 17
execute if entity @s[scores={InvItemID=17}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Also Thanks to:\",\"color\":\"white\"}]"}
# 18
execute if entity @s[scores={InvItemID=18}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Dark_Knight_2013\",\"color\":\"gray\"}]"}
# 19
execute if entity @s[scores={InvItemID=19}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Khongen\",\"color\":\"gray\"}]"}
# 20
execute if entity @s[scores={InvItemID=20}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Firehead313\",\"color\":\"gray\"}]"}
# 21
execute if entity @s[scores={InvItemID=21}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Paulverized\",\"color\":\"gray\"}]"}
# 22
execute if entity @s[scores={InvItemID=22}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"iiJam\",\"color\":\"gray\"}]"}
# 23
execute if entity @s[scores={InvItemID=23}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 24
execute if entity @s[scores={InvItemID=24}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Custom music by:\",\"color\":\"white\"}]"}
# 25
execute if entity @s[scores={InvItemID=25}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Collin Brefka\",\"color\":\"gray\"}]"}
# 26
execute if entity @s[scores={InvItemID=26}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Extra tracks by Kevin Macleod\",\"color\":\"gray\"}]"}
# 27
execute if entity @s[scores={InvItemID=27}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 28
execute if entity @s[scores={InvItemID=28}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Discord Moderators:\",\"color\":\"white\"}]"}
# 29
execute if entity @s[scores={InvItemID=29}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"ModdingArt\",\"color\":\"gray\"}]"}
# 30
execute if entity @s[scores={InvItemID=30}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Swampy\",\"color\":\"gray\"}]"}
# 31
execute if entity @s[scores={InvItemID=31}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"FoxOnTheRun\",\"color\":\"gray\"}]"}
# 32
execute if entity @s[scores={InvItemID=32}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"AviiNL\",\"color\":\"gray\"}]"}
# 33
execute if entity @s[scores={InvItemID=33}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Stefan 'RetardSnow' Koolhaas\",\"color\":\"gray\"}]"}
# 34
execute if entity @s[scores={InvItemID=34}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Arch\",\"color\":\"gray\"}]"}
# 35
execute if entity @s[scores={InvItemID=35}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Stone_Golem\",\"color\":\"gray\"}]"}
# 36
execute if entity @s[scores={InvItemID=36}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"IkJurre\",\"color\":\"gray\"}]"}
# 37
execute if entity @s[scores={InvItemID=37}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Jasper { ShotCode }\",\"color\":\"gray\"}]"}
# 38
execute if entity @s[scores={InvItemID=38}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Dan\",\"color\":\"gray\"}]"}
# 39
execute if entity @s[scores={InvItemID=39}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Therid\",\"color\":\"gray\"}]"}
# 40
execute if entity @s[scores={InvItemID=40}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Tim\",\"color\":\"gray\"}]"}
# 41
execute if entity @s[scores={InvItemID=41}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"08TheMadLord80\",\"color\":\"gray\"}]"}
# 42
execute if entity @s[scores={InvItemID=42}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 43
execute if entity @s[scores={InvItemID=43}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Diagon Alley Door by:\",\"color\":\"white\"}]"}
# 44
execute if entity @s[scores={InvItemID=44}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Boe6\",\"color\":\"gray\"}]"}
# 45
execute if entity @s[scores={InvItemID=45}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 46
execute if entity @s[scores={InvItemID=46}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Thanks to TamrielCraft for allowing us to use and\",\"color\":\"white\"}]"}
# 47
execute if entity @s[scores={InvItemID=47}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"modify one of their dungeons. Check out their project!\",\"color\":\"white\"}]"}
# 48
execute if entity @s[scores={InvItemID=48}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 49
execute if entity @s[scores={InvItemID=49}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Also thanks to:\",\"color\":\"white\"}]"}
# 50
execute if entity @s[scores={InvItemID=50}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Paperbot\",\"color\":\"gray\"}]"}
# 51
execute if entity @s[scores={InvItemID=51}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"FoxOnTheRun\",\"color\":\"gray\"}]"}
# 52
execute if entity @s[scores={InvItemID=52}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Vahl\",\"color\":\"gray\"}]"}
# 53
execute if entity @s[scores={InvItemID=53}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Therid\",\"color\":\"gray\"}]"}
# 54
execute if entity @s[scores={InvItemID=54}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"08TheMadLord80\",\"color\":\"gray\"}]"}
# 55
execute if entity @s[scores={InvItemID=55}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Jiskpirate\",\"color\":\"gray\"}]"}
# 56
execute if entity @s[scores={InvItemID=56}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Jasper {ShotCode}\",\"color\":\"gray\"}]"}
# 57
execute if entity @s[scores={InvItemID=57}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"EliTheUseless\",\"color\":\"gray\"}]"}
# 58
execute if entity @s[scores={InvItemID=58}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Saiiisuke\",\"color\":\"gray\"}]"}
# 59
execute if entity @s[scores={InvItemID=59}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Mailmemojo\",\"color\":\"gray\"}]"}
# 60
execute if entity @s[scores={InvItemID=60}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Dippy\",\"color\":\"gray\"}]"}
# 61
execute if entity @s[scores={InvItemID=61}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Scottheo\",\"color\":\"gray\"}]"}
# 62
execute if entity @s[scores={InvItemID=62}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Soccerguy\",\"color\":\"gray\"}]"}
# 63
execute if entity @s[scores={InvItemID=63}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"ViridityCorn\",\"color\":\"gray\"}]"}
# 64
execute if entity @s[scores={InvItemID=64}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wolfeh\",\"color\":\"gray\"}]"}
# 65
execute if entity @s[scores={InvItemID=65}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Ikjurre\",\"color\":\"gray\"}]"}
# 66
execute if entity @s[scores={InvItemID=66}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"!Noax!\",\"color\":\"gray\"}]"}
# 67
execute if entity @s[scores={InvItemID=67}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Antrelial\",\"color\":\"gray\"}]"}
# 68
execute if entity @s[scores={InvItemID=68}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"MarceauNK\",\"color\":\"gray\"}]"}
# 69
execute if entity @s[scores={InvItemID=69}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Normerca\",\"color\":\"gray\"}]"}
# 70
execute if entity @s[scores={InvItemID=70}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Fryd\",\"color\":\"gray\"}]"}
# 71
execute if entity @s[scores={InvItemID=71}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Pocketomi\",\"color\":\"gray\"}]"}
# 72
execute if entity @s[scores={InvItemID=72}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"ThePhantomEye\",\"color\":\"gray\"}]"}
# 73
execute if entity @s[scores={InvItemID=73}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Wallace\",\"color\":\"gray\"}]"}
# 74
execute if entity @s[scores={InvItemID=74}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"ModdingArt\",\"color\":\"gray\"}]"}
# 75
execute if entity @s[scores={InvItemID=75}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 76
execute if entity @s[scores={InvItemID=76}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Original Floo Network:\",\"color\":\"white\"}]"}
# 77
execute if entity @s[scores={InvItemID=77}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"WednesdayFrog\",\"color\":\"gray\"}]"}
# 78
execute if entity @s[scores={InvItemID=78}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Handblood\",\"color\":\"gray\"}]"}
# 79
execute if entity @s[scores={InvItemID=79}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Mooryee\",\"color\":\"gray\"}]"}
# 80
execute if entity @s[scores={InvItemID=80}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Tacocat\",\"color\":\"gray\"}]"}
# 81
execute if entity @s[scores={InvItemID=81}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Alexon\",\"color\":\"gray\"}]"}
# 82
execute if entity @s[scores={InvItemID=82}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 83
execute if entity @s[scores={InvItemID=83}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Patreon Supporters:\",\"color\":\"white\"}]"}
# 84
execute if entity @s[scores={InvItemID=84}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Mad lads:\",\"color\":\"white\"}]"}
# 85
execute if entity @s[scores={InvItemID=85}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"linkthebest100\",\"color\":\"gray\"}]"}
# 86
execute if entity @s[scores={InvItemID=86}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Stefan 'RetardSnow' Koolhaas\",\"color\":\"gray\"}]"}
# 87
execute if entity @s[scores={InvItemID=87}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Krronos\",\"color\":\"gray\"}]"}
# 88
execute if entity @s[scores={InvItemID=88}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"08TheMadLord80\",\"color\":\"gray\"}]"}
# 89
execute if entity @s[scores={InvItemID=89}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Carson\",\"color\":\"gray\"}]"}
# 90
execute if entity @s[scores={InvItemID=90}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Sebastianpc\",\"color\":\"gray\"}]"}
# 91
execute if entity @s[scores={InvItemID=91}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Master Panda\",\"color\":\"gray\"}]"}
# 92
execute if entity @s[scores={InvItemID=92}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Genji\",\"color\":\"gray\"}]"}
# 93
execute if entity @s[scores={InvItemID=93}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"MagicMage1238\",\"color\":\"gray\"}]"}
# 94
execute if entity @s[scores={InvItemID=94}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Square Gravy\",\"color\":\"gray\"}]"}
# 95
execute if entity @s[scores={InvItemID=95}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"MisterInc\",\"color\":\"gray\"}]"}
# 96
execute if entity @s[scores={InvItemID=96}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"TheLumberjackJeff\",\"color\":\"gray\"}]"}
# 97
execute if entity @s[scores={InvItemID=97}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Floo sponsors:\",\"color\":\"white\"}]"}
# 98
execute if entity @s[scores={InvItemID=98}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Jeffrey Stoner\",\"color\":\"gray\"}]"}
# 99
execute if entity @s[scores={InvItemID=99}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"IceColdGenitals\",\"color\":\"gray\"}]"}
# 100
execute if entity @s[scores={InvItemID=100}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Stone_Golem\",\"color\":\"gray\"}]"}
# 101
execute if entity @s[scores={InvItemID=101}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"IzzieMizzen\",\"color\":\"gray\"}]"}
# 102
execute if entity @s[scores={InvItemID=102}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"James Keen\",\"color\":\"gray\"}]"}
# 103
execute if entity @s[scores={InvItemID=103}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Gilded Turtle\",\"color\":\"gray\"}]"}
# 104
execute if entity @s[scores={InvItemID=104}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"NickPlays782\",\"color\":\"gray\"}]"}
# 105
execute if entity @s[scores={InvItemID=105}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"BergLinQ\",\"color\":\"gray\"}]"}
# 106
execute if entity @s[scores={InvItemID=106}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Doomdots\",\"color\":\"gray\"}]"}
# 107
execute if entity @s[scores={InvItemID=107}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"SimonsterLP\",\"color\":\"gray\"}]"}
# 108
execute if entity @s[scores={InvItemID=108}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Vipertoo\",\"color\":\"gray\"}]"}
# 109
execute if entity @s[scores={InvItemID=109}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Superdragon\",\"color\":\"gray\"}]"}
# 110
execute if entity @s[scores={InvItemID=110}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Psoof\",\"color\":\"gray\"}]"}
# 111
execute if entity @s[scores={InvItemID=111}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Mr Walrusman\",\"color\":\"gray\"}]"}
# 112
execute if entity @s[scores={InvItemID=112}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"John Shepard\",\"color\":\"gray\"}]"}
# 113
execute if entity @s[scores={InvItemID=113}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Martin Vavřík\",\"color\":\"gray\"}]"}
# 114
execute if entity @s[scores={InvItemID=114}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Max Grosshandler\",\"color\":\"gray\"}]"}
# 115
execute if entity @s[scores={InvItemID=115}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Rae\",\"color\":\"gray\"}]"}
# 116
execute if entity @s[scores={InvItemID=116}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"SnackTax\",\"color\":\"gray\"}]"}
# 117
execute if entity @s[scores={InvItemID=117}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"RedBush\",\"color\":\"gray\"}]"}
# 118
execute if entity @s[scores={InvItemID=118}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Double\",\"color\":\"gray\"}]"}
# 119
execute if entity @s[scores={InvItemID=119}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"ChrisBCBass\",\"color\":\"gray\"}]"}
# 120
execute if entity @s[scores={InvItemID=120}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Corinne\",\"color\":\"gray\"}]"}
# 121
execute if entity @s[scores={InvItemID=121}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Acanemallard\",\"color\":\"gray\"}]"}
# 122
execute if entity @s[scores={InvItemID=122}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Goose\",\"color\":\"gray\"}]"}
# 123
execute if entity @s[scores={InvItemID=123}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Pantsnake\",\"color\":\"gray\"}]"}
# 124
execute if entity @s[scores={InvItemID=124}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Frunkylady\",\"color\":\"gray\"}]"}
# 125
execute if entity @s[scores={InvItemID=125}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Tom Scott\",\"color\":\"gray\"}]"}
# 126
execute if entity @s[scores={InvItemID=126}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Chuco\",\"color\":\"gray\"}]"}
# 127
execute if entity @s[scores={InvItemID=127}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Skaggs\",\"color\":\"gray\"}]"}
# 128
execute if entity @s[scores={InvItemID=128}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Stafan Tarara\",\"color\":\"gray\"}]"}
# 129
execute if entity @s[scores={InvItemID=129}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Cba\",\"color\":\"gray\"}]"}
# 130
execute if entity @s[scores={InvItemID=130}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Nosoren\",\"color\":\"gray\"}]"}
# 131
execute if entity @s[scores={InvItemID=131}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Eobrah\",\"color\":\"gray\"}]"}
# 132
execute if entity @s[scores={InvItemID=132}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Quartz563\",\"color\":\"gray\"}]"}
# 133
execute if entity @s[scores={InvItemID=133}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Hunter19\",\"color\":\"gray\"}]"}
# 134
execute if entity @s[scores={InvItemID=134}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Syxel\",\"color\":\"gray\"}]"}
# 135
execute if entity @s[scores={InvItemID=135}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"MilesHunter9 [DL]\",\"color\":\"gray\"}]"}
# 136
execute if entity @s[scores={InvItemID=136}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Silverjh\",\"color\":\"gray\"}]"}
# 137
execute if entity @s[scores={InvItemID=137}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"ItsMurio\",\"color\":\"gray\"}]"}
# 138
execute if entity @s[scores={InvItemID=138}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"TheMisterWolf\",\"color\":\"gray\"}]"}
# 139
execute if entity @s[scores={InvItemID=139}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Chefen\",\"color\":\"gray\"}]"}
# 140
execute if entity @s[scores={InvItemID=140}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"NataliaM\",\"color\":\"gray\"}]"}
# 141
execute if entity @s[scores={InvItemID=141}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"sSwSs\",\"color\":\"gray\"}]"}
# 142
execute if entity @s[scores={InvItemID=142}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Fritz\",\"color\":\"gray\"}]"}
# 143
execute if entity @s[scores={InvItemID=143}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"FoxOnTheRun\",\"color\":\"gray\"}]"}
# 144
execute if entity @s[scores={InvItemID=144}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Anton\",\"color\":\"gray\"}]"}
# 145
execute if entity @s[scores={InvItemID=145}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Shadow\",\"color\":\"gray\"}]"}
# 146
execute if entity @s[scores={InvItemID=146}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Mattaku\",\"color\":\"gray\"}]"}
# 147
execute if entity @s[scores={InvItemID=147}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Jss4646\",\"color\":\"gray\"}]"}
# 148
execute if entity @s[scores={InvItemID=148}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Aloncohn\",\"color\":\"gray\"}]"}
# 149
execute if entity @s[scores={InvItemID=149}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Deadweights\",\"color\":\"gray\"}]"}
# 150
execute if entity @s[scores={InvItemID=150}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Flyomotive\",\"color\":\"gray\"}]"}
# 151
execute if entity @s[scores={InvItemID=151}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Dr.Carbon14\",\"color\":\"gray\"}]"}
# 152
execute if entity @s[scores={InvItemID=152}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"KINO_09\",\"color\":\"gray\"}]"}
# 153
execute if entity @s[scores={InvItemID=153}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Pyronym\",\"color\":\"gray\"}]"}
# 154
execute if entity @s[scores={InvItemID=154}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"JubJubLan\",\"color\":\"gray\"}]"}
# 155
execute if entity @s[scores={InvItemID=155}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Swampy\",\"color\":\"gray\"}]"}
# 156
execute if entity @s[scores={InvItemID=156}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Nicole White\",\"color\":\"gray\"}]"}
# 157
execute if entity @s[scores={InvItemID=157}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Xenon75\",\"color\":\"gray\"}]"}
# 158
execute if entity @s[scores={InvItemID=158}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Sunslip\",\"color\":\"gray\"}]"}
# 159
execute if entity @s[scores={InvItemID=159}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"LuifigueroaV23\",\"color\":\"gray\"}]"}
# 160
execute if entity @s[scores={InvItemID=160}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Rent (reece#0001)\",\"color\":\"gray\"}]"}
# 161
execute if entity @s[scores={InvItemID=161}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Danilapon\",\"color\":\"gray\"}]"}
# 162
execute if entity @s[scores={InvItemID=162}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Nitros\",\"color\":\"gray\"}]"}
# 163
execute if entity @s[scores={InvItemID=163}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Reece\",\"color\":\"gray\"}]"}
# 164
execute if entity @s[scores={InvItemID=164}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"BraydenStar\",\"color\":\"gray\"}]"}
# 165
execute if entity @s[scores={InvItemID=165}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Tonarion\",\"color\":\"gray\"}]"}
# 166
execute if entity @s[scores={InvItemID=166}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"UberBASE\",\"color\":\"gray\"}]"}
# 167
execute if entity @s[scores={InvItemID=167}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Juls\",\"color\":\"gray\"}]"}
# 168
execute if entity @s[scores={InvItemID=168}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"                    \",\"color\":\"gray\"},{\"text\":\"Smallbrains\",\"color\":\"gray\"}]"}
# 169
execute if entity @s[scores={InvItemID=169}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 170
execute if entity @s[scores={InvItemID=170}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"This map makes use of trees from packs by:\",\"color\":\"white\"}]"}
# 171
execute if entity @s[scores={InvItemID=171}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Monsterfish_\",\"color\":\"gray\"}]"}
# 172
execute if entity @s[scores={InvItemID=172}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Lentebriesje\",\"color\":\"gray\"}]"}
# 173
execute if entity @s[scores={InvItemID=173}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Keno\",\"color\":\"gray\"}]"}
# 174
execute if entity @s[scores={InvItemID=174}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Mr Wizz\",\"color\":\"gray\"}]"}
# 175
execute if entity @s[scores={InvItemID=175}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"H2CO3\",\"color\":\"gray\"}]"}
# 176
execute if entity @s[scores={InvItemID=176}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 177
execute if entity @s[scores={InvItemID=177}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          \",\"color\":\"gray\"},{\"text\":\"Thanks to the developers of:\",\"color\":\"white\"}]"}
# 178
execute if entity @s[scores={InvItemID=178}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Blockbench\",\"color\":\"gray\"}]"}
# 179
execute if entity @s[scores={InvItemID=179}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"Cubik Studio\",\"color\":\"gray\"}]"}
# 180
execute if entity @s[scores={InvItemID=180}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"World Painter\",\"color\":\"gray\"}]"}
# 181
execute if entity @s[scores={InvItemID=181}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"World Edit\",\"color\":\"gray\"}]"}
# 182
execute if entity @s[scores={InvItemID=182}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"MCEdit\",\"color\":\"gray\"}]"}
# 183
execute if entity @s[scores={InvItemID=183}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"VoxelSniper\",\"color\":\"gray\"}]"}
# 184
execute if entity @s[scores={InvItemID=183}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"},{\"text\":\"NickolaiBorshchov\",\"color\":\"gray\"}]"}
# 185
execute if entity @s[scores={InvItemID=184}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"               \",\"color\":\"gray\"}]"}
# 186
execute if entity @s[scores={InvItemID=185}] as @e[tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"          And finally thanks to you! :)\",\"color\":\"white\"}]"}


scoreboard players set @s InvItemID 0
tag @e[tag=focusInventoryOption,limit=1] remove focusInventoryOption