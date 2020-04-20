execute as @s[type=!armor_stand,type=!item_frame,tag=npc,tag=!fpActor,tag=!sitting,tag=!ignorePlayers] at @s if entity @p[distance=..3,tag=!editNPC,tag=!inProperCutScene,tag=!inResetPoint,tag=!playerIsInvisible] run tag @s add npcLookAtPlayer
execute as @s[tag=npcLookAtPlayer] at @s run function hp:npc/npc_look_at_player
execute as @s[tag=inConversationNPC] at @s run function hp:new_conversation/npc_fail_safe

# Face animation
scoreboard players remove @s[scores={expression=1..}] expression 1
execute as @s[scores={expression=1}] run function hp:npc/update_npc_head_neutral