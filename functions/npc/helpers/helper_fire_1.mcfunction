execute as @s[scores={helperFire=..40}] at @s run tp @s ~ ~ ~ facing entity @e[distance=..40,tag=creature,tag=!dementor,limit=1]
execute as @s[scores={helperFire=..40},tag=!lookInNormalDirection] at @s unless entity @e[distance=..40,tag=creature,tag=!dementor] run tag @s add npcLookAtPlayer
execute as @s[scores={helperFire=..40},tag=!lookInNormalDirection] at @s unless entity @e[distance=..40,tag=creature,tag=!dementor] run tag @s add lookInNormalDirection
execute as @s[scores={helperFire=..40},tag=lookInNormalDirection] at @s if entity @e[distance=..40,tag=creature,tag=!dementor] run tag @s remove lookInNormalDirection
scoreboard players remove @s helperFire 2
execute as @s[scores={helperFire=..-60},tag=!lookInNormalDirection] run scoreboard players set @s helperFire 100

execute as @s[scores={helperFire=90}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={helperFire=88}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 19
execute as @s[scores={helperFire=86}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 18
execute as @s[scores={helperFire=84}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={helperFire=82}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={helperFire=80}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={helperFire=78}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={helperFire=76}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={helperFire=74}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={helperFire=72}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={helperFire=70}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={helperFire=68}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={helperFire=66}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={helperFire=64}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={helperFire=62}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={helperFire=60}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={helperFire=58}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 4
execute as @s[scores={helperFire=56}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={helperFire=54}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={helperFire=52}] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 1



execute as @s[scores={helperFire=80}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[scores={helperFire=40..80}] run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute as @s[scores={helperFire=80}] at @s run tp @s ~ ~ ~ facing entity @e[distance=..40,tag=creature,tag=!dementor,limit=1]

execute as @s[scores={helperFire=68}] at @s run playsound minecraft:custom.spell.stupefy.cast master @a ~ ~ ~ 2 2
execute as @s[scores={helperFire=68}] run tag @s add focusHelper
execute as @s[scores={helperFire=68}] at @s run tp @s ~ ~ ~ facing entity @e[distance=..40,tag=creature,tag=!dementor,limit=1]
execute as @s[scores={helperFire=68}] at @s run summon trident ^ ^ ^0.25 {damage:1d,Team:"Creature",NoGravity:1b,Color:-1,Tags:["helperSpell","helperSpell_ini"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["helperSpellDirection","helperSpellDirection_ini","spellEntity"]}]}
execute as @s[scores={helperFire=68}] store result score @s tmp2 run data get entity @s Pos[0] 100

execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result score @s movX run data get entity @s Pos[0] 100
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movX -= @e[tag=focusHelper,limit=1] tmp2

execute as @s[scores={helperFire=68}] store result score @s tmp2 run data get entity @s Pos[1] 100
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result score @s movY run data get entity @s Pos[1] 100
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movY -= @e[tag=focusHelper,limit=1] tmp2

execute as @s[scores={helperFire=68}] store result score @s tmp2 run data get entity @s Pos[2] 100
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result score @s movZ run data get entity @s Pos[2] 100
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] run scoreboard players operation @s movZ -= @e[tag=focusHelper,limit=1] tmp2

execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] run tp @s ~ ~1.25 ~

execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result entity @s Motion[0] double 0.03 run scoreboard players get @s movX
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result entity @s Motion[1] double 0.03 run scoreboard players get @s movY
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] store result entity @s Motion[2] double 0.03 run scoreboard players get @s movZ

execute as @s[scores={helperFire=68}] at @s store result entity @e[tag=helperSpellDirection_ini,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @s[scores={helperFire=68}] at @s store result entity @e[tag=helperSpellDirection_ini,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

execute as @s[scores={helperFire=68}] at @s store result score @e[tag=helperSpellDirection_ini,limit=1,sort=nearest] TargetXRot run data get entity @s Rotation[0]
execute as @s[scores={helperFire=68}] at @s store result score @e[tag=helperSpellDirection_ini,limit=1,sort=nearest] TargetYRot run data get entity @s Rotation[1]

execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpell_ini,limit=1,sort=nearest] run tag @s remove helperSpell_ini
execute as @s[scores={helperFire=68}] at @s as @e[tag=helperSpellDirection_ini,limit=1,sort=nearest] run tag @s remove helperSpellDirection_ini
execute as @s[scores={helperFire=68}] run tag @s remove focusHelper
execute as @s[scores={helperFire=40}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}
