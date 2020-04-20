# Init appiration
# Figure out distance to apparate marker (I tried more complicated trigonometry, but either there is some bug or more likely i'm just too stupid to figure it out)
# We can calculate the distance from the raycaster
scoreboard players set @s apparating 17
data merge entity 0-0-10-0-2 {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{}]}

# Calculate step (how far the player needs to move each tick)
execute at @s anchored feet store result score @s apparateX run data get entity @s Pos[0] 100
execute at @s anchored feet as 0-0-10-0-2 store result score @s apparateX run data get entity @s Pos[0] 100
execute at @s anchored feet run scoreboard players operation @s apparateX -= 00000000-0000-0010-0000-000000000002 apparateX
execute at @s anchored feet store result score @s apparateY run data get entity @s Pos[1] 100
execute at @s anchored feet as 0-0-10-0-2 store result score @s apparateY run data get entity @s Pos[1] 100
execute at @s anchored feet run scoreboard players operation @s apparateY -= 00000000-0000-0010-0000-000000000002 apparateY
execute at @s anchored feet store result score @s apparateZ run data get entity @s Pos[2] 100
execute at @s anchored feet as 0-0-10-0-2 store result score @s apparateZ run data get entity @s Pos[2] 100
execute at @s anchored feet run scoreboard players operation @s apparateZ -= 00000000-0000-0010-0000-000000000002 apparateZ


# Appiration takes 7 steps so I need to divide the distance by 7
scoreboard players set @s tmp 7
scoreboard players operation @s apparateX /= @s tmp
scoreboard players operation @s apparateY /= @s tmp
scoreboard players operation @s apparateZ /= @s tmp

execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["appirationPositionP1","appirationPosition"],UUIDMost:16,UUIDLeast:5}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["appirationPositionP2","appirationPosition"],UUIDMost:16,UUIDLeast:6}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["appirationPositionP3","appirationPosition"],UUIDMost:16,UUIDLeast:7}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["appirationPositionP4","appirationPosition"],UUIDMost:16,UUIDLeast:8}
execute at @s run playsound minecraft:custom.spell.apparate.depart master @a ~ ~ ~ 4
tag @s add isApparating