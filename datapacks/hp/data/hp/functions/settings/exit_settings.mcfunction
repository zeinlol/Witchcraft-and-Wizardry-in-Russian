# Exit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill @e[tag=settingsPlControllerPlayer1]
execute as @s[scores={playerID=2}] run kill @e[tag=settingsPlControllerPlayer2]
execute as @s[scores={playerID=3}] run kill @e[tag=settingsPlControllerPlayer3]
execute as @s[scores={playerID=4}] run kill @e[tag=settingsPlControllerPlayer4]
execute at @s run playsound minecraft:custom.ui.settings.close master @a ~ ~ ~ 1 1 0
tag @s[tag=!inProperCutScene,tag=!inResetPoint] remove showBossbarHeader
execute as @s[tag=!inProperCutScene,tag=!inResetPoint] run function hp:misc/update_bossbars
tag @s remove invInspectItem
tag @s remove inSettings
tag @s remove preventPunching
function hp:animation/clear_all_animations
tag @s[tag=!inLumos,scores={selectedSlot=1}] add anim_enter
tag @s remove softExitMap
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest
tag @s remove exitSettings