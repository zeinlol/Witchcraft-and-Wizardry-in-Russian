# Make the pixie gnome charge towards the player. Calculate a motion vector by looking at the player and comparing with another entity moved in that direction

execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"attackPlayer\"}",Radius:0.0f,Duration:1,Particle:"block air",Tags:["pixieAttackPlayer"]}
execute at @s run tp @e[tag=pixieAttackPlayer,limit=1,sort=nearest] ~ ~ ~ facing entity @p[tag=play,tag=play,team=all,tag=!inProperCutScene] eyes
execute as @e[tag=pixieAttackPlayer,limit=1,sort=nearest] at @s run tp @s ^ ^ ^2
execute store result score @s tmp run data get entity @s Pos[0] 1000
execute store result score @s tmp2 run data get entity @e[tag=pixieAttackPlayer,limit=1,sort=nearest] Pos[0] 1000
execute store result entity @s ArmorItems[3].tag.attackMotionX double 0.001 run scoreboard players operation @s tmp2 -= @s tmp
execute store result score @s tmp run data get entity @s Pos[1] 1000
execute store result score @s tmp2 run data get entity @e[tag=pixieAttackPlayer,limit=1,sort=nearest] Pos[1] 1000
execute store result entity @s ArmorItems[3].tag.attackMotionY double 0.001 run scoreboard players operation @s tmp2 -= @s tmp
execute store result score @s tmp run data get entity @s Pos[2] 1000
execute store result score @s tmp2 run data get entity @e[tag=pixieAttackPlayer,limit=1,sort=nearest] Pos[2] 1000
execute store result entity @s ArmorItems[3].tag.attackMotionZ double 0.001 run scoreboard players operation @s tmp2 -= @s tmp
kill @e[tag=pixieAttackPlayer]