# Despawn after some time
scoreboard players remove @s idle 1
execute as @s[scores={idle=0}] run function hp:creatures/skeleton/skeleton_head_death


# Health
execute store result score @s creatureHealth run data get entity @s Health
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 1 1
scoreboard players operation @s oldHealth = @s creatureHealth

# damage player when jumping
execute as @s[tag=!inAir,nbt={wasOnGround:0b}] run tag @s add inAir


execute as @s[tag=inAir,nbt={wasOnGround:1b}] at @s run effect give @a[distance=..1] minecraft:instant_damage 1 1 true
execute as @s[tag=inAir,nbt={wasOnGround:1b}] at @s run playsound minecraft:custom.creatures.skeleton.impact master @a ~ ~ ~ 0.15 1.5
execute as @s[tag=inAir,nbt={wasOnGround:1b}] run tag @s remove inAir

# Death
# execute as @s[scores={creatureHealth=..0}] run function hp:creatures/skeleton/skeleton_head_death