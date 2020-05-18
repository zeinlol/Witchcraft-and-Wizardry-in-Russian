# Despawn after some time
scoreboard players remove @s idle 1
execute as @s[scores={idle=0}] run function hp:creatures/skeleton/skeleton_arm_death

execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 1 1
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.skeleton.bones_crack master @a ~ ~ ~ 1 1 1
scoreboard players operation @s oldHealth = @s creatureHealth


# Detect motion
execute store result score @s movX run data get entity @s Motion[0] 100
execute store result score @s movZ run data get entity @s Motion[2] 100

scoreboard players operation @s movX *= @s movX
scoreboard players operation @s movZ *= @s movZ

scoreboard players operation @s tmp = @s movX
scoreboard players operation @s tmp += @s movZ


tag @s remove endOfAnimation
execute at @s[scores={animTest=37}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.15 1.5
tag @s[scores={animTest=37}] add endOfAnimation

execute as @s[tag=attack,scores={animTest=37..57}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.7
tag @s[tag=attack,scores={animTest=37..57}] remove attack

# Whack sound
execute as @s[scores={animTest=25}] at @s run playsound minecraft:custom.creatures.skeleton.whack master @a ~ ~ ~ 0.075

# Animation
scoreboard players remove @s[scores={tmp=1..,animTest=50..57}] animTest 1
scoreboard players remove @s[scores={animTest=..49}] animTest 1
scoreboard players set @s[tag=!attack,scores={animTest=..36}] animTest 57
scoreboard players set @s[tag=attack,scores={animTest=..16}] animTest 57

execute at @s positioned ~ ~1 ~ store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] HandItems[0].tag.Damage int 1 run scoreboard players get @s animTest
execute at @s positioned ~ ~1 ~ store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] HandItems[1].tag.Damage int 1 run scoreboard players get @s animTest

execute at @s[tag=!attack,tag=endOfAnimation] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s animTest 36
execute at @s[tag=!attack,tag=endOfAnimation] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add attack

# Stop for crawling animation
execute as @s[tag=!attack,scores={animTest=57}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.125}]}
execute as @s[tag=!attack,scores={animTest=50}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[tag=attack] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.1}]}

# Rotation
execute at @s store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]

effect give @s minecraft:invisibility 99999 1 true

# Water causes passengers to dismount, so I check if the entity doesn't have any passengers and if that's the case I kill the creature to prevent problems
execute store success score @s waterCheck run data get entity @s Passengers
execute as @s[scores={waterCheck=0}] run scoreboard players set @s creatureHealth 0

# Death
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/skeleton/skeleton_arm_death