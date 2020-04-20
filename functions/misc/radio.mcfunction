execute as @s[scores={animTest=7}] store result score @s tmp2 run data get entity @s ArmorItems[3].tag.tmp2 1
execute as @s[scores={animTest=7}] store result score @s tmp3 run data get entity @s ArmorItems[3].tag.tmp3 1

# Reset fix
execute as @s[scores={animTest=7}] if score @s tmp2 = @s tmp3 run tag @s add resetServerBug
execute as @s[tag=resetServerBug] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @s[tag=resetServerBug] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @s[tag=resetServerBug] run tag @s remove resetServerBug

# Flip radio state
execute as @s[scores={animTest=7}] run scoreboard players operation @s tmp2 >< @s tmp3

execute as @s[scores={animTest=7}] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players get @s tmp2
execute as @s[scores={animTest=7}] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players get @s tmp3 

# Sound
execute as @s[scores={animTest=7,tmp2=0}] at @s run playsound minecraft:custom.music.radio.radio master @a ~ ~ ~ 1 1
execute as @s[scores={animTest=7,tmp2=0}] at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1
execute as @s[scores={animTest=7,tmp2=0}] at @s run scoreboard players set @s idle 57000
execute as @s[scores={animTest=7,tmp2=0}] at @s run tag @s add radioOn
execute as @s[scores={animTest=7,tmp2=1}] at @s run stopsound @a master minecraft:custom.music.radio.radio
execute as @s[scores={animTest=7,tmp2=1}] at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1.5
execute as @s[scores={animTest=7,tmp2=1}] at @s run scoreboard players set @s idle 0
execute as @s[scores={animTest=7,tmp2=1}] at @s run tag @s remove radioOn

execute as @s[scores={animTest=1..}] at @s run scoreboard players remove @s animTest 1

# Decay idle timer with tick time so the radio turns off when the music has ended
execute as @s[scores={idle=1..}] at @s run scoreboard players operation @s idle -= systick time
execute as @s[tag=radioOn] unless score @s idle matches 1.. run scoreboard players set @s animTest 7