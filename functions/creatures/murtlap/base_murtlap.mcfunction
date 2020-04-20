# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill small spider
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/murtlap/murtlap_death

# Step sound
scoreboard players add @s animState 1
execute at @s[scores={animState=20..},nbt=!{Motion:[0d,0d,0d]}] at @s run playsound minecraft:entity.silverfish.step master @a
execute at @s[scores={animState=20..}] run scoreboard players set @s animState 0

# Poison player
execute at @s as @p[distance=..1,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] if entity @s[nbt=!{HurtTime:0s},scores={poisoned=0}] run function hp:health/poison