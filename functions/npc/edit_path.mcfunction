execute as @e[type=minecraft:endermite,tag=npcPathPoint] at @s unless block ~ 0 ~ minecraft:dropper run function hp:npc/edit_path_setup
execute as @e[type=minecraft:endermite,tag=npcPathPoint] at @s if block ~ 0 ~ minecraft:dropper run tellraw @a {"text":"There already is a path point on this block. I can make it so multiple points can be on the same block, but it's kind of difficult :/","color":"red"}
execute as @e[type=minecraft:endermite,tag=npcPathPoint] at @s if block ~ 0 ~ minecraft:dropper run kill @s


execute at @s[tag=showPathPoints] run fill ~-30 1 ~-30 ~30 1 ~30 minecraft:repeating_command_block{Command:"function hp:npc/edit_path_display",auto:1b,CustomName:"{\"text\":\"stage0\"}"} replace light_gray_wool