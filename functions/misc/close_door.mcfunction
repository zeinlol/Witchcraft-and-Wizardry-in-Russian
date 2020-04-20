setblock ~ ~1 ~ minecraft:barrier

execute as @s[scores={toolType=0},tag=south] run setblock ~ ~ ~ minecraft:cactus[age=4]
execute as @s[scores={toolType=0},tag=east] run setblock ~ ~ ~ minecraft:cactus[age=7]
execute as @s[scores={toolType=0},tag=north] run setblock ~ ~ ~ minecraft:cactus[age=6]
execute as @s[scores={toolType=0},tag=west] run setblock ~ ~ ~ minecraft:cactus[age=5]

execute as @s[scores={toolType=1},tag=south] run setblock ~ ~ ~ minecraft:piston_head[facing=north,short=true,type=normal]
execute as @s[scores={toolType=1},tag=east] run setblock ~ ~ ~ minecraft:piston_head[facing=west,short=true,type=normal]
execute as @s[scores={toolType=1},tag=north] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=normal]
execute as @s[scores={toolType=1},tag=west] run setblock ~ ~ ~ minecraft:piston_head[facing=east,short=true,type=normal]

execute as @s[scores={toolType=2},tag=south] run setblock ~ ~ ~ minecraft:cactus[age=0]
execute as @s[scores={toolType=2},tag=east] run setblock ~ ~ ~ minecraft:cactus[age=3]
execute as @s[scores={toolType=2},tag=north] run setblock ~ ~ ~ minecraft:cactus[age=2]
execute as @s[scores={toolType=2},tag=west] run setblock ~ ~ ~ minecraft:cactus[age=1]

execute as @s[scores={toolType=3},tag=south] run setblock ~ ~ ~ minecraft:piston_head[facing=north,short=true,type=sticky]
execute as @s[scores={toolType=3},tag=east] run setblock ~ ~ ~ minecraft:piston_head[facing=west,short=true,type=sticky]
execute as @s[scores={toolType=3},tag=north] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute as @s[scores={toolType=3},tag=west] run setblock ~ ~ ~ minecraft:piston_head[facing=east,short=true,type=sticky]

execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID

tag @s add locked
tag @s add interactable
data merge entity @s[tag=alohomora_door] {HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}
data merge entity @s[tag=keyLockedDoor] {HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}
data merge entity @s[tag=riddleLockedDoor] {HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 50
