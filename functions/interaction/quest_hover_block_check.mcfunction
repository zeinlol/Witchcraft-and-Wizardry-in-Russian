# This function raytraces back to the player to check if anything is blocking the hover. It's not very precise, but it works well enough
scoreboard players remove hoverRC tmp 1
execute unless block ~ ~ ~ #hp:hover_ray run tag @s remove questHover
execute unless block ~ ~ ~ #hp:hover_ray run scoreboard players set hoverRC tmp 0
execute positioned ~ ~-1.5 ~ if entity @p[tag=activePlayer,distance=..0.3] run scoreboard players set hoverRC tmp 0
execute if score hoverRC tmp matches 1.. positioned ^ ^ ^.2 run function hp:interaction/quest_hover_block_check

# execute if score hoverRC tmp matches 0 run setblock ~ ~ ~ jungle_planks