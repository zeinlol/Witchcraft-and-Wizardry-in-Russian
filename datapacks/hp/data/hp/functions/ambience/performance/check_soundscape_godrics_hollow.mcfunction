# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

tag @s remove godricsHollowInterior


# Test for flying
execute if entity @s[scores={ambienceLocation=33}] run tag @s add playerIsOutside

# Bagshot
execute as @s[x=6784,dx=13,y=35,dy=13,z=3252,dz=8] run tag @s add godricsHollowInterior
execute as @s[x=6783,dx=14,y=49,dy=0,z=3253,dz=6] run tag @s add godricsHollowInterior
execute as @s[x=6783,dx=14,y=50,dy=0,z=3254,dz=4] run tag @s add godricsHollowInterior
execute as @s[x=6778,dx=19,y=51,dy=0,z=3255,dz=2] run tag @s add godricsHollowInterior


execute unless entity @s[scores={ambienceLocation=6}] as @s[tag=godricsHollowInterior,tag=!isFastTravelling] run function hp:ambience/soundscapes/diagon_alley_store

execute unless entity @s[scores={ambienceLocation=33}] as @s[tag=!godricsHollowInterior,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_winds