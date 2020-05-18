scoreboard players set @s broomDelay 5
scoreboard players operation @s broomType = @e[type=armor_stand,tag=broomElytra,limit=1,sort=nearest] broomType
scoreboard players operation @s flyingBroomID = @e[type=armor_stand,tag=broomElytra,limit=1,sort=nearest] broomID
tag @s add flyingBroom