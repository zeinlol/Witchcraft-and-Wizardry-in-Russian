# Exit
scoreboard players set @s convScroll 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s convState 0
scoreboard players set @s oldConvState 0
tag 0-0-6-0-1 remove confirmingOption
tag 0-0-6-0-2 remove confirmingOption
tag 0-0-6-0-3 remove confirmingOption
tag 0-0-6-0-4 remove confirmingOption


tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-e-0-1
execute as @s[scores={playerID=2}] run kill 0-0-e-0-2
execute as @s[scores={playerID=3}] run kill 0-0-e-0-3
execute as @s[scores={playerID=4}] run kill 0-0-e-0-4
tag @s remove showBossbarHeader
execute as @s[tag=!inCutScene] run function hp:misc/update_bossbars
tag @s remove confirmConvOption
tag @s remove inConversation
tag @s remove softExitConv
tag @s remove exitConversation
tag @s remove showConversationControls
tag @s add hasExitedConversation
tag @s remove preventPunching
tag @s remove qtr

scoreboard players set @s questAnim 12
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest


tag @s[tag=!inLumos,scores={selectedSlot=1}] add anim_enter


# NPC
execute as @e[tag=inConversationNPC] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove noHover
execute as @e[tag=inConversationNPC] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove inConversationNPC
execute as @e[tag=inConversationEngine] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove inConversationEngine