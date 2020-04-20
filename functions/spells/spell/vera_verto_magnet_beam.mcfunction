# Move this forward recursively for either 30 blocks or until it hits another magnet
scoreboard players add @s rc_loop 1
execute if entity @e[tag=magnet,distance=..0.5,limit=1] run scoreboard players set @s rc_loop 30

# If it hits a magnetic object add a movable tag + priority based on which it hits first
execute positioned ~ ~-1 ~ as @s[tag=south] as @e[tag=magneticObject,distance=..0.5,limit=1] run tag @s add moveSouth
execute positioned ~ ~-1 ~ as @s[tag=north] as @e[tag=magneticObject,distance=..0.5,limit=1] run tag @s add moveNorth
execute positioned ~ ~-1 ~ as @s[tag=east] as @e[tag=magneticObject,distance=..0.5,limit=1] run tag @s add moveEast
execute positioned ~ ~-1 ~ as @s[tag=west] as @e[tag=magneticObject,distance=..0.5,limit=1] run tag @s add moveWest

# Which magnets should move first?
execute positioned ~ ~-1 ~ if entity @e[tag=magneticObject,distance=..0.5,limit=1] run scoreboard players add global magnetPriority 1
execute positioned ~ ~-1 ~ as @e[tag=magneticObject,distance=..0.5,limit=1] store result entity @s ArmorItems[3].tag.magnetPriority int 1 run scoreboard players operation @s magnetPriority = global magnetPriority

execute unless score @s rc_loop matches 30.. positioned ^ ^ ^1 run function hp:spells/spell/vera_verto_magnet_beam