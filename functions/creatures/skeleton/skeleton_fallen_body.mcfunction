# Enter animation
scoreboard players add @s[scores={animTest=..11}] animTest 1
execute as @s[scores={animTest=0}] store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s animState 11
execute as @s[scores={animTest=3}] store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s animState 12
execute as @s[scores={animTest=6}] store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s animState 13
execute as @s[scores={animTest=9}] store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s animState 14
execute as @s[scores={animTest=12}] store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s animState 15



# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 1 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Detect motion
execute store result score @s movX run data get entity @s Motion[0] 100
execute store result score @s movZ run data get entity @s Motion[2] 100

scoreboard players operation @s movX *= @s movX
scoreboard players operation @s movZ *= @s movZ

scoreboard players operation @s tmp = @s movX
scoreboard players operation @s tmp += @s movZ

# Both Arms
tag @s remove endOfAnimationLeft
tag @s remove endOfAnimationRight
execute at @s[scores={tmp2=37}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.05 1.5
execute at @s[scores={tmp3=37}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.05 1.5
tag @s[scores={tmp2=57}] add endOfAnimationLeft
tag @s[scores={tmp3=57}] add endOfAnimationRight

execute as @s[tag=leftAttack,scores={tmp2=35..57}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.7
tag @s[tag=leftAttack,scores={tmp2=37..57}] remove leftAttack
execute as @s[tag=rightAttack,scores={tmp3=37..57}] run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.7
tag @s[tag=rightAttack,scores={tmp3=37..57}] remove rightAttack

# Animation
scoreboard players remove @s[tag=!bothArms,scores={tmp2=..49}] tmp2 1
scoreboard players remove @s[tag=!bothArms,scores={tmp=1..,tmp2=50..57}] tmp2 1
scoreboard players remove @s[tag=!bothArms,scores={tmp3=..49}] tmp3 1
scoreboard players remove @s[tag=!bothArms,scores={tmp=1..,tmp3=50..57}] tmp3 1


# Do this if both skeleton has both arms to prevent the animation getting into sync and looking weird. 
scoreboard players remove @s[tag=bothArms,scores={tmp=1..,tmp2=..57}] tmp2 1
scoreboard players remove @s[tag=bothArms,scores={tmp=1..,tmp3=..57}] tmp3 1
scoreboard players remove @s[tag=bothArms,tag=leftAttack,scores={tmp=0,tmp2=..57}] tmp2 1
scoreboard players remove @s[tag=bothArms,tag=leftAttack,scores={tmp=0,tmp3=..57}] tmp3 1
scoreboard players remove @s[tag=bothArms,tag=rightAttack,scores={tmp=0,tmp2=..57}] tmp2 1
scoreboard players remove @s[tag=bothArms,tag=rightAttack,scores={tmp=0,tmp3=..57}] tmp3 1

# Whack sound
execute as @s[scores={tmp2=22}] at @s run playsound minecraft:custom.creatures.skeleton.whack master @a ~ ~ ~ 0.075
execute as @s[scores={tmp3=22}] at @s run playsound minecraft:custom.creatures.skeleton.whack master @a ~ ~ ~ 0.075

scoreboard players set @s[tag=!leftAttack,scores={tmp2=..36}] tmp2 57
scoreboard players set @s[tag=leftAttack,scores={tmp2=..16}] tmp2 57
scoreboard players set @s[tag=!rightAttack,scores={tmp3=..36}] tmp3 57
scoreboard players set @s[tag=rightAttack,scores={tmp3=..16}] tmp3 57

execute at @s positioned ~ ~1 ~ store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] HandItems[0].tag.Damage int 1 run scoreboard players get @s tmp2
execute at @s positioned ~ ~1 ~ store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..1] HandItems[1].tag.Damage int 1 run scoreboard players get @s tmp3

execute at @s[tag=!leftAttack,tag=endOfAnimationLeft] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp2 36
execute at @s[tag=!leftAttack,tag=endOfAnimationLeft] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add leftAttack
execute at @s[tag=!rightAttack,tag=endOfAnimationRight] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp3 36
execute at @s[tag=!rightAttack,tag=endOfAnimationRight] if entity @p[distance=..2.2,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add rightAttack

# Stop for crawling animation

# If only left arm
execute as @s[tag=leftArm,tag=!leftAttack,scores={tmp2=57}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.125}]}
execute as @s[tag=leftArm,tag=!leftAttack,scores={tmp2=49}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[tag=leftArm,tag=leftAttack] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.1}]}

# If only right arm
execute as @s[tag=rightArm,tag=!rightAttack,scores={tmp3=57}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.125}]}
execute as @s[tag=rightArm,tag=!rightAttack,scores={tmp3=49}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @s[tag=rightArm,tag=rightAttack] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.1}]}

# Rotation
execute at @s store result entity @e[tag=skeletonPartVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]

effect give @s minecraft:invisibility 99999 1 true

# Water causes passengers to dismount, so I check if the entity doesn't have any passengers and if that's the case I kill the creature to prevent problems
execute store success score @s waterCheck run data get entity @s Passengers
execute as @s[scores={waterCheck=0}] run scoreboard players set @s creatureHealth 0

# Death
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/skeleton/skeleton_fallen_body_death