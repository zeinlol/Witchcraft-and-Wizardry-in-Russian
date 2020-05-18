# execute unless score @s npcPhase matches 1.. store result score @s npcPhase run data get entity @s ArmorItems[3].tag.npcPhase 1

# For some reason I thought this was how to spell "pace" ???
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=3}] Motion[0] double 0.00015 run scoreboard players get @s lerp1Current
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=3}] Motion[2] double 0.00015 run scoreboard players get @s lerp2Current
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=1}] Motion[0] double 0.0002 run scoreboard players get @s lerp1Current
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=1}] Motion[2] double 0.0002 run scoreboard players get @s lerp2Current
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=2}] Motion[0] double 0.000225 run scoreboard players get @s lerp1Current
execute unless entity @p[tag=freezeNPC] store result entity @s[tag=!stop,tag=!permStop,tag=!cutsceneStop,tag=!inConversationEngine,scores={npcPhase=2}] Motion[2] double 0.000225 run scoreboard players get @s lerp2Current
execute unless entity @p[tag=freezeNPC] store result entity @s Rotation[0] float 1 run scoreboard players get @s lerp3Current
execute unless entity @p[tag=freezeNPC] store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 0

# Update path when over new path point
# I think this is maybe related to the bug, where using "if block" in an unloaded chunk can cause entities to lose their scoreboard values and team or something like that? Maybe reconsider how to do this.
scoreboard players set @s tmp -1
execute if block ~ 0 ~ dropper store result score @s[tag=!stop] tmp run data get block ~ 0 ~ Items[0].tag.Enchantments[4].lvl 1

execute if score @s[tag=!idle] tmp = @s targetPathPoint run function hp:npc/read_path_point
execute as @s[scores={idle=0}] run tag @s remove stop
execute as @s[scores={idle=0}] run tag @s remove idle
execute as @s[scores={idle=0}] run function hp:npc/update_path
execute as @s[scores={idle=0..},tag=!interrupt] run scoreboard players remove @s idle 1
tag @s remove usePathPoint


tag @s add engineFocus
execute as @e[tag=fpActor,tag=!overrideFpRotation] if score @s fpNPCID = @e[type=villager,tag=engineFocus,limit=1] fpNPCID run tp @s @e[type=villager,tag=engineFocus,limit=1]
# execute as @e[tag=fpActor,tag=overrideFpRotation] if score @s fpNPCID = @e[type=villager,tag=engineFocus,limit=1] fpNPCID at @e[type=villager,tag=engineFocus,limit=1] run tp @s ~ ~ ~
tag @s remove engineFocus
# execute at @s run tp @e[tag=fpActor,limit=1,sort=nearest,distance=..2] @s

execute as @s[tag=!interrupt,tag=!permStop,tag=!cutsceneStop] if score pathCorrection tmp matches 1 run function hp:npc/correct_path_tracking

execute as @s[tag=cutsceneStop,tag=!inCutsceneStop] run tag @s add inCutsceneStop
execute as @s[tag=!cutsceneStop,tag=inCutsceneStop] run function hp:npc/correct_path_tracking
execute as @s[tag=!cutsceneStop,tag=inCutsceneStop] run tag @s remove inCutsceneStop


# Interruption
execute at @a[tag=play,tag=!inProperCutScene,tag=!inResetPoint] as @s[distance=..3,tag=!ignorePlayers] at @s run tag @s add interrupt
execute as @s[tag=interrupt] run function hp:npc/player_interruption