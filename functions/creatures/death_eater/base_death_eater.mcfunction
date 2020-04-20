# Trigger Appiration
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth -= @s creatureHealth
scoreboard players operation @s dSinceAppiration += @s oldHealth

execute as @s[scores={dSinceAppiration=10..},tag=!doNotApparate] run tag @s add deathEaterApparate
execute as @s[scores={dSinceAppiration=10..}] run scoreboard players set @s dSinceAppiration 0

scoreboard players operation @s oldHealth = @s creatureHealth


# Apparate
execute as @s[tag=deathEaterApparate] at @s run function hp:creatures/death_eater/death_eater_apparate 

scoreboard players remove @s deathEaterFire 2
execute as @s[scores={deathEaterFire=-60}] run function hp:creatures/check_player_line_of_sight
execute as @s[scores={deathEaterFire=-60},tag=clearLineOfSight] run scoreboard players set @s deathEaterFire 100
execute as @s[scores={deathEaterFire=-60},tag=!clearLineOfSight] run scoreboard players set @s deathEaterFire 0

data merge entity @s[scores={deathEaterFire=90}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=88}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:51}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=86}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:50}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=84}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:49}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=82}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:48}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=80}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:47}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=78}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:46}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=76}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:45}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=74}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:44}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=72}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:43}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=70}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:42}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=68}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:41}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=66}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:40}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=64}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:39}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=62}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:38}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=60}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:37}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=58}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:36}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=56}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:35}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=54}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:34}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
data merge entity @s[scores={deathEaterFire=52}] {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:33}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}



execute as @s[scores={deathEaterFire=80}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[scores={deathEaterFire=40..80}] run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute as @s[scores={deathEaterFire=80}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..40,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint]

execute as @s[scores={deathEaterFire=68}] at @s run playsound minecraft:custom.spell.stupefy.cast master @a ~ ~ ~ 2 2
execute as @s[scores={deathEaterFire=68}] run tag @s add focusDeathEater
execute as @s[scores={deathEaterFire=68}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..40,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint]
execute as @s[scores={deathEaterFire=68}] at @s run summon trident ^ ^ ^0.25 {OwnerUUIDLeast:-6127446303466072232L,OwnerUUIDMost:-2027488337443206053L,damage:1d,Team:"Creature",NoGravity:1b,Color:-1,Tags:["deathEaterSpell","deathEaterSpell_ini"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["deathEaterSpellDirection","deathEaterSpellDirection_ini"]}]}
execute as @s[scores={deathEaterFire=68}] store result score @s tmp2 run data get entity @s Pos[0] 100

execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result score @s movX run data get entity @s Pos[0] 100
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movX -= @e[tag=focusDeathEater,limit=1] tmp2

execute as @s[scores={deathEaterFire=68}] store result score @s tmp2 run data get entity @s Pos[1] 100
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result score @s movY run data get entity @s Pos[1] 100
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movY -= @e[tag=focusDeathEater,limit=1] tmp2

execute as @s[scores={deathEaterFire=68}] store result score @s tmp2 run data get entity @s Pos[2] 100
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result score @s movZ run data get entity @s Pos[2] 100
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movZ -= @e[tag=focusDeathEater,limit=1] tmp2

execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] run tp @s ~ ~1.25 ~

execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result entity @s Motion[0] double 0.03 run scoreboard players get @s movX
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result entity @s Motion[1] double 0.03 run scoreboard players get @s movY
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] store result entity @s Motion[2] double 0.03 run scoreboard players get @s movZ

execute as @s[scores={deathEaterFire=68}] at @s store result entity @e[tag=deathEaterSpellDirection_ini,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @s[scores={deathEaterFire=68}] at @s store result entity @e[tag=deathEaterSpellDirection_ini,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

execute as @s[scores={deathEaterFire=68}] at @s store result score @e[tag=deathEaterSpellDirection_ini,limit=1,sort=nearest] TargetXRot run data get entity @s Rotation[0]
execute as @s[scores={deathEaterFire=68}] at @s store result score @e[tag=deathEaterSpellDirection_ini,limit=1,sort=nearest] TargetYRot run data get entity @s Rotation[1]

execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpell_ini,limit=1,sort=nearest] run tag @s remove deathEaterSpell_ini
execute as @s[scores={deathEaterFire=68}] at @s as @e[tag=deathEaterSpellDirection_ini,limit=1,sort=nearest] run tag @s remove deathEaterSpellDirection_ini
execute as @s[scores={deathEaterFire=68}] run tag @s remove focusDeathEater
execute as @s[scores={deathEaterFire=40}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}


# Kill death eater
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/death_eater/death_eater_death


# Glow timer - If the mob is alive for a long duration of time during waves it's a good indicator that it is lost or that the player for some reason is unable to find the mob, so it gets highlighted
execute as @s[tag=glowWaveCreature] run scoreboard players operation @s glowTimer += systick time
execute as @s[tag=glowWaveCreature,scores={glowTimer=200000..}] run effect give @s minecraft:glowing 1 1 true