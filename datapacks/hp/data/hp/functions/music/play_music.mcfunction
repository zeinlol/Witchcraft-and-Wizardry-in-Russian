# Stop sound
execute unless score @s musicPlaying = @s musicTrack run stopsound @s record

# Fade
execute unless score @s musicTime matches ..0 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=2}] at @s run playsound minecraft:custom.music.swish_and_flick_stop record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=3}] at @s run playsound minecraft:custom.music.wands_at_the_ready_stop record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 unless score @s musicPlaying = @s musicTrack if score @s musicTrack matches 7 as @s[scores={musicPlaying=4}] at @s run playsound minecraft:custom.music.ambient_safe_stop record @s ~ ~ ~ 1000000 1 1

# Music time is not 100 % accurate and will shift if the player pauses the game or if their game is stuttering but this is an attempt to select the best stop sound to play to get a transition that is as seamless as possible
execute unless score @s musicTime matches ..0 if score @s musicTime matches ..55000 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=5}] at @s run playsound minecraft:custom.music.ambient_eerie_stop2 record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 if score @s musicTime matches 55000..91000 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=5}] at @s run playsound minecraft:custom.music.ambient_eerie_stop record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 if score @s musicTime matches 91000..130000 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=5}] at @s run playsound minecraft:custom.music.ambient_eerie_stop2 record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 if score @s musicTime matches 130000..175000 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=5}] at @s run playsound minecraft:custom.music.ambient_eerie_stop record @s ~ ~ ~ 1000000 1 1
execute unless score @s musicTime matches ..0 if score @s musicTime matches 175000.. unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=5}] at @s run playsound minecraft:custom.music.ambient_eerie_stop2 record @s ~ ~ ~ 1000000 1 1

execute unless score @s musicTime matches ..0 unless score @s musicPlaying = @s musicTrack as @s[scores={musicPlaying=6}] at @s run playsound minecraft:custom.music.ambient_mysterious_stop record @s ~ ~ ~ 1000000 1 1



# Play music and set duration
execute as @s[scores={musicTrack=1}] at @s run playsound minecraft:custom.music.witchcraft_and_wizardry record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=1}] run scoreboard players set @s musicTime 122000

execute as @s[scores={musicTrack=2}] at @s run playsound minecraft:custom.music.swish_and_flick record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=2}] run scoreboard players set @s musicTime 185000

execute as @s[scores={musicTrack=3}] at @s run playsound minecraft:custom.music.wands_at_the_ready record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=3}] run scoreboard players set @s musicTime 119000

execute as @s[scores={musicTrack=4}] unless score @s safeTheme matches 8.. at @s run playsound minecraft:custom.music.ambient_safe record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=4}] unless score @s safeTheme matches 8.. run scoreboard players set @s musicTime 175000
execute as @s[scores={musicTrack=4}] if score @s safeTheme matches 8.. at @s run playsound minecraft:custom.music.witchcraft_and_wizardry record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=4}] if score @s safeTheme matches 8.. run scoreboard players set @s musicTime 122000
execute as @s[scores={musicTrack=4}] unless score @s safeTheme matches 8.. run scoreboard players add @s safeTheme 1
execute as @s[scores={musicTrack=4}] if score @s safeTheme matches 8.. run scoreboard players set @s safeTheme 0

execute as @s[scores={musicTrack=5}] at @s run playsound minecraft:custom.music.ambient_eerie record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=5}] run scoreboard players set @s musicTime 201000

execute as @s[scores={musicTrack=6}] at @s run playsound minecraft:custom.music.ambient_mysterious record @s ~ ~ ~ 1000000 1 1
execute as @s[scores={musicTrack=6}] run scoreboard players set @s musicTime 200000

# Silence
execute as @s[scores={musicTrack=7}] run scoreboard players set @s musicTime 120000

scoreboard players operation @s musicPlaying = @s musicTrack
scoreboard players set @s musicTrack 0