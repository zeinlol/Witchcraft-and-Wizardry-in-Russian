# Despawn
execute unless entity @p[distance=..70] run kill @e[tag=ratVisual,limit=1,sort=nearest,distance=..2]
execute unless entity @p[distance=..70] run kill @s

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.rat.wound master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Water causes passengers to dismount, so I check if the entity doesn't have any passengers and if that's the case I kill the creature to prevent problems
execute store success score @s waterCheck run data get entity @s Passengers
execute as @s[scores={waterCheck=0}] run scoreboard players set @s creatureHealth 0

# Kill rat
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/rat/rat_death

execute at @s store result entity @e[tag=ratVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]

# Animation
execute as @s[scores={animTest=1}] run scoreboard players set @s tmp2 4
execute as @s[scores={animTest=3}] run scoreboard players set @s tmp2 3
execute as @s[scores={animTest=5}] run scoreboard players set @s tmp2 2
execute as @s[scores={animTest=7}] run scoreboard players set @s tmp2 3
execute as @s[scores={animTest=8..}] run scoreboard players set @s animTest 0
scoreboard players add @s animTest 1

scoreboard players set @s tmp 0
scoreboard players add @s animState 1
execute as @s[scores={animState=1}] run scoreboard players set @s tmp 5
execute as @s[scores={animState=2}] run scoreboard players set @s tmp 3
execute as @s[scores={animState=3}] run scoreboard players set @s tmp 0
execute as @s[scores={animState=4}] run scoreboard players set @s tmp -3
execute as @s[scores={animState=5}] run scoreboard players set @s tmp -5
execute as @s[scores={animState=6}] run scoreboard players set @s tmp -3
execute as @s[scores={animState=7}] run scoreboard players set @s tmp 0
execute as @s[scores={animState=8}] run scoreboard players set @s tmp 3
scoreboard players set @s[scores={animState=8..}] animState 0

execute at @s[nbt=!{Motion:[0d,0d,0d]}] store result entity @e[tag=ratVisual,limit=1,sort=nearest,distance=..2] Pose.Head[1] float 1 run scoreboard players get @s tmp
execute at @s[nbt=!{Motion:[0d,0d,0d]}] store result entity @e[tag=ratVisual,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.Damage int 1 run scoreboard players get @s tmp2

# Step sound
scoreboard players add @s tmp3 1
execute at @s[scores={tmp3=20..},nbt=!{Motion:[0d,0d,0d]}] at @s run playsound minecraft:entity.silverfish.step master @a
execute at @s[scores={tmp3=20..}] run scoreboard players set @s tmp3 0

# Idle sounds
scoreboard players add @s idle 1
execute as @s[scores={idle=100..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.rat.idle master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s idle 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle

# When an entity rides another entity the root entity collision stuff stops working which means the rats end up running inside each other and it looks quite wonky.
# I try to avoid that here by changing the movement speed if another rat is too close. Priority is based on creatureID.
execute as @s[scores={animTest=1}] run tag @s remove slowDown
execute as @s[scores={animTest=1}] at @s as @e[type=silverfish,tag=ratCreature,distance=0.01..1] run function hp:creatures/rat/prevent_rat_intersection
execute as @s[scores={animTest=1}] as @s[tag=slowDown,tag=!isSlowedDown] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.15}]}
execute as @s[scores={animTest=1}] as @s[tag=slowDown,tag=!isSlowedDown] run tag @s add isSlowedDown
execute as @s[scores={animTest=1}] as @s[tag=!slowDown,tag=isSlowedDown] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.25}]}
execute as @s[scores={animTest=1}] as @s[tag=!slowDown,tag=isSlowedDown] run tag @s remove isSlowedDown