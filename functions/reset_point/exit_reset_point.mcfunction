scoreboard players set @s resetPoint 0

tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest

tag @s[tag=!inLumos,scores={selectedSlot=1},tag=!anim_playingEnter] add anim_enter

tag @s remove playerIsInvisible
effect clear @s minecraft:invisibility

tag @s remove inResetPoint

tag @s remove showBossbarHeader
function hp:misc/update_bossbars