# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:entity.silverfish.hurt master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill Grindylow
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/grindylow/grindylow_death

execute store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 0

# Animation
scoreboard players remove @s animTest 1
scoreboard players set @s[scores={animTest=..0}] animTest 9

execute if score @s animTest matches 9 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 92
execute if score @s animTest matches 6 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute if score @s animTest matches 3 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1

# Poison player
execute at @s as @p[distance=..1,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] if entity @s[nbt=!{HurtTime:0s},scores={poisoned=0}] run function hp:health/poison

# Idle sounds
scoreboard players add @s tmp3 1
execute as @s[scores={tmp3=50..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s tmp3 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle