# Determine what ambient sound to play depending on the players position. For performance reasons this is executed every 5 ticks. - 4 times per second.

##############
## Ambience ##
##############

# This is also used to test if the player is inside, which will prevent them from flying
tag @s remove playerIsOutside

execute as @s[scores={lastRegion=1}] run function hp:ambience/performance/check_soundscape_hogwarts

execute as @s[scores={lastRegion=2}] run function hp:ambience/performance/check_soundscape_london

execute as @s[scores={lastRegion=3}] run function hp:ambience/performance/check_soundscape_hogsmeade_station

execute as @s[scores={lastRegion=4}] run function hp:ambience/performance/check_soundscape_hogsmeade

execute as @s[scores={lastRegion=5}] run function hp:ambience/performance/check_soundscape_ministry

execute as @s[scores={lastRegion=6}] run function hp:ambience/performance/check_soundscape_little_whinging

execute as @s[scores={lastRegion=7}] run function hp:ambience/performance/check_soundscape_azkaban

execute as @s[scores={lastRegion=8}] run function hp:ambience/performance/check_soundscape_spell_challenges

execute as @s[scores={lastRegion=9}] run function hp:ambience/performance/check_soundscape_godrics_hollow

execute as @s[scores={lastRegion=10}] run function hp:ambience/performance/check_soundscape_residences

execute as @s[scores={lastRegion=11}] run function hp:ambience/performance/check_soundscape_malfoy_manor

scoreboard players set @s checkAmbience 5