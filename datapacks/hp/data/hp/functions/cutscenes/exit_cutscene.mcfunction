scoreboard players set @s cutSceneTimer 0

tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=inProperCutScene,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},tag=!dontExitCutSceneSilent] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=inProperCutScene,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},tag=dontExitCutSceneSilent] remove dontExitCutSceneSilent
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=inProperCutScene,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=inProperCutScene,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest

tag @s[tag=!inLumos,scores={selectedSlot=1},tag=!anim_playingEnter,tag=inProperCutScene] add anim_enter

tag @s remove doNotControlPlayerLocation
tag @s remove playerIsInvisible
effect clear @s minecraft:invisibility

tag @s remove doNotAffectPlayer
tag @s remove inCutScene
tag @s remove inProperCutScene
tag @s remove cutsceneSlave
tag @s remove cutsceneMaster
tag @s remove cutsceneLeader

# For some reason that I can't be bothered to figure out you can't start a new cutscene in the same tick that another one ends in without funky stuff happening.
tag @s add cutsceneEndedThisTick

tag @s remove showBossbarHeader
function hp:misc/update_bossbars

gamemode spectator @s
gamemode adventure @s

scoreboard players set @s lastLocation 0