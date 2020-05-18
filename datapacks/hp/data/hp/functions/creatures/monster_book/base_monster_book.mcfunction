# Despawn
execute unless entity @p[distance=..70] run kill @e[tag=monsterBookVisual,limit=1,sort=nearest,distance=..2]
execute unless entity @p[distance=..70] run kill @s

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.monster_book.wound master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth


# Water causes passengers to dismount, so I check if the entity doesn't have any passengers and if that's the case I kill the creature to prevent problems
execute store success score @s waterCheck run data get entity @s Passengers
execute as @s[scores={waterCheck=0}] run scoreboard players set @s creatureHealth 0

# Kill Monster Book
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/monster_book/monster_book_death

# Copy Rotation to visual
execute at @s store result entity @e[tag=monsterBookVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]

# On jump
execute as @s[nbt={wasOnGround:1b},tag=!onGround,scores={animTest=..3}] run scoreboard players set @s animTest 4
execute as @s[nbt={wasOnGround:1b},tag=!onGround] run tag @s add onGround
execute as @s[nbt={wasOnGround:0b},tag=onGround] run tag @s remove onGround

# Attack animation
# Up
execute at @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp 1
execute as @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] store result entity @s Motion[1] double 0.4 run scoreboard players get @s tmp
# Amplify movement
execute store result score @s tmp at @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run data get entity @s Motion[0] 500
execute as @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] store result entity @s Motion[0] double 0.01 run scoreboard players get @s tmp
execute store result score @s tmp at @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run data get entity @s Motion[2] 500
execute as @s[scores={animTest=0},nbt={OnGround:1b}] if entity @p[distance=..1.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] store result entity @s Motion[2] double 0.01 run scoreboard players get @s tmp

# Attack sound
execute at @s[scores={animTest=0}] if entity @p[distance=..1.25,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run playsound minecraft:custom.creatures.monster_book.attack master @a ~ ~ ~ 1
execute at @s[scores={animTest=0}] if entity @p[distance=..1.25,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s animTest 15

scoreboard players set @s tmp 0
# Animation
execute as @s[scores={animTest=..1}] run scoreboard players set @s tmp 9
execute as @s[scores={animTest=2}] run scoreboard players set @s tmp 8
execute as @s[scores={animTest=3}] run scoreboard players set @s tmp 8
execute as @s[scores={animTest=4}] run scoreboard players set @s tmp 7
execute as @s[scores={animTest=5}] run scoreboard players set @s tmp 7
execute as @s[scores={animTest=6}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=7}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=8}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=9}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=10}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=11}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=12}] run scoreboard players set @s tmp 7
execute as @s[scores={animTest=13}] run scoreboard players set @s tmp 7
execute as @s[scores={animTest=14}] run scoreboard players set @s tmp 8
execute as @s[scores={animTest=15}] run scoreboard players set @s tmp 9
scoreboard players remove @s[scores={animTest=1..}] animTest 1

execute at @s store result entity @e[tag=monsterBookVisual,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.Damage int 1 run scoreboard players get @s tmp

scoreboard players set @s tmp 0
scoreboard players add @s[scores={animState=..19}] animState 1
execute as @s[scores={animState=1}] run scoreboard players set @s tmp 15
execute as @s[scores={animState=2}] run scoreboard players set @s tmp 7
execute as @s[scores={animState=3}] run scoreboard players set @s tmp 1
execute as @s[scores={animState=4}] run scoreboard players set @s tmp -7
execute as @s[scores={animState=5}] run scoreboard players set @s tmp -15
execute as @s[scores={animState=6}] run scoreboard players set @s tmp -7
execute as @s[scores={animState=7}] run scoreboard players set @s tmp -1
execute as @s[scores={animState=8}] run scoreboard players set @s tmp 7
scoreboard players set @s[scores={animState=8..}] animState 0

execute at @s[nbt=!{Motion:[0d,0d,0d]}] store result entity @e[tag=monsterBookVisual,limit=1,sort=nearest,distance=..2] Pose.Head[1] float 1 run scoreboard players get @s tmp

# When an entity rides another entity the root entity collision stuff stops working which means the rats end up running inside each other and it looks quite wonky.
# I try to avoid that here by changing the movement speed if another rat is too close. Priority is based on creatureID.
execute as @s[scores={animState=1}] run tag @s remove slowDown
execute as @s[scores={animState=1}] at @s as @e[type=silverfish,tag=monsterBookCreature,distance=0.01..1] run function hp:creatures/monster_book/prevent_monster_book_intersection
execute as @s[scores={animState=1}] as @s[tag=slowDown,tag=!isSlowedDown] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.15}]}
execute as @s[scores={animState=1}] as @s[tag=slowDown,tag=!isSlowedDown] run tag @s add isSlowedDown
execute as @s[scores={animState=1}] as @s[tag=!slowDown,tag=isSlowedDown] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.25}]}
execute as @s[scores={animState=1}] as @s[tag=!slowDown,tag=isSlowedDown] run tag @s remove isSlowedDown

# Idle sounds
scoreboard players add @s idle 1
execute as @s[scores={idle=100..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.monster_book.idle master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s idle 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle