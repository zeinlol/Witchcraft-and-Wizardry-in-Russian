# If the player is close to the audio source and the sound is not playing
execute as @a[tag=!playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience

# Remove the tag playingThamesAmbience if the player is too far away to hear the audio source. Since multiple audio sources with the same sound can be present it is nescesary to run this process in two cycles.
# Otherwise each audiosource would override the others' spheres of influence. 
execute if score ambienceSoundCheck global matches 1 as @a[distance=..80] run tag @s add affectedByThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP1 ambientTime matches ..0 as @a[scores={playerID=1},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP2 ambientTime matches ..0 as @a[scores={playerID=2},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP3 ambientTime matches ..0 as @a[scores={playerID=3},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience
execute if score ambienceSoundCheck global matches 0 if score thamesP4 ambientTime matches ..0 as @a[scores={playerID=4},tag=!affectedByThamesAmbience] run tag @s remove playingThamesAmbience


# Reset sound when it's over if the player is still playing the sound
execute unless score thamesP1 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=1},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP2 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=2},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP3 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=3},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience
execute unless score thamesP4 ambientTime matches 1.. positioned ~ ~4 ~ as @p[scores={playerID=4},tag=playingThamesAmbience,distance=..80] run function hp:ambience/thames_river/play_thames_ambience