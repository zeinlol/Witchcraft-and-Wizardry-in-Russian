execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove inLerp1
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove lerp1
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove inLerp2
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove lerp2
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove inLerp3
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s remove lerp3
# execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run say Start Lerp
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] store result score @s lerp3Current run data get entity @s Rotation[0]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] store result score @s lerp2Current run data get entity @s Rotation[1]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run scoreboard players operation @s lerp3Start = @s lerp3Current
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run scoreboard players operation @s lerp2Start = @s lerp2Current
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run scoreboard players set @s lerp3Time 10
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run scoreboard players set @s lerp2Time 10
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:0,Particle:"ambient_entity_effect",Tags:[lookAtPlayer,tmp]}
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] as @e[tag=lookAtPlayer,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=!playerIsInvisible]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] store result score @s lerp3End run data get entity @e[tag=lookAtPlayer,limit=1] Rotation[0]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] store result score @s lerp2End run data get entity @e[tag=lookAtPlayer,limit=1] Rotation[1]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s add lerp3
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s add lerp2
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run kill @e[tag=lookAtPlayer,tag=tmp]
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation,scores={npcLookPlayerID=0}] run scoreboard players operation @s npcLookPlayerID = @p[tag=!playerIsInvisible] playerID
execute as @s[tag=!NPCisLooking,tag=!isLerpingBackToNormalRotation] run tag @s add NPCisLooking


# Lock onto player #
tag @s add focusLookNPC
execute as @a[tag=!playerIsInvisible] at @s if score @s playerID = @e[tag=focusLookNPC,limit=1,sort=nearest] npcLookPlayerID run tag @s add focusLookPlayer

execute as @s[tag=NPCisLooking,tag=!lerp3,tag=!hagrid] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=focusLookPlayer,tag=!playerIsInvisible] eyes
execute as @s[tag=NPCisLooking,tag=!lerp3,tag=hagrid] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=focusLookPlayer,tag=!playerIsInvisible] eyes
execute as @s[tag=lerp3] store result entity @s Rotation[0] float 1 run scoreboard players get @s lerp3Current
execute as @s[tag=lerp3] store result entity @s Rotation[1] float 1 run scoreboard players get @s lerp2Current


# Exit
execute at @s[tag=NPCisLooking] unless entity @p[distance=..4,tag=focusLookPlayer,tag=!playerIsInvisible] run tag @s add NPCstopLooking
execute as @s[tag=NPCstopLooking] run tag @s remove inLerp1
execute as @s[tag=NPCstopLooking] run tag @s remove lerp1
execute as @s[tag=NPCstopLooking] run tag @s remove inLerp2
execute as @s[tag=NPCstopLooking] run tag @s remove lerp2
execute as @s[tag=NPCstopLooking] run tag @s remove inLerp3
execute as @s[tag=NPCstopLooking] run tag @s remove lerp3
execute as @s[tag=NPCstopLooking] store result score @s lerp3Current run data get entity @s Rotation[0]
execute as @s[tag=NPCstopLooking] store result score @s lerp2Current run data get entity @s Rotation[1]
execute as @s[tag=NPCstopLooking] run scoreboard players operation @s lerp3Start = @s lerp3Current
execute as @s[tag=NPCstopLooking] run scoreboard players operation @s lerp2Start = @s lerp2Current
execute as @s[tag=NPCstopLooking] run scoreboard players set @s lerp3Time 10
execute as @s[tag=NPCstopLooking] run scoreboard players set @s lerp2Time 10
execute as @s[tag=NPCstopLooking] store result score @s lerp3End run data get entity @s ArmorItems[3].tag.npcRotY 1
execute as @s[tag=NPCstopLooking] store result score @s lerp2End run data get entity @s ArmorItems[3].tag.npcRotX 1
execute as @s[tag=NPCstopLooking] run tag @s add lerp3
execute as @s[tag=NPCstopLooking] run tag @s add lerp2
execute as @s[tag=NPCstopLooking] run tag @s add isLerpingBackToNormalRotation
execute as @s[tag=NPCstopLooking] run tag @s remove NPCisLooking
execute as @s[tag=NPCstopLooking] run scoreboard players set @s npcLookPlayerID 0
execute as @s[tag=NPCstopLooking] run tag @s remove NPCstopLooking

# Lerping back to normal rotation:
execute as @s[tag=isLerpingBackToNormalRotation,tag=!lerp3] store result entity @s Rotation[0] float 1 run data get entity @s ArmorItems[3].tag.npcRotY 1
execute as @s[tag=isLerpingBackToNormalRotation,tag=!lerp3] store result entity @s Rotation[1] float 1 run data get entity @s ArmorItems[3].tag.npcRotX 1
execute as @s[tag=isLerpingBackToNormalRotation,tag=!lerp3] run tag @s remove npcLookAtPlayer
execute as @s[tag=isLerpingBackToNormalRotation,tag=!lerp3] run tag @s remove isLerpingBackToNormalRotation

tag @s remove focusLookNPC
tag @p[tag=focusLookPlayer] remove focusLookPlayer