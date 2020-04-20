tag @s add focusNPCActor
# execute as @e[tag=pathIndicator] if score @s PathPointID matches 0 run tag @s add moveToPathTarget
execute as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=focusNPCActor,tag=npc,tag=fpActor,limit=1] fpNPCID run tag @s add moveToPathEngine
execute as @e[tag=pathIndicator] if score @s PathID = @e[tag=moveToPathEngine,limit=1] PathID if score @s PathPointID matches 0 run tag @s add moveToPathTarget
execute if entity @e[tag=moveToPathTarget] run tp @e[tag=moveToPathEngine,limit=1] @e[tag=moveToPathTarget,limit=1]
execute if entity @e[tag=moveToPathTarget] run scoreboard players set @e[tag=focusNPCActor,tag=npc,tag=fpActor] targetPathPoint 0
execute if entity @e[tag=moveToPathTarget] as @e[tag=focusNPCActor,tag=npc,tag=fpActor] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint
execute unless entity @e[tag=moveToPathTarget] run tellraw @a ["",{"text":"Точка перехода не найдена. Попробуйте подойти к ней поближе.","color":"red"}]

execute if entity @e[tag=moveToPathTarget] as @e[tag=moveToPathEngine,limit=1] at @s run function hp:npc/read_path_point
execute if entity @e[tag=moveToPathTarget] as @e[tag=moveToPathEngine,limit=1] at @s run tag @s remove stop
execute if entity @e[tag=moveToPathTarget] as @e[tag=moveToPathEngine,limit=1] at @s run tag @s remove idle
execute if entity @e[tag=moveToPathTarget] as @e[tag=moveToPathEngine,limit=1] at @s run function hp:npc/update_path

tag @s remove focusNPCActor
tag @e[tag=moveToPathTarget] remove moveToPathTarget
tag @e[tag=moveToPathEngine] remove moveToPathEngine