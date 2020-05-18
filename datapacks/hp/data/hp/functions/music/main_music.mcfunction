# Music Controller
execute as @s[tag=musicController,tag=!isFastTravelling] run function hp:music/music_controller

# Play soundscape

# Reduce time (but not if systick is greater than 300 since that probably means the game was paused and sounds stop on the menu. It's a hack and it won't always work)
execute unless score systick time matches 250.. run scoreboard players operation @s[scores={musicTime=1..}] musicTime -= systick time

execute as @s[scores={musicTime=..0,queuedMusic=0}] run scoreboard players operation @s musicTrack = @s musicPlaying
execute as @s[scores={musicTime=..0,queuedMusic=1..}] run scoreboard players operation @s musicTrack = @s queuedMusic
execute as @s[scores={musicTime=..0}] run scoreboard players set @s queuedMusic 0
execute as @s[scores={musicTime=..0},tag=inGame,tag=play,tag=!doNotPlayAmbience] run function hp:music/play_music