setblock ~ 1 ~ minecraft:light_gray_wool
setblock ~ 0 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:redstone",Count:1b,tag:{Enchantments:[{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"},{lvl:0,id:"minecraft:sharpness"}],display:{Name:"{\"text\":\"слой 1\"}"}}}]}
execute store result block ~ 0 ~ Items[0].tag.Enchantments[0].lvl int 1 run data get entity @e[tag=npcPathPoint,limit=1] Pos[1] 1
# execute store result block ~ 0 ~ Items[0].tag.Enchantments[4].lvl int 1 run scoreboard players get currentPathPointID PathPointID
# scoreboard players add currentPathPointID PathPointID 1
execute at @s run scoreboard players add @p[tag=p] CopyPathPointID 1
execute at @s store result block ~ 0 ~ Items[0].tag.Enchantments[4].lvl int 1 run scoreboard players operation @e[tag=npcPathPoint,limit=1] PathPointID = @p[tag=p] CopyPathPointID


execute at @s as @p[tag=!isSneaking,tag=p] store result block ~ 0 ~ Items[0].tag.Enchantments[5].lvl int 1 run scoreboard players operation @e[tag=npcPathPoint,limit=1] PathID = @p[tag=!isSneaking,tag=p] CopyPathID
execute at @s as @p[tag=isSneaking,tag=p] run scoreboard players add currentPathID PathID 1
execute at @s as @p[tag=isSneaking,tag=p] run scoreboard players operation @p[tag=isSneaking,tag=p] CopyPathID = currentPathID PathID
execute at @s as @p[tag=isSneaking,tag=p] store result block ~ 0 ~ Items[0].tag.Enchantments[5].lvl int 1 run scoreboard players operation @e[tag=npcPathPoint,limit=1] PathID = currentPathID PathID


execute store result block ~ 0 ~ Items[0].tag.Enchantments[6].lvl int 1 run scoreboard players set @e[tag=npcPathPoint,limit=1] pathEnding 0


tellraw @p[tag=p] ["",{"text":"Placed Path on Path ","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=npcPathPoint,limit=1]","objective":"PathID"},"bold":true,"color":"gold"},{"text":" with point ID ","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=npcPathPoint,limit=1]","objective":"PathPointID"},"bold":true,"color":"gold"}]


kill @s