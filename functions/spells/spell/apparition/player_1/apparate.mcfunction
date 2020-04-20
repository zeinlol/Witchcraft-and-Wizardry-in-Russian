# Appiration
execute as @s[scores={apparating=10..}] at 0-0-10-0-5 rotated as @s run tp @s ~ ~ ~

# X
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result score @s apparateX run data get entity @s Pos[0] 100
execute as @s[tag=!spotNotValid] at @s anchored feet run scoreboard players operation 00000000-0000-0010-0000-000000000005 apparateX -= @p[tag=activePlayer] apparateX
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result entity @s Pos[0] double 0.01 run scoreboard players get @s apparateX

# Y
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result score @s apparateY run data get entity @s Pos[1] 100
execute as @s[tag=!spotNotValid] at @s anchored feet run scoreboard players operation 00000000-0000-0010-0000-000000000005 apparateY -= @p[tag=activePlayer] apparateY
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result entity @s Pos[1] double 0.01 run scoreboard players get @s apparateY

# Z
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result score @s apparateZ run data get entity @s Pos[2] 100
execute as @s[tag=!spotNotValid] at @s anchored feet run scoreboard players operation 00000000-0000-0010-0000-000000000005 apparateZ -= @p[tag=activePlayer] apparateZ
execute as @s[tag=!spotNotValid] at @s anchored feet as 0-0-10-0-5 store result entity @s Pos[2] double 0.01 run scoreboard players get @s apparateZ


# Visual effects
execute as @s[scores={apparating=11..}] run effect give @s minecraft:speed 1 5 true
execute as @s[scores={apparating=11..}] run effect give @s minecraft:levitation 1 255 true
execute as @s[scores={apparating=11..}] run tag @s add isLevitating
execute as @s[scores={apparating=10}] run effect clear @s minecraft:levitation
execute as @s[scores={apparating=10}] run tag @s remove isLevitating
execute as @s[scores={apparating=10}] run effect clear @s minecraft:speed


# Move player to actual target location in the end to make up for any small difference.
execute as @s[scores={apparating=10}] at 0-0-10-0-1 rotated as @s run tp @s ~ ~.05 ~
execute as @s[scores={apparating=10}] run kill 0-0-10-0-5
execute at @s[scores={apparating=12}] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~
execute as @s[scores={apparating=10}] run scoreboard players set @s appirationMarker 2
execute as @s[scores={apparating=10}] run tag @s remove isApparating