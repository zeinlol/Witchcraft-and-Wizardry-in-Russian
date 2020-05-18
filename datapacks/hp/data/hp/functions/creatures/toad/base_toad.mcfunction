# Despawn if nest toad
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..40] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.toad.wound master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill Toad
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/toad/toad_death

execute store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 0

# Attack sound
# execute at @s[scores={animTest=0}] if entity @p[distance=..1.25] run playsound minecraft:custom.creatures.toad.wound master @a ~ ~ ~ 1
# execute at @s[scores={animTest=0}] if entity @p[distance=..1.25] run scoreboard players set @s animTest 15

# Animation for different toad types
execute as @s[tag=inAir,scores={animTest=1}] store result score @s tmp2 run data get entity @s OnGround
execute as @s[tag=inAir,scores={tmp2=1..}] run scoreboard players set @s animTest 0
execute as @s[tag=inAir,scores={tmp2=1..}] at @s run playsound minecraft:custom.creatures.toad.land master @a
execute as @s[tag=inAir,scores={tmp2=1..}] run tag @s remove inAir

execute as @s[scores={toadType=1,animTest=0}] run scoreboard players set @s tmp 131
execute as @s[scores={toadType=1,animTest=1}] run scoreboard players set @s tmp 130
execute as @s[scores={toadType=1,animTest=2..5}] run scoreboard players set @s tmp 129
execute as @s[scores={toadType=2,animTest=0}] run scoreboard players set @s tmp 128
execute as @s[scores={toadType=2,animTest=1}] run scoreboard players set @s tmp 127
execute as @s[scores={toadType=2,animTest=2..5}] run scoreboard players set @s tmp 126
execute as @s[scores={toadType=3,animTest=0}] run scoreboard players set @s tmp 125
execute as @s[scores={toadType=3,animTest=1}] run scoreboard players set @s tmp 124
execute as @s[scores={toadType=3,animTest=2..5}] run scoreboard players set @s tmp 123
execute as @s[scores={toadType=4,animTest=0}] run scoreboard players set @s tmp 122
execute as @s[scores={toadType=4,animTest=1}] run scoreboard players set @s tmp 121
execute as @s[scores={toadType=4,animTest=2..5}] run scoreboard players set @s tmp 120
execute as @s[scores={toadType=5,animTest=0}] run scoreboard players set @s tmp 119
execute as @s[scores={toadType=5,animTest=1}] run scoreboard players set @s tmp 118
execute as @s[scores={toadType=5,animTest=2..5}] run scoreboard players set @s tmp 117
execute as @s[scores={toadType=6,animTest=0}] run scoreboard players set @s tmp 116
execute as @s[scores={toadType=6,animTest=1}] run scoreboard players set @s tmp 115
execute as @s[scores={toadType=6,animTest=2..5}] run scoreboard players set @s tmp 114
execute as @s[scores={toadType=7,animTest=0}] run scoreboard players set @s tmp 113
execute as @s[scores={toadType=7,animTest=1}] run scoreboard players set @s tmp 112
execute as @s[scores={toadType=7,animTest=2..5}] run scoreboard players set @s tmp 111
execute as @s[scores={toadType=8,animTest=0}] run scoreboard players set @s tmp 110
execute as @s[scores={toadType=8,animTest=1}] run scoreboard players set @s tmp 109
execute as @s[scores={toadType=8,animTest=2..5}] run scoreboard players set @s tmp 108

scoreboard players remove @s[scores={animTest=2..}] animTest 1
execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @s tmp

# Poison player if venomous toad
execute as @s[scores={toadType=5..8}] at @s as @p[distance=..1,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] if entity @s[nbt=!{HurtTime:0s},scores={poisoned=0}] run function hp:health/poison

# Idle sounds
scoreboard players add @s tmp3 1
execute as @s[scores={tmp3=50..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.toad.idle master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s tmp3 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle


scoreboard players add @s idle 1
execute as @s[scores={idle=20..}] if score global Random matches ..30 at @s run function hp:creatures/toad/toad_jump