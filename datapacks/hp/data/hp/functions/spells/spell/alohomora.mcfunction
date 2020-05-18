tag @s add castAlohomora
tag @s add anim_alohomora
execute as @e[tag=hover,tag=alohomora_door] run tag @s add doorOpened
execute as @e[tag=hover,tag=alohomora_door] at @s run particle minecraft:dust 1 0.75 0 1 ^0.3 ^1.05 ^0.7 0.1 0.1 0.1 0 10 force
execute as @e[tag=hover,tag=alohomora_door] at @s run particle minecraft:dust 1 0.75 0 1 ^0.3 ^1.05 ^0.25 0.1 0.1 0.1 0 10 force