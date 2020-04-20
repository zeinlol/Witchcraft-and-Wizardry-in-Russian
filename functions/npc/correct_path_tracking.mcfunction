# This function triggers every couple of ticks and puts the npc back on track in case it's been nudged off. Something I had problems where relogging or something else would cause the npc to be nudged very slightly, and then miss it's next path point, and just continue forever in the wrong direction


summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:0,Particle:"block air",Tags:[pathCorrection,tmp]}

execute store result score @s PathPointTargetX run data get entity @s ArmorItems[3].tag.PathPointTargetX 1
execute store result score @s PathPointTargetZ run data get entity @s ArmorItems[3].tag.PathPointTargetZ 1
execute store result entity @e[tag=pathCorrection,limit=1] Pos[0] double 1 run scoreboard players get @s PathPointTargetX
execute store result entity @e[tag=pathCorrection,limit=1] Pos[2] double 1 run scoreboard players get @s PathPointTargetZ
execute as @e[tag=pathCorrection,limit=1] at @s run tp @s ~.5 ~ ~.5

# Determine xz displacement
tag @s add distanceCheck
execute at @s facing entity @e[tag=pathCorrection,limit=1] eyes run summon minecraft:area_effect_cloud ^ ^ ^5 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}

execute as @e[tag=distanceCheck] store result score @s lerp1Current run data get entity @s Pos[0] 100
execute as @e[tag=distanceCheck] store result score @s lerp2Current run data get entity @s Pos[2] 100

scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] lerp1Current -= @s lerp1Current
scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] lerp2Current -= @s lerp2Current

scoreboard players operation @s lerp1Current = @e[tag=distanceCheck,tag=tmp,limit=1] lerp1Current
scoreboard players operation @s lerp2Current = @e[tag=distanceCheck,tag=tmp,limit=1] lerp2Current

# Rotation
tag @s remove inLerp1
tag @s remove lerp1
tag @s remove inLerp2
tag @s remove lerp2
tag @s remove inLerp3
tag @s remove lerp3

# Store rotation so it can be returned to normal after lerp target has been decided
execute store result score @s tmp run data get entity @s Rotation[0]
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=pathCorrection,limit=1] eyes
execute store result score @s lerp3End run data get entity @s Rotation[0]

# Return to normal rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s tmp

execute store result score @s lerp3Current run data get entity @s Rotation[0]
scoreboard players operation @s lerp3Start = @s lerp3Current
scoreboard players set @s lerp3Time 7
tag @s add lerp3

kill @e[tag=distanceCheck,tag=tmp]
kill @e[tag=pathCorrection,tag=tmp]
tag @e remove distanceCheck