# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

# Test for flying
tag @s add playerIsOutside

execute unless entity @s[scores={ambienceLocation=37}] as @s[tag=!isFastTravelling,tag=!azkabanStorm] run function hp:ambience/soundscapes/azkaban
execute unless entity @s[scores={ambienceLocation=38}] as @s[tag=!isFastTravelling,tag=azkabanStorm] run function hp:ambience/soundscapes/azkaban_storm