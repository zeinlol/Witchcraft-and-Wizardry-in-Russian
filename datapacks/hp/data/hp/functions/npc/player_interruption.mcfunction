execute as @s[tag=!isInterrupted] run tag @s remove inLerp1
execute as @s[tag=!isInterrupted] run tag @s remove lerp1
execute as @s[tag=!isInterrupted] run tag @s remove inLerp2
execute as @s[tag=!isInterrupted] run tag @s remove lerp2
execute as @s[tag=!isInterrupted] run tag @s remove inLerp3
execute as @s[tag=!isInterrupted] run tag @s remove lerp3
execute as @s[tag=!isInterrupted] run scoreboard players operation @s lerp3Start = @s lerp3Current
execute as @s[tag=!isInterrupted] run scoreboard players set @s lerp3Time 8
execute as @s[tag=!isInterrupted] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:0,Particle:"ambient_entity_effect",Tags:[lookAtPlayer,tmp]}
execute as @s[tag=!isInterrupted] as @e[tag=lookAtPlayer,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @p eyes
execute as @s[tag=!isInterrupted] store result score @s lerp3End run data get entity @e[tag=lookAtPlayer,limit=1] Rotation[0]
execute as @s[tag=!isInterrupted] run tag @s add lerp3
execute as @s[tag=!isInterrupted] run kill @e[tag=lookAtPlayer,tag=tmp]
execute as @s[tag=!isInterrupted] run tag @s add stop
execute as @s[tag=!isInterrupted] run tag @s add isInterrupted


execute as @s[tag=stop,tag=!lerp3] at @s anchored eyes run tp @e[tag=fpActor,limit=1,sort=nearest] ~ ~ ~ facing entity @p[tag=play,tag=!inProperCutScene] eyes
execute as @s[tag=stop,tag=!lerp3] run tag @s add forceLook


# Exit
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=!cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] run function hp:npc/correct_path_tracking
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] store result score @s lerp3End run data get entity @s ArmorItems[3].tag.npcRotY
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] store result score @s lerp3Current run data get entity @s Rotation[0]
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] run scoreboard players operation @s lerp3Start = @s lerp3Current
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] run scoreboard players set @s lerp3Time 7
execute at @s[scores={idle=-1},tag=!inConversationEngine,tag=!permStop,tag=cutsceneStop] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] run tag @s add lerp3

execute at @s[scores={idle=-1},tag=!inConversationEngine] unless entity @p[distance=..4,tag=play,tag=!inProperCutScene] run tag @s remove stop
execute at @s[tag=!inConversationEngine] unless entity @p[distance=..4,tag=!inConversationEngine,tag=play,tag=!inProperCutScene] run tag @s remove isInterrupted
execute at @s[tag=!inConversationEngine] unless entity @p[distance=..4,tag=!inConversationEngine,tag=play,tag=!inProperCutScene] run tag @s remove forceLook
execute at @s[tag=!inConversationEngine] unless entity @p[distance=..4,tag=!inConversationEngine,tag=play,tag=!inProperCutScene] run tag @s remove interrupt
