# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill large spider
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/large_spider/large_spider_death


# Shooting
scoreboard players remove @s animTest 1
execute as @s[scores={animTest=-30}] run tag @s remove clearLineOfSight
execute as @s[scores={animTest=-30}] at @s if entity @p[distance=..7,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run function hp:creatures/check_player_line_of_sight
execute as @s[scores={animTest=-30},tag=clearLineOfSight] run scoreboard players set @s animTest 150
execute as @s[scores={animTest=-30},tag=!clearLineOfSight] run scoreboard players set @s animTest 0

execute as @s[scores={animTest=150}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[scores={animTest=150}] at @s run tp @s ~ ~ ~ facing entity @p[tag=play,team=all,tag=inProperCutScene,tag=!inResetPoint]
execute as @s[scores={animTest=140}] at @s run tp @s ~ ~ ~ facing entity @p[tag=play,team=all,tag=inProperCutScene,tag=!inResetPoint]

execute as @s[scores={animTest=..140}] store result score @s rotX run data get entity @s Rotation[0] 1
execute as @s[scores={animTest=..140}] run scoreboard players add @s[scores={rotX=..0}] rotX 360
execute as @s[scores={animTest=..140}] run scoreboard players add @s[scores={rotX=..0}] rotX 360
execute as @s[scores={animTest=..140}] run scoreboard players add @s[scores={rotX=..0}] rotX 360
execute as @s[scores={animTest=..140}] run scoreboard players remove @s[scores={rotX=360..}] rotX 360
execute as @s[scores={animTest=..140}] run scoreboard players remove @s[scores={rotX=360..}] rotX 360
execute as @s[scores={animTest=..140}] run scoreboard players remove @s[scores={rotX=360..}] rotX 360
execute as @s[scores={animTest=140}] at @s positioned ^ ^.25 ^.3 run function hp:creatures/large_spider/shoot_web
execute as @s[scores={animTest=120}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}


# Glow timer - If the mob is alive for a long duration of time during waves it's a good indicator that it is lost or that the player for some reason is unable to find the mob, so it gets highlighted
execute as @s[tag=glowWaveCreature] run scoreboard players operation @s glowTimer += systick time
execute as @s[tag=glowWaveCreature,scores={glowTimer=200000..}] run effect give @s minecraft:glowing 1 1 true