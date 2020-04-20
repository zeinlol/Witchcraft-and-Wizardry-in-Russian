# Exit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-d-0-1
execute as @s[scores={playerID=2}] run kill 0-0-d-0-2
execute as @s[scores={playerID=3}] run kill 0-0-d-0-3
execute as @s[scores={playerID=4}] run kill 0-0-d-0-4
playsound minecraft:custom.ui.book.close master @a ~ ~ ~ 1 1

tag @s remove showBossbarHeader
function hp:misc/update_bossbars

tag @s add preventDoubleExecution
tag @s remove inQuestBook
scoreboard players set @s questAnim 7
scoreboard players set @s selectCurrent 1
scoreboard players set @s[scores={hotbar_stage=5}] hotbar_stage 6
tag @s remove preventPunching

tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},tag=!trackedQuestChanged] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},tag=trackedQuestChanged] remove trackedQuestChanged
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest
tag @s[scores={selectedSlot=1}] add anim_enter
tag @s remove exitQuestBook