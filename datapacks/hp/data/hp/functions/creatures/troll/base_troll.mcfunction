# Despawn if nest skeleton
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..60] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100

# This is to aggro the iron golem when you hurt it in case it was somehow un-aggroed
execute at @s if score @s creatureHealth < @s oldHealth run scoreboard players set @s tmp2 11
execute at @s if score @s creatureHealth < @s oldHealth run playsound minecraft:entity.iron_golem.custom_hit master @a ~ ~ ~ 1 1
scoreboard players operation @s oldHealth = @s creatureHealth

scoreboard players remove @s[scores={tmp2=1..}] tmp2 1
execute as @s[scores={tmp2=1}] if score @s trollID matches 1 run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:5L,M:0L}}
execute as @s[scores={tmp2=1}] if score @s trollID matches 2 run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:6L,M:0L}}
execute as @s[scores={tmp2=1}] if score @s trollID matches 3 run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:7L,M:0L}}
execute as @s[scores={tmp2=1}] if score @s trollID matches 4 run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:8L,M:0L}}
execute as @s[scores={tmp2=1}] if score @s trollID matches 5 run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:9L,M:0L}}


# Kill troll
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/troll/troll_death

# Damage nearby players
execute at @s[scores={tmp=0}] run data merge entity @s {Invulnerable:1b}
execute as @s[scores={tmp=1}] at @p[distance=..1.75,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] facing entity @s feet rotated ~ 0 run summon creeper ^ ^1 ^0.5 {Silent:1b,Fuse:1s,ignited:60b,ExplosionRadius:1}
execute as @s[scores={tmp=1}] at @p[distance=..1.75,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run playsound minecraft:entity.iron_golem.custom_attack master @a ~ ~ ~ 1 1
execute at @s[scores={tmp=1}] as @p[distance=..1.75,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run effect give @s minecraft:instant_damage 1 3 true
execute at @s[scores={tmp=4}] run data merge entity @s {Invulnerable:0b}

scoreboard players add @s[scores={tmp=..39}] tmp 1
execute at @s[scores={tmp=40}] if entity @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp 0

# Make sure a targetting entity is present at all times
scoreboard players set @s tmp3 0
execute store success score @s tmp3 as @s[scores={trollID=1,tmp3=0}] unless entity 0-0-0-0-5 run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:5,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute store success score @s tmp3 as @s[scores={trollID=2,tmp3=0}] unless entity 0-0-0-0-6 run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:6,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute store success score @s tmp3 as @s[scores={trollID=3,tmp3=0}] unless entity 0-0-0-0-7 run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:7,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute store success score @s tmp3 as @s[scores={trollID=4,tmp3=0}] unless entity 0-0-0-0-8 run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:8,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute store success score @s tmp3 as @s[scores={trollID=5,tmp3=0}] unless entity 0-0-0-0-9 run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:9,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[scores={trollID=1,tmp3=1..}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:5L,M:0L}}
execute as @s[scores={trollID=2,tmp3=1..}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:6L,M:0L}}
execute as @s[scores={trollID=3,tmp3=1..}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:7L,M:0L}}
execute as @s[scores={trollID=4,tmp3=1..}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:8L,M:0L}}
execute as @s[scores={trollID=5,tmp3=1..}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:9L,M:0L}}

# If the player is too far away
execute as @s[tag=!playerIsTooFarAway] unless entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerIsTooFarAway
execute as @s[tag=playerIsTooFarAway,scores={trollID=1}] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:5L,M:0L}}
execute as @s[tag=playerIsTooFarAway,scores={trollID=2}] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:6L,M:0L}}
execute as @s[tag=playerIsTooFarAway,scores={trollID=3}] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:7L,M:0L}}
execute as @s[tag=playerIsTooFarAway,scores={trollID=4}] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:8L,M:0L}}
execute as @s[tag=playerIsTooFarAway,scores={trollID=5}] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:9L,M:0L}}
execute as @s[tag=playerIsTooFarAway] if entity @p[distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s remove playerIsTooFarAway

# If the player relogs
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @s[scores={trollID=1}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:5L,M:0L}}
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @s[scores={trollID=2}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:6L,M:0L}}
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @s[scores={trollID=3}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:7L,M:0L}}
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @s[scores={trollID=4}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:8L,M:0L}}
execute if entity @p[scores={relogTimer=1},distance=..100,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] as @s[scores={trollID=5}] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:9L,M:0L}}

# tp target to nearest player
execute at @s[scores={trollID=1}] run tp 0-0-0-0-5 @p
execute at @s[scores={trollID=2}] run tp 0-0-0-0-6 @p
execute at @s[scores={trollID=3}] run tp 0-0-0-0-7 @p
execute at @s[scores={trollID=4}] run tp 0-0-0-0-8 @p
execute at @s[scores={trollID=5}] run tp 0-0-0-0-9 @p

