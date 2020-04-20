execute as @s[tag=resetQuests] at @s unless block ~ ~-2 ~ minecraft:quartz_slab run data merge block ~ ~-1 ~ {Command:""}


execute at @s if block ~ ~-1 ~ minecraft:chain_command_block[facing=south] run tp @s ~ ~ ~1
execute at @s if block ~ ~-1 ~ minecraft:chain_command_block[facing=west] run tp @s ~-1 ~ ~
execute at @s if block ~ ~-1 ~ minecraft:chain_command_block[facing=north] run tp @s ~ ~ ~-1
execute at @s if block ~ ~-1 ~ minecraft:repeating_command_block[facing=north] run tp @s ~ ~ ~-1
execute at @s if block ~ ~-1 ~ minecraft:chain_command_block[facing=east] run tp @s ~1 ~ ~

scoreboard players remove @s tmp 1

# Recursive reset players quest
execute as @s[tag=resetQuests,scores={tmp=1..}] run function hp:quests/move_quest_setup
execute as @s[tag=resetQuests,scores={tmp=0}] run tp @s 10010 66 12
execute as @s[tag=resetQuests,scores={tmp=0}] run tag @s remove resetQuests