####################
# Detect Collision #
####################
# Detect if motion has changed (also works with invulnerable entities) and kill the trident if that's the case
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[0] 33
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movX
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[1] 33
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movY
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[2] 33
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movZ
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=deathEaterSpell,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

# Detect if the trident is stuck in a block
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell,nbt={inGround:1b},distance=..0.45] run tag @s add hitSomething

# Detect if the trident stuck in an entity (the trident has dissapeared)
execute at @s[scores={idle=1..}] unless entity @e[sort=nearest,tag=deathEaterSpell,distance=..0.45] run tag @s add hitEnemy

#######################
# On Collision Normal #
#######################
execute at @s[tag=hitSomething] run playsound minecraft:custom.spell.stupefy.hit master @a ~ ~ ~ 2 1.5
execute at @s[tag=hitSomething] run particle minecraft:lava ~ ~ ~ 0.025 0.025 0.025 3 2 normal @a
execute at @s[tag=hitSomething] run particle minecraft:smoke ~ ~ ~ 0.025 0.025 0.025 0.075 20 force
execute at @s[tag=hitSomething] run particle minecraft:dust 0.35 1 0.35 3 ~ ~ ~ 0.045 0.045 0.045 10 5 normal @a
execute at @s[tag=hitSomething] positioned ~ ~-1 ~ as @p[distance=..2,tag=!usingAntidotePotion] run effect give @s minecraft:instant_damage 1 2 true
execute at @s[tag=hitSomething] positioned ~ ~-1 ~ as @p[distance=..2,tag=!usingAntidotePotion] run function hp:health/poison
execute as @s[tag=hitSomething] at @s run kill @e[tag=deathEaterSpell,limit=1,sort=nearest]
execute as @s[tag=hitSomething] run kill @s

######################
# On Collision Enemy #
######################
execute at @s[tag=hitEnemy] positioned ~ ~-.2 ~ run playsound minecraft:custom.spell.stupefy.hit master @a ~ ~ ~ 2 1.5
execute at @s[tag=hitEnemy] positioned ~ ~-.2 ~ run particle minecraft:lava ~ ~ ~ 0.025 0.025 0.025 3 5 normal @a
execute at @s[tag=hitEnemy] positioned ~ ~-.2 ~ run particle minecraft:smoke ~ ~ ~ 0.025 0.025 0.025 0.1 30 force
execute at @s[tag=hitEnemy] positioned ~ ~-.2 ~ run particle minecraft:dust 0.1 1 0.1 1 ~ ~ ~ 0.06 0.06 0.06 10 5 normal @a
execute at @s[tag=hitEnemy] positioned ~ ~-1 ~ as @p[distance=..2,tag=!usingAntidotePotion] run effect give @s minecraft:instant_damage 1 2 true
execute at @s[tag=hitEnemy] positioned ~ ~-1 ~ as @p[distance=..2,tag=!usingAntidotePotion] run function hp:health/poison
execute as @s[tag=hitEnemy] at @s run kill @e[tag=deathEaterSpell,limit=1,sort=nearest]
execute as @s[tag=hitEnemy] run kill @s



################
# Apply Motion #
################
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell] store result entity @s Motion[0] double 0.03 run scoreboard players get @s movX
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell] store result entity @s Motion[1] double 0.03 run scoreboard players get @s movY
execute at @s as @e[limit=1,sort=nearest,tag=deathEaterSpell] store result entity @s Motion[2] double 0.03 run scoreboard players get @s movZ

execute as @s[scores={idle=1}] store result entity @s Rotation[0] float 1 run scoreboard players get @s TargetXRot
execute as @s[scores={idle=1}] store result entity @s Rotation[1] float 1 run scoreboard players get @s TargetYRot

#############
# Particles #
#############
# execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.75 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.75 ^ ^ 0 0 0 0 1 force @a

# execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.72697 ^ ^0 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.72697 ^ ^1 0 0 0 0 1 force @a

# execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.649845 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.649845 ^ ^2 0 0 0 0 1 force @a


# execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.525591 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.525591 ^ ^ 0 0 0 0 1 force @a

# execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.390864 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.390864 ^ ^1 0 0 0 0 1 force @a

# execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.275352 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.275352 ^ ^2 0 0 0 0 1 force @a


# execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.185732 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.185732 ^ ^ 0 0 0 0 1 force @a

# execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.118975 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.118975 ^ ^1 0 0 0 0 1 force @a

# execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.070675 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.070675 ^ ^2 0 0 0 0 1 force @a


# execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.037124 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.037124 ^ ^ 0 0 0 0 1 force @a

# execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.015491 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.015491 ^ ^1 0 0 0 0 1 force @a

# execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.003653 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^-0.003653 ^ ^2 0 0 0 0 1 force @a


# execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^ ^ ^ 0 0 0 0 1 force @a

# execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^ ^ ^1 0 0 0 0 1 force @a

# execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 0.35 1 0.35 1.5 ^ ^ ^2 0 0 0 0 1 force @a


scoreboard players add @s idle 1

execute as @s[scores={idle=40..}] at @s run kill @e[tag=deathEaterSpell,limit=1,sort=nearest,distance=..0.45]
execute as @s[scores={idle=40..}] run kill @s
