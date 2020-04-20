execute at @s run playsound custom.inventory.items.fireworks_launch master @a

### Fireworks Rocket ###
execute at @s run summon trident ^ ^ ^0.5 {damage:2d,Team:"NPC",NoGravity:1b,Color:-1,Tags:["spellEntity","fireworksRocket","fireworksRocket_ini"],Passengers:[{id:"minecraft:armor_stand",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["spellEntity","fireworksRocketDirection","fireworksRocketDirection_ini"]}]}
execute store result score @s tmp run data get entity @s Pos[0] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result score @s movX run data get entity @s Pos[0] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] run scoreboard players operation @s movX -= @p[tag=activePlayer] tmp

execute store result score @s tmp run data get entity @s Pos[1] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result score @s movY run data get entity @s Pos[1] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] run scoreboard players operation @s movY -= @p[tag=activePlayer] tmp

execute store result score @s tmp run data get entity @s Pos[2] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result score @s movZ run data get entity @s Pos[2] 100
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] run scoreboard players operation @s movZ -= @p[tag=activePlayer] tmp

execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] run tp @s ~ ~1.5 ~

execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result entity @s Motion[0] double 0.02 run scoreboard players get @s movX
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result entity @s Motion[1] double 0.02 run scoreboard players get @s movY
execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] store result entity @s Motion[2] double 0.02 run scoreboard players get @s movZ

execute at @s store result entity @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute at @s store result entity @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

execute at @s store result score @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] TargetXRot run data get entity @s Rotation[0]
execute at @s store result score @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] TargetYRot run data get entity @s Rotation[1]

execute at @s as @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID

execute at @s as @e[tag=fireworksRocket_ini,limit=1,sort=nearest] run tag @s remove fireworksRocket_ini
execute at @s as @e[tag=fireworksRocketDirection_ini,limit=1,sort=nearest] run tag @s remove fireworksRocketDirection_ini

scoreboard players set @s fireworks 15