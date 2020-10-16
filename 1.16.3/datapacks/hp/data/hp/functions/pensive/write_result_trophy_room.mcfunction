# Determine best time for all players, not just individually
scoreboard players operation lumosBestTime global < fastestLumosPensiveTimer p1Quests
scoreboard players operation lumosBestTime global < fastestLumosPensiveTimer p2Quests
scoreboard players operation lumosBestTime global < fastestLumosPensiveTimer p3Quests
scoreboard players operation lumosBestTime global < fastestLumosPensiveTimer p4Quests
scoreboard players operation @s tmp = lumosBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score lumosBestTime global matches 999999999 run scoreboard players operation lumosBestTimeM global = @s tmp3
execute unless score lumosBestTime global matches 999999999 run scoreboard players operation lumosBestTimeS global = @s tmp2
execute if score lumosBestTime global matches 999999999 run scoreboard players set lumosBestTimeM global 0
execute if score lumosBestTime global matches 999999999 run scoreboard players set lumosBestTimeS global 0

scoreboard players operation stupefyBestTime global < fastestStupefyPensiveTimer p1Quests
scoreboard players operation stupefyBestTime global < fastestStupefyPensiveTimer p2Quests
scoreboard players operation stupefyBestTime global < fastestStupefyPensiveTimer p3Quests
scoreboard players operation stupefyBestTime global < fastestStupefyPensiveTimer p4Quests
scoreboard players operation @s tmp = stupefyBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score stupefyBestTime global matches 999999999 run scoreboard players operation stupefyBestTimeM global = @s tmp3
execute unless score stupefyBestTime global matches 999999999 run scoreboard players operation stupefyBestTimeS global = @s tmp2
execute if score stupefyBestTime global matches 999999999 run scoreboard players set stupefyBestTimeM global 0
execute if score stupefyBestTime global matches 999999999 run scoreboard players set stupefyBestTimeS global 0

scoreboard players operation brackiumEmendoBestTime global < fastestBrackiumEmendoPensiveTimer p1Quests
scoreboard players operation brackiumEmendoBestTime global < fastestBrackiumEmendoPensiveTimer p2Quests
scoreboard players operation brackiumEmendoBestTime global < fastestBrackiumEmendoPensiveTimer p3Quests
scoreboard players operation brackiumEmendoBestTime global < fastestBrackiumEmendoPensiveTimer p4Quests
scoreboard players operation @s tmp = brackiumEmendoBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score brackiumEmendoBestTime global matches 999999999 run scoreboard players operation brackiumEmendoBestTimeM global = @s tmp3
execute unless score brackiumEmendoBestTime global matches 999999999 run scoreboard players operation brackiumEmendoBestTimeS global = @s tmp2
execute if score brackiumEmendoBestTime global matches 999999999 run scoreboard players set brackiumEmendoBestTimeM global 0
execute if score brackiumEmendoBestTime global matches 999999999 run scoreboard players set brackiumEmendoBestTimeS global 0

scoreboard players operation alohomoraBestTime global < fastestAlohomoraPensiveTimer p1Quests
scoreboard players operation alohomoraBestTime global < fastestAlohomoraPensiveTimer p2Quests
scoreboard players operation alohomoraBestTime global < fastestAlohomoraPensiveTimer p3Quests
scoreboard players operation alohomoraBestTime global < fastestAlohomoraPensiveTimer p4Quests
scoreboard players operation @s tmp = alohomoraBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score alohomoraBestTime global matches 999999999 run scoreboard players operation alohomoraBestTimeM global = @s tmp3
execute unless score alohomoraBestTime global matches 999999999 run scoreboard players operation alohomoraBestTimeS global = @s tmp2
execute if score alohomoraBestTime global matches 999999999 run scoreboard players set alohomoraBestTimeM global 0
execute if score alohomoraBestTime global matches 999999999 run scoreboard players set alohomoraBestTimeS global 0

scoreboard players operation wingardiumLeviosaBestTime global < fastestWingardiumLeviosaPensiveTimer p1Quests
scoreboard players operation wingardiumLeviosaBestTime global < fastestWingardiumLeviosaPensiveTimer p2Quests
scoreboard players operation wingardiumLeviosaBestTime global < fastestWingardiumLeviosaPensiveTimer p3Quests
scoreboard players operation wingardiumLeviosaBestTime global < fastestWingardiumLeviosaPensiveTimer p4Quests
scoreboard players operation @s tmp = wingardiumLeviosaBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score wingardiumLeviosaBestTime global matches 999999999 run scoreboard players operation wingardiumLeviosaBestTimeM global = @s tmp3
execute unless score wingardiumLeviosaBestTime global matches 999999999 run scoreboard players operation wingardiumLeviosaBestTimeS global = @s tmp2
execute if score wingardiumLeviosaBestTime global matches 999999999 run scoreboard players set wingardiumLeviosaBestTimeM global 0
execute if score wingardiumLeviosaBestTime global matches 999999999 run scoreboard players set wingardiumLeviosaBestTimeS global 0

scoreboard players operation bombardaMaximaBestTime global < fastestBombardaMaximaPensiveTimer p1Quests
scoreboard players operation bombardaMaximaBestTime global < fastestBombardaMaximaPensiveTimer p2Quests
scoreboard players operation bombardaMaximaBestTime global < fastestBombardaMaximaPensiveTimer p3Quests
scoreboard players operation bombardaMaximaBestTime global < fastestBombardaMaximaPensiveTimer p4Quests
scoreboard players operation @s tmp = bombardaMaximaBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score bombardaMaximaBestTime global matches 999999999 run scoreboard players operation bombardaMaximaBestTimeM global = @s tmp3
execute unless score bombardaMaximaBestTime global matches 999999999 run scoreboard players operation bombardaMaximaBestTimeS global = @s tmp2
execute if score bombardaMaximaBestTime global matches 999999999 run scoreboard players set bombardaMaximaBestTimeM global 0
execute if score bombardaMaximaBestTime global matches 999999999 run scoreboard players set bombardaMaximaBestTimeS global 0

scoreboard players operation veraVertoBestTime global < fastestVeraVertoPensiveTimer p1Quests
scoreboard players operation veraVertoBestTime global < fastestVeraVertoPensiveTimer p2Quests
scoreboard players operation veraVertoBestTime global < fastestVeraVertoPensiveTimer p3Quests
scoreboard players operation veraVertoBestTime global < fastestVeraVertoPensiveTimer p4Quests
scoreboard players operation @s tmp = veraVertoBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score veraVertoBestTime global matches 999999999 run scoreboard players operation veraVertoBestTimeM global = @s tmp3
execute unless score veraVertoBestTime global matches 999999999 run scoreboard players operation veraVertoBestTimeS global = @s tmp2
execute if score veraVertoBestTime global matches 999999999 run scoreboard players set veraVertoBestTimeM global 0
execute if score veraVertoBestTime global matches 999999999 run scoreboard players set veraVertoBestTimeS global 0

scoreboard players operation expectoPatronumBestTime global < fastestExpectoPatronumPensiveTimer p1Quests
scoreboard players operation expectoPatronumBestTime global < fastestExpectoPatronumPensiveTimer p2Quests
scoreboard players operation expectoPatronumBestTime global < fastestExpectoPatronumPensiveTimer p3Quests
scoreboard players operation expectoPatronumBestTime global < fastestExpectoPatronumPensiveTimer p4Quests
scoreboard players operation @s tmp = expectoPatronumBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score expectoPatronumBestTime global matches 999999999 run scoreboard players operation expectoPatronumBestTimeM global = @s tmp3
execute unless score expectoPatronumBestTime global matches 999999999 run scoreboard players operation expectoPatronumBestTimeS global = @s tmp2
execute if score expectoPatronumBestTime global matches 999999999 run scoreboard players set expectoPatronumBestTimeM global 0
execute if score expectoPatronumBestTime global matches 999999999 run scoreboard players set expectoPatronumBestTimeS global 0

scoreboard players operation apparitionBestTime global < fastestApparitionPensiveTimer p1Quests
scoreboard players operation apparitionBestTime global < fastestApparitionPensiveTimer p2Quests
scoreboard players operation apparitionBestTime global < fastestApparitionPensiveTimer p3Quests
scoreboard players operation apparitionBestTime global < fastestApparitionPensiveTimer p4Quests
scoreboard players operation @s tmp = apparitionBestTime global
scoreboard players set tmp2 0
scoreboard players set tmp3 0
function hp:quests/timer/convert_to_minutes_and_seconds
execute unless score apparitionBestTime global matches 999999999 run scoreboard players operation apparitionBestTimeM global = @s tmp3
execute unless score apparitionBestTime global matches 999999999 run scoreboard players operation apparitionBestTimeS global = @s tmp2
execute if score apparitionBestTime global matches 999999999 run scoreboard players set apparitionBestTimeM global 0
execute if score apparitionBestTime global matches 999999999 run scoreboard players set apparitionBestTimeS global 0

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 344 1 1 false @s

setblock 724 32 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Люмос\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"lumosBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"lumosBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 725 32 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Остолбеней\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"stupefyBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"stupefyBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 726 32 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Брахиам Эмендо\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"brackiumEmendoBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"brackiumEmendoBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 724 31 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Алахомора\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"alohomoraBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"alohomoraBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 725 31 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Вингардиум Левиоса\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"wingardiumLeviosaBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"wingardiumLeviosaBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 726 31 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Бомбарда Максима\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"bombardaMaximaBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"bombardaMaximaBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 724 30 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Фера Верто\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"veraVertoBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"veraVertoBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 725 30 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Экспекто\",\"color\":\"black\"}",Text2:"{\"text\":\"Патронум\",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"expectoPatronumBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"expectoPatronumBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 726 30 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Трансгрессия\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"apparitionBestTimeM\",\"objective\":\"global\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"apparitionBestTimeS\",\"objective\":\"global\"},\"color\":\"black\"}]}"} destroy
setblock 725 29 343 minecraft:oak_wall_sign[facing=south]{Text1:"{\"text\":\"Полёт\",\"color\":\"black\"}",Text2:"{\"text\":\" \",\"color\":\"black\"}",Text3:"{\"text\":\"Лучшее время:\",\"color\":\"black\"}",Text4:"{\"score\":{\"name\":\"minutes\",\"objective\":\"flyingHighscore\"},\"color\":\"black\",\"extra\":[{\"text\":\":\",\"color\":\"black\"},{\"score\":{\"name\":\"seconds\",\"objective\":\"flyingHighscore\"},\"color\":\"black\"}]}"} destroy

kill @e[tag=chunkLoader]