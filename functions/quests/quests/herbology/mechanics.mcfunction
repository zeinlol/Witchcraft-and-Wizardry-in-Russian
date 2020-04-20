# make stars rotate slowly (not in main_global to reduce number of @e)
execute positioned 778 51 36 as @e[tag=herbologyStar,limit=4,sort=nearest] at @s run tp @s ~ ~ ~ ~2 ~

# Spawn toads when falling in pit
execute if score herbologyHasTriggeredToads global matches 0 if entity @p[x=823,y=47,z=40,dx=842,dy=4,dz=8] run function hp:quests/quests/herbology/summon_toads