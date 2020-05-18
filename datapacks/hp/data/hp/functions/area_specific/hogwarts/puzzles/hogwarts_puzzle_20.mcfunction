# This is the block animation for the crumbling wall
execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a -80 13 221 2 1
execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 run fill -81 12 221 -79 14 221 air destroy



execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 positioned -78 10 216 run function hp:creatures/skeleton/summon_skeleton
execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 positioned -80 10 215 run function hp:creatures/skeleton/summon_skeleton
execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 positioned -81 11 218 run function hp:creatures/skeleton/summon_skeleton
execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned



execute if score hogwartsPuzzle20 global matches 0 if score e78915a1-ca33-47e9-b6a4-291e05b54a4f pillarState matches 2 run scoreboard players set hogwartsPuzzle20 global 1