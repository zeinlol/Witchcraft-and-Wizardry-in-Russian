# Check if it is day or night (Safe Hogwarts music only plays during the day)
tag @s remove isDay
execute store result score @s tmp run time query daytime
execute if score @s tmp matches 23500.. run tag @s add isDay
execute if score @s tmp matches ..11500 run tag @s add isDay

scoreboard players operation @s musicPhase += systick time

execute as @s[tag=playingAmbientMusic] if score @s musicPhase matches 420000.. run scoreboard players set @s queuedMusic 7
execute as @s[tag=playingAmbientMusic] if score @s musicPhase matches 420000.. if score @s musicPlaying matches 7 run tag @s remove playingAmbientMusic
execute as @s[tag=!playingAmbientMusic] if score @s musicPhase matches 420000.. if score @s musicPlaying matches 7 run scoreboard players set @s musicPhase -220000
execute as @s[tag=!playingAmbientMusic] if score @s musicPhase matches 0.. run tag @s add playingAmbientMusic

execute as @s[tag=playingAmbientMusic] if score @s musicPhase matches 420000.. if score @s triggerMusic matches 20 run function hp:music/music/silence

# For the most part this controls what music is played when:

# At Hogwarts play eerie music in the sewers / caves and safe music above ground

# Detect if you are underground by using outdoor ambience as a mask and y level but remove Гостинная Пуффендуя
tag @s remove underground
execute as @s[x=501,y=0,z=-165,dx=452,dy=50,dz=613] unless score @s ambiencePlaying matches 10 unless score @s ambiencePlaying matches 29 run tag @s add underground
execute as @s[x=773,y=12,z=137,dx=73,dy=17,dz=48] run tag @s remove underground

execute as @s[tag=playingAmbientMusic,scores={lastRegion=1,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 5 if score @s ambiencePlaying matches 14 run function hp:music/music/eerie
execute as @s[tag=playingAmbientMusic,scores={lastRegion=1,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 6 if score @s ambiencePlaying matches 29 run function hp:music/music/mysterious
execute as @s[tag=playingAmbientMusic,scores={lastRegion=1,triggerMusic=20..,queuedMusic=0},tag=isDay,tag=!underground] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 4 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run function hp:music/music/safe
execute as @s[tag=playingAmbientMusic,scores={lastRegion=1,triggerMusic=20..,queuedMusic=0},tag=isDay,tag=underground] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 7 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run function hp:music/music/silence
execute as @s[tag=playingAmbientMusic,scores={lastRegion=1,triggerMusic=20..,queuedMusic=0},tag=!isDay] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 7 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run function hp:music/music/silence

execute as @s[tag=playingAmbientMusic,scores={lastRegion=2,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. if entity @s[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] unless score @s musicPlaying matches 6 run function hp:music/music/mysterious
execute as @s[tag=playingAmbientMusic,scores={lastRegion=2,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless entity @s[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] unless score @s musicPlaying matches 7 run function hp:music/music/silence

execute as @s[tag=playingAmbientMusic,scores={lastRegion=3..6,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 7 run function hp:music/music/silence

execute as @s[tag=playingAmbientMusic,scores={lastRegion=7,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 5 run function hp:music/music/eerie

# Тайная Комната
execute as @s[tag=playingAmbientMusic,scores={lastRegion=8,triggerMusic=20..,queuedMusic=0},x=6388,y=17,z=838,dx=294,dy=128,dz=160] unless score @s musicPlaying matches 5 run function hp:music/music/eerie

# Challenge Chambers
execute as @s[tag=playingAmbientMusic,scores={lastRegion=8,triggerMusic=20..,queuedMusic=0},x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 7 run function hp:music/music/silence
execute as @s[tag=playingAmbientMusic,scores={lastRegion=8,triggerMusic=20..,queuedMusic=0},x=1810,y=0,z=609,dx=194,dy=105,dz=167] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 6 run function hp:music/music/mysterious
execute as @s[tag=playingAmbientMusic,scores={lastRegion=8,triggerMusic=20..,queuedMusic=0},x=1897,y=0,z=766,dx=129,dy=105,dz=56] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 6 run function hp:music/music/mysterious

# Dungeon Delving
execute as @s[tag=playingAmbientMusic,scores={lastRegion=8,triggerMusic=20..,queuedMusic=0},x=1641,y=2,z=761,dx=253,dy=139,dz=211] unless score @s musicPlaying matches 5 run function hp:music/music/eerie

execute as @s[tag=playingAmbientMusic,scores={lastRegion=9..10,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 7 run function hp:music/music/silence

execute as @s[tag=playingAmbientMusic,scores={lastRegion=11,triggerMusic=20..,queuedMusic=0}] unless score @s musicPhase matches 420000.. unless score @s musicPlaying matches 5 run function hp:music/music/eerie


# During silence
execute as @s[tag=!playingAmbientMusic,scores={triggerMusic=20}] unless score @s musicPlaying matches 7 run scoreboard players set @s queuedMusic 0
execute as @s[tag=!playingAmbientMusic,scores={triggerMusic=20}] unless score @s musicPlaying matches 7 run function hp:music/music/silence

execute as @s[tag=playingAmbientMusic,scores={musicPhase=420000..,triggerMusic=20}] unless score @s musicPlaying matches 7 run scoreboard players set @s queuedMusic 0
execute as @s[tag=playingAmbientMusic,scores={musicPhase=420000..,triggerMusic=20}] unless score @s musicPlaying matches 7 run function hp:music/music/silence 


execute as @s[scores={lastRegion=1,triggerMusic=..19}] unless score @s musicPlaying matches 5 if score @s ambiencePlaying matches 14 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=1,triggerMusic=..19}] unless score @s musicPlaying matches 6 if score @s ambiencePlaying matches 29 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=1,triggerMusic=..19},tag=isDay,tag=!underground] unless score @s musicPlaying matches 4 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=1,triggerMusic=..19},tag=isDay,tag=underground] unless score @s musicPlaying matches 7 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=1,triggerMusic=..19},tag=!isDay] unless score @s musicPlaying matches 4 unless score @s ambiencePlaying matches 29 unless score @s ambiencePlaying matches 14 run scoreboard players add @s triggerMusic 2


execute as @s[scores={lastRegion=2,triggerMusic=..19}] if entity @s[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] unless score @s musicPlaying matches 6 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=2,triggerMusic=..19}] unless entity @s[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] unless score @s musicPlaying matches 6 run scoreboard players add @s triggerMusic 2

execute as @s[scores={lastRegion=3..6,triggerMusic=..19}] unless score @s musicPlaying matches 7 run scoreboard players add @s triggerMusic 2

execute as @s[scores={lastRegion=7,triggerMusic=..19}] unless score @s musicPlaying matches 5 run scoreboard players add @s triggerMusic 2

# Тайная Комната
execute as @s[scores={lastRegion=8,triggerMusic=..19},x=6388,y=17,z=838,dx=294,dy=128,dz=160] unless score @s musicPlaying matches 5 run scoreboard players add @s triggerMusic 2

# Challenge Chambers
execute as @s[scores={lastRegion=8,triggerMusic=..19},x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 7 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=8,triggerMusic=..19},x=1810,y=0,z=609,dx=194,dy=105,dz=167] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 6 run scoreboard players add @s triggerMusic 2
execute as @s[scores={lastRegion=8,triggerMusic=..19},x=1897,y=0,z=766,dx=129,dy=105,dz=56] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] unless score @s musicPlaying matches 6 run scoreboard players add @s triggerMusic 2

# Dungeon Delving
execute as @s[scores={lastRegion=8,triggerMusic=..19},x=1641,y=2,z=761,dx=253,dy=139,dz=211] unless score @s musicPlaying matches 5 run scoreboard players add @s triggerMusic 2

execute as @s[scores={lastRegion=9..10,triggerMusic=..19}] unless score @s musicPlaying matches 7 run scoreboard players add @s triggerMusic 2

execute as @s[scores={lastRegion=11,triggerMusic=..19}] unless score @s musicPlaying matches 5 run scoreboard players add @s triggerMusic 2


scoreboard players remove @s[scores={triggerMusic=1..}] triggerMusic 1