# If the player is close to the audio source and the sound is not playing
execute as @a[tag=!playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience

# Remove the tag playingLeavesAmbience if the player is too far away to hear the audio source. Since multiple audio sources with the same sound can be present it is nescesary to run this process in two cycles.
# Otherwise each audiosource would override the others' spheres of influence. 
execute if score ambienceSoundCheck global matches 1 as @a[distance=..24] run tag @s add affectedByLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience
execute if score ambienceSoundCheck global matches 0 if score leavesP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByLeavesAmbience] run tag @s remove playingLeavesAmbience


# Reset sound when it's over if the player is still playing the sound
execute unless score leavesP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience
execute unless score leavesP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingLeavesAmbience,distance=..24] run function hp:ambience/leaves/play_leaves_ambience