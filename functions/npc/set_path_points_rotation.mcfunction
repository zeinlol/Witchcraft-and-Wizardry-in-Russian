tag @s add focusPathPoint
scoreboard players operation @s tmp = @s PathPointID
scoreboard players add @s tmp 1

# Rotation
execute as @s[scores={pathEnding=0}] as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID = @e[tag=focusPathPoint,limit=1] tmp run tp @e[tag=focusPathPoint,limit=1] ~ ~ ~ facing entity @s
execute as @s[scores={pathEnding=1}] as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID matches 0 run tp @e[tag=focusPathPoint,limit=1] ~ ~ ~ facing entity @s
execute at @s store result block ~ 0 ~ Items[0].tag.Enchantments[1].lvl int 1 run data get entity @s Rotation[0] 1

# The movement system writes into the npc engine's motion nbt tags so slopes and stairs etc are supported. Therefore I need to find and store x and z displacement values:
execute at @s run function hp:npc/edit_path_xz_distance

execute at @s store result block ~ 0 ~ Items[0].tag.Enchantments[2].lvl int 1 run scoreboard players get @s pathPoint_dx
execute at @s store result block ~ 0 ~ Items[0].tag.Enchantments[3].lvl int 1 run scoreboard players get @s pathPoint_dz
tellraw @a ["",{"text":"Перемещение точки перехода ","color":"white"},{"score":{"name":"@s","objective":"PathPointID"},"bold":true,"color":"gold"},{"text":" было установлено в ","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@s","objective":"pathPoint_dx"},"color":"yellow"},{"text":" ## ","color":"white"},{"score":{"name":"@s","objective":"pathPoint_dz"},"color":"yellow"},{"text":")","color":"white"}]





# Next point coordinates (follow target)
execute as @s[scores={pathEnding=0}] at @s store result block ~ 0 ~ Items[0].tag.Enchantments[7].lvl int 1 as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID = @e[tag=focusPathPoint,limit=1] tmp run data get entity @s Pos[0] 1
execute as @s[scores={pathEnding=0}] at @s store result block ~ 0 ~ Items[0].tag.Enchantments[8].lvl int 1 as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID = @e[tag=focusPathPoint,limit=1] tmp run data get entity @s Pos[2] 1

execute as @s[scores={pathEnding=1}] at @s store result block ~ 0 ~ Items[0].tag.Enchantments[7].lvl int 1 as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID matches 0 run data get entity @s Pos[0] 1
execute as @s[scores={pathEnding=1}] at @s store result block ~ 0 ~ Items[0].tag.Enchantments[8].lvl int 1 as @e[tag=pathIndicator] if score @s PathID = @e[tag=focusPathPoint,limit=1] PathID if score @s PathPointID matches 0 run data get entity @s Pos[2] 1

tag @s remove focusPathPoint




# For some reason I can't get the armorstands to update their rotation so I just reload the display :/