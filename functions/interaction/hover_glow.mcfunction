# Hagrid (consists of multiple entities)
execute as @s[tag=hover,tag=hagrid] at @s as @e[tag=hagrid,distance=..3,tag=!hover] run function hp:interaction/hover_glow/hagrid

execute as @s[tag=!hover,tag=!noHover,tag=!wingardiumGlow,tag=glowing] run function hp:interaction/hover_glow/not_glowing
execute as @s[tag=hover,tag=!noHover,tag=!glowing] run function hp:interaction/hover_glow/glowing

# Multiplayer
execute as @s[tag=previousPlayerHover,tag=!hagrid,tag=!noHover,tag=!glowing] run function hp:interaction/hover_glow/previous_player_hover
execute as @s[tag=previousPlayerHover,tag=hagrid,tag=!noHover,tag=!glowing] at @s as @e[tag=hagrid,distance=..3,tag=!hover] run function hp:interaction/hover_glow/previous_player_hover


execute store result score @s tmp run tag @s remove hover
execute if score @s tmp matches 1.. run tag @p[tag=activePlayer] add hasClearedHover
execute if score @s tmp matches 1.. if entity @p[tag=activePlayer,scores={playerID=1..3}] run tag @s add previousPlayerHover
execute store result score @s tmp run tag @s remove questHover
execute if score @s tmp matches 1.. run tag @p[tag=activePlayer] add hasClearedQuestHover