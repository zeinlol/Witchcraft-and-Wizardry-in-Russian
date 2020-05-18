# If the player is close to the audio source and the sound is not playing
execute as @a[tag=!playingCrowdAmbience,distance=..16,tag=!doNotPlayCrowdAmbience] run function hp:ambience/crowd/play_crowd_ambience

# Remove the tag playingCrowdAmbience if the player is too far away to hear the audio source. Since multiple audio sources with the same sound can be present it is nescesary to run this process in two cycles.
# Otherwise each audiosource would override the others' spheres of influence. 
execute if score ambienceSoundCheck global matches 1 as @a[distance=..16] run tag @s add affectedByCrowdAmbience
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=1},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP1 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=2},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP2 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=3},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP3 ambientTime 0
execute if score ambienceSoundCheck global matches 0 as @p[scores={playerID=4},tag=!affectedByCrowdAmbience] run scoreboard players set crowdP4 ambientTime 0
execute if score ambienceSoundCheck global matches 0 if score crowdP1 ambientTime matches ..0 as @p[scores={playerID=1},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP2 ambientTime matches ..0 as @p[scores={playerID=2},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP3 ambientTime matches ..0 as @p[scores={playerID=3},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience
execute if score ambienceSoundCheck global matches 0 if score crowdP4 ambientTime matches ..0 as @p[scores={playerID=4},tag=!affectedByCrowdAmbience] run tag @s remove playingCrowdAmbience

# Reset sound when it's over if the player is still playing the sound
execute unless score crowdP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience
execute unless score crowdP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingCrowdAmbience,distance=..16] run function hp:ambience/crowd/play_crowd_ambience