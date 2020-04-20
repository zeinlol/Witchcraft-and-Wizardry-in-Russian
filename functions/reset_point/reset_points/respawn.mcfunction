execute as @s[scores={resetPointTimer=1}] run tag @s add fastFade
execute as @s[scores={resetPointTimer=2}] at @s run playsound minecraft:custom.ui.event10 master @s ~ ~ ~ 1 1 1
execute as @s[scores={resetPointTimer=2}] run function hp:reset_point/fade_in
execute as @s[scores={resetPointTimer=2}] run team join Creature @s

# Title defeated
execute as @s[scores={resetPointTimer=11}] run title @s times 20 100 20
execute as @s[scores={resetPointTimer=11}] run title @s subtitle {"text":"Мёртв","color":"gray"}
execute as @s[scores={resetPointTimer=11}] run title @s title {"text":""}

execute as @s[scores={resetPointTimer=11}] run effect give @s minecraft:resistance 100 255 true
execute as @s[scores={resetPointTimer=11}] run effect give @s minecraft:levitation 100 255 true
execute as @s[scores={resetPointTimer=11}] run tag @s add isLevitating

execute as @s[scores={resetPointTimer=119}] run tag @s add testDistance
execute as @s[scores={resetPointTimer=119}] run function hp:respawn/respawn
execute as @s[scores={resetPointTimer=120}] run tag @s add tpToRespawnPoint
execute as @s[scores={resetPointTimer=120}] run function hp:respawn/respawn

execute as @s[scores={resetPointTimer=120}] at @s run playsound minecraft:custom.ui.event3 master @s ~ ~ ~ 1 1 1

execute as @s[scores={resetPointTimer=150}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=151}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=152}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=153}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=154}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=155}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=156}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=157}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=158}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=159}] run effect give @s minecraft:instant_health 1 100 true
execute as @s[scores={resetPointTimer=160}] run effect give @s minecraft:instant_health 1 100 true

execute as @s[scores={resetPointTimer=150}] at @s run playsound minecraft:custom.ui.event7 master @s ~ ~ ~ 1 1 1
execute as @s[scores={resetPointTimer=150}] at @s run effect clear @s minecraft:levitation
execute as @s[scores={resetPointTimer=150}] run tag @s remove isLevitating
execute as @s[scores={resetPointTimer=150}] at @s run effect clear @s minecraft:resistance
execute as @s[scores={resetPointTimer=150}] at @s run playsound minecraft:custom.ui.event7 master @s ~ ~ ~ 1 1 1
execute as @s[scores={resetPointTimer=150}] run tag @s remove fastFade
execute as @s[scores={resetPointTimer=150}] run function hp:reset_point/fade_out
execute as @s[scores={resetPointTimer=150}] run team join all @s
execute as @s[scores={resetPointTimer=162}] run function hp:reset_point/exit_reset_point