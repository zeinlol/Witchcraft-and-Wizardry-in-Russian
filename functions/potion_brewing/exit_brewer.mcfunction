# Exit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-13-0-1
execute as @s[scores={playerID=2}] run kill 0-0-13-0-2
execute as @s[scores={playerID=3}] run kill 0-0-13-0-3
execute as @s[scores={playerID=4}] run kill 0-0-13-0-4
playsound minecraft:custom.ui.inventory.interaction.close_inventory master @s ~ ~ ~ 1 1 1

tag @s remove showBossbarHeader
function hp:misc/update_bossbars


tag @s add preventDoubleExecution
tag @s remove inInventory
scoreboard players set @s selectCurrent 1

execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest

tag @s remove anim_playingEnter
tag @s remove anim_playing
tag @s remove preventPunching
tag @s[tag=!inLumos,scores={selectedSlot=1}] add anim_enter

tag @s remove inBrewer
tag @s remove exitBrewer