# This is an attempt to fix a really annoying problem to do with armorstand rotation where Hagrids body will be rotated in all kinds of funky ways. It seems to work for the most part.
tag @s add NPCisLooking
tag @s add npcLookAtPlayer
tag @s add isLerpingBackToNormalRotation

tag @s remove inLerp1
tag @s remove lerp1
tag @s remove inLerp2
tag @s remove lerp2
tag @s remove inLerp3
tag @s remove lerp3
# scoreboard players set @s lerp3Current 0
# scoreboard players set @s lerp2Current 0
execute store result score @s lerp3Current run data get entity @s Rotation[0]
execute store result score @s lerp2Current run data get entity @s Rotation[1]
scoreboard players operation @s lerp3Start = @s lerp3Current
scoreboard players operation @s lerp2Start = @s lerp2Current
scoreboard players set @s lerp3Time 10
scoreboard players set @s lerp2Time 10
execute store result score @s lerp3End run data get entity @s ArmorItems[3].tag.npcRotY 1
execute store result score @s lerp2End run data get entity @s ArmorItems[3].tag.npcRotX 1
tag @s add lerp3
tag @s add lerp2