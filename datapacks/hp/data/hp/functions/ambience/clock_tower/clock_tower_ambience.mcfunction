# If the player is close to the audio source and the sound is not playing
execute as @a[tag=!playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience

# Remove the tag playingLeavesAmbience if the player is too far away to hear the audio source. Since multiple audio sources with the same sound can be present it is nescesary to run this process in two cycles.
# Otherwise each audiosource would override the others' spheres of influence. 
execute if score ambienceSoundCheck global matches 1 as @a[distance=..40] run tag @s add affectedByClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience
execute if score ambienceSoundCheck global matches 0 if score clockTowerP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByClockTowerAmbience] run tag @s remove playingClockTowerAmbience


# Reset sound when it's over if the player is still playing the sound
execute unless score clockTowerP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience
execute unless score clockTowerP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingClockTowerAmbience,distance=..40] run function hp:ambience/clock_tower/play_clock_tower_ambience