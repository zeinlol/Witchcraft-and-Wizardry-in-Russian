execute as @s[scores={currentHealth=21..25}] run scoreboard players set @s damageOverlay 1
execute as @s[scores={currentHealth=21..25}] run scoreboard players set @s heartBeatLength 30
execute as @s[scores={currentHealth=16..20}] run scoreboard players set @s damageOverlay 2
execute as @s[scores={currentHealth=16..20}] run scoreboard players set @s heartBeatLength 26
execute as @s[scores={currentHealth=11..15}] run scoreboard players set @s damageOverlay 3
execute as @s[scores={currentHealth=11..15}] run scoreboard players set @s heartBeatLength 23
execute as @s[scores={currentHealth=6..10}] run scoreboard players set @s damageOverlay 4
execute as @s[scores={currentHealth=6..10}] run scoreboard players set @s heartBeatLength 20
execute as @s[scores={currentHealth=0..5}] run scoreboard players set @s damageOverlay 5
execute as @s[scores={currentHealth=0..5}] run scoreboard players set @s heartBeatLength 15

execute as @s[scores={heartBeatLength=1..,heartBeatLoop=1..}] run scoreboard players remove @s heartBeatLoop 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0,currentHealth=21..25}] at @s run playsound minecraft:custom.heart_beat master @s ~ ~ ~ 1 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0,currentHealth=16..20}] at @s run playsound minecraft:custom.heart_beat master @s ~ ~ ~ 1.2 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0,currentHealth=11..15}] at @s run playsound minecraft:custom.heart_beat master @s ~ ~ ~ 1.4 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0,currentHealth=6..10}] at @s run playsound minecraft:custom.heart_beat master @s ~ ~ ~ 1.6 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0,currentHealth=0..5}] at @s run playsound minecraft:custom.heart_beat master @s ~ ~ ~ 2 1
execute as @s[scores={heartBeatLength=1..,heartBeatLoop=0}] run scoreboard players operation @s heartBeatLoop = @s heartBeatLength
