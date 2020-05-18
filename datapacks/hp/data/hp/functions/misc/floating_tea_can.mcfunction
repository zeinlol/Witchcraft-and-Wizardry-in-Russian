# If the server deletes the entities scoreboard values the entity it needs to be reset so it doesn't get offset
execute as @s[scores={animTest=601..}] run function hp:misc/reset_floating_tea_can

scoreboard players add @s animTest 1
scoreboard players add @s[scores={animTest=150..190}] animState 1
scoreboard players remove @s[scores={animTest=260..300}] animState 1
scoreboard players add @s[scores={animTest=450..490}] animState 1
scoreboard players remove @s[scores={animTest=560..600}] animState 1

# Animation

execute as @s[scores={animTest=1..150}] at @s run tp @s ^.0153 ^ ^ ~-.4 ~
execute as @s[scores={animTest=301..450}] at @s run tp @s ^-.0153 ^ ^ ~.4 ~

execute as @s[scores={animTest=192}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:6,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=194}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:5,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=196}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:4,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=198}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:3,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=200}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:2,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=262}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:1,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=264}] run data merge entity @s {HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32,Unbreakable:1b}},{}]}

execute as @s[scores={animTest=150..300}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s animState
execute as @s[scores={animTest=492}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:6,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=494}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:5,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=496}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:4,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=498}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:3,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=500}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:2,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=562}] run data merge entity @s {HandItems:[{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:1,Unbreakable:1b}},{}]}
execute as @s[scores={animTest=564}] run data merge entity @s {HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32,Unbreakable:1b}},{}]}

execute as @s[scores={animTest=450..600}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s animState

# Sound
execute as @s[scores={animTest=493}] at @s run playsound minecraft:custom.misc.tea_can.pouring master @a
execute as @s[scores={animTest=193}] at @s run playsound minecraft:custom.misc.tea_can.pouring master @a