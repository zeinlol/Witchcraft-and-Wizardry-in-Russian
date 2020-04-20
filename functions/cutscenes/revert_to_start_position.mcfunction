# Summon armorstand, read and write start location, tp player
summon minecraft:armor_stand 10010 66 12 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cutScenePlayerStartPos"]}

execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[0] double 0.00001 run scoreboard players get @s posX
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[1] double 0.00001 run scoreboard players get @s posY
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Pos[2] double 0.00001 run scoreboard players get @s posZ
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[0] float 1 run scoreboard players get @s rotY
execute store result entity @e[tag=cutScenePlayerStartPos,limit=1] Rotation[1] float 1 run scoreboard players get @s rotX

tp @s @e[tag=cutScenePlayerStartPos,limit=1]
kill @e[tag=cutScenePlayerStartPos,limit=1]