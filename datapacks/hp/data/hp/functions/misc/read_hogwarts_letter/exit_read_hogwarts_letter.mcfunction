# Exit
# tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill @e[tag=letterPlControllerPlayer1]
execute as @s[scores={playerID=2}] run kill @e[tag=letterPlControllerPlayer2]
execute as @s[scores={playerID=3}] run kill @e[tag=letterPlControllerPlayer3]
execute as @s[scores={playerID=4}] run kill @e[tag=letterPlControllerPlayer4]
execute at @s run playsound minecraft:custom.ui.map.open master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 0.25 1 0
tag @s remove showBossbarHeader
function hp:misc/update_bossbars
tag @s add preventDoubleExecution
tag @s remove inLetter
tag @s remove preventPunching
scoreboard players set @s questAnim 7
scoreboard players set @s hotbar_stage 2
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest
tag @s remove exitLetter
