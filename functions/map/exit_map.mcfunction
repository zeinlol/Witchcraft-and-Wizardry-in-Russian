# Exit
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-a-0-1
execute as @s[scores={playerID=2}] run kill 0-0-a-0-2
execute as @s[scores={playerID=3}] run kill 0-0-a-0-3
execute as @s[scores={playerID=4}] run kill 0-0-a-0-4
execute at @s run playsound minecraft:custom.ui.map.close master @a ~ ~ ~ 1 1
tag @s remove showBossbarHeader
function hp:misc/update_bossbars
tag @s remove invInspectItem
tag @s remove inMap
tag @s remove preventPunching
function hp:animation/clear_all_animations
tag @s[tag=!inLumos,scores={selectedSlot=1}] add anim_enter
tag @s remove softExitMap
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest
execute as @s[scores={hotbar_stage=9}] run scoreboard players set @s hotbar_stage 10

# Reset tags on inventory options to prevent issues if the fast travel tags persist
data merge entity 0-0-1-0-1 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-2 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-3 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-4 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-5 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-6 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}


tag @s remove exitInventory

