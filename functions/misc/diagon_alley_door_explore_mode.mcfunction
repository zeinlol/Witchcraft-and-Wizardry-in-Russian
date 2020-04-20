execute positioned 2848 55 797 unless entity @s[distance=..40] run title @s times 5 20 5
execute positioned 2848 55 797 unless entity @s[distance=..40] run title @s title {"text":" "}
execute positioned 2848 55 797 unless entity @s[distance=..40] run title @s subtitle {"text":"You are too far away","bold":false,"color":"red"}
execute positioned 2848 55 797 if entity @s[distance=..40] run function hp:misc/diagon_alley_door/startup_open
execute positioned 2848 55 797 if entity @s[distance=..40] as @e[tag=diagonAlleyBrick,limit=1] run data merge entity @s {Glowing:0b}
execute positioned 2848 55 797 if entity @s[distance=..40] as @e[tag=diagonAlleyBrick,limit=1] run tag @s remove interactable
execute positioned 2848 55 797 if entity @s[distance=..40] as @e[tag=diagonAlleyBrick,limit=1] at @s run playsound minecraft:custom.gameplay_element.diagon_alley.brick_interact master @a ~ ~ ~