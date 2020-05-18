# If the player is close to the audio source and the sound is not playing
execute as @a[tag=!playingBusAmbience,distance=..24,tag=!doNotPlayBusAmbience] run function hp:ambience/bus/play_bus_ambience

# Remove the tag playingBusAmbience if the player is too far away to hear the audio source. Since multiple audio sources with the same sound can be present it is nescesary to run this process in two cycles.
# Otherwise each audiosource would override the others' spheres of influence. 
execute if score ambienceSoundCheck global matches 1 as @a[distance=..24] run tag @s add affectedByBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience
execute if score ambienceSoundCheck global matches 0 if score busP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByBusAmbience] run tag @s remove playingBusAmbience


# Reset sound when it's over if the player is still playing the sound
execute unless score busP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience
execute unless score busP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingBusAmbience,distance=..24] run function hp:ambience/bus/play_bus_ambience