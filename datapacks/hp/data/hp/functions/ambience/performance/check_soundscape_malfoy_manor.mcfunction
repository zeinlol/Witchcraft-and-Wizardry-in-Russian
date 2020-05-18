# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

tag @s remove malfoyManorInterior

# Bagshot
execute as @s[x=5047,dx=12,y=61,dy=27,z=7026,dz=78] run tag @s add malfoyManorInterior
execute as @s[x=5042,dx=22,y=63,dy=25,z=7033,dz=64] run tag @s add malfoyManorInterior
execute as @s[x=5018,dx=89,y=33,dy=28,z=7029,dz=84] run tag @s add malfoyManorInterior
execute as @s[x=5061,dx=8,y=53,dy=52,z=7082,dz=8] run tag @s add malfoyManorInterior
execute as @s[x=5037,dx=8,y=53,dy=52,z=7082,dz=8] run tag @s add malfoyManorInterior
execute as @s[x=5047,dx=12,y=53,dy=52,z=7100,dz=4] run tag @s add malfoyManorInterior
execute as @s[x=5047,dx=12,y=53,dy=52,z=7026,dz=4] run tag @s add malfoyManorInterior
execute as @s[x=5037,dx=8,y=53,dy=52,z=7040,dz=8] run tag @s add malfoyManorInterior
execute as @s[x=5061,dx=8,y=53,dy=52,z=7040,dz=8] run tag @s add malfoyManorInterior
execute as @s[x=5039,dx=28,y=61,dy=33,z=7060,dz=10] run tag @s add malfoyManorInterior
execute as @s[x=5039,dx=28,y=94,dy=8,z=7062,dz=6] run tag @s add malfoyManorInterior


execute unless entity @s[scores={ambienceLocation=6}] as @s[tag=malfoyManorInterior,tag=!isFastTravelling] run function hp:ambience/soundscapes/diagon_alley_store

execute unless entity @s[scores={ambienceLocation=16}] as @s[tag=!malfoyManorInterior,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogwarts_grounds