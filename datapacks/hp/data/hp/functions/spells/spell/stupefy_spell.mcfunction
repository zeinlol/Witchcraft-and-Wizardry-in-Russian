
####################
# Detect Collision #
####################
# Detect if motion has changed (also works with invulnerable entities) and kill the trident if that's the case
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[0] 50
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movX
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=..-2},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=2..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[1] 50
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movY
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=..-2},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=2..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] store result score @s tmp run data get entity @s Motion[2] 50
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,distance=..0.45] run scoreboard players operation @s tmp -= @s movZ
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=..-2},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=stupefySpell,scores={tmp=2..},distance=..0.45] run tag @s add hitSomething

# Detect if the trident is stuck in a block
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell,nbt={inGround:1b},distance=..0.45] run tag @s add hitSomething

# Detect if the trident has hit an entity (this was easier when I used arrows, but I can't do that since skeletons shoot arrows)
# I need to check both 10s and 9s to prevent issues if the player is playing with high latency

scoreboard players set @s tmp 0
execute as @s[scores={idle=1..,tmp=0},tag=hitSomething] store success score @s tmp at @s if entity @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s},distance=..4] run function hp:spells/spell/stupefy_hit_enemy
execute as @s[scores={idle=1..,tmp=0},tag=hitSomething] store success score @s tmp at @s if entity @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s},distance=..4] run function hp:spells/spell/stupefy_hit_enemy
execute as @s[scores={idle=1..,tmp=0},tag=hitSomething] store success score @s tmp at @s if entity @e[limit=1,sort=nearest,tag=stupefyTarget,nbt=!{HurtTime:10s},distance=..6] run function hp:spells/spell/stupefy_hit_enemy
execute as @s[scores={idle=1..,tmp=0},tag=hitSomething] store success score @s tmp at @s if entity @e[limit=1,sort=nearest,tag=stupefyTarget,nbt=!{HurtTime:9s},distance=..6] run function hp:spells/spell/stupefy_hit_enemy


#######################
# On Collision Normal #
#######################
execute at @s[tag=hitSomething] run playsound minecraft:custom.spell.stupefy.hit master @a ~ ~ ~ 3
execute at @s[tag=hitSomething] run particle minecraft:lava ~ ~ ~ 0.025 0.025 0.025 3 2 normal @a
execute at @s[tag=hitSomething] run particle minecraft:smoke ~ ~ ~ 0.025 0.025 0.025 0.075 20 force
execute at @s[tag=hitSomething] run particle minecraft:dust 1 0 0 3 ~ ~ ~ 0.045 0.045 0.045 10 5 normal @a
execute as @s[tag=hitSomething] at @s run kill @e[tag=stupefySpell,limit=1,sort=nearest]
execute as @s[tag=hitSomething] run kill @s


################
# Apply Motion #
################
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell] store result entity @s Motion[0] double 0.02 run scoreboard players get @s movX
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell] store result entity @s Motion[1] double 0.02 run scoreboard players get @s movY
execute at @s as @e[limit=1,sort=nearest,tag=stupefySpell] store result entity @s Motion[2] double 0.02 run scoreboard players get @s movZ

execute as @s[scores={idle=1}] store result entity @s Rotation[0] float 1 run scoreboard players get @s TargetXRot
execute as @s[scores={idle=1}] store result entity @s Rotation[1] float 1 run scoreboard players get @s TargetYRot

#############
# Particles #
#############
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.75 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.75 ^ ^ 0 0 0 0 1 force @a

execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.72697 ^ ^0 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.72697 ^ ^1 0 0 0 0 1 force @a

execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.649845 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=1}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.649845 ^ ^2 0 0 0 0 1 force @a


execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.525591 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.525591 ^ ^ 0 0 0 0 1 force @a

execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.390864 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.390864 ^ ^1 0 0 0 0 1 force @a

execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.275352 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=2}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.275352 ^ ^2 0 0 0 0 1 force @a


execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.185732 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.185732 ^ ^ 0 0 0 0 1 force @a

execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.118975 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.118975 ^ ^1 0 0 0 0 1 force @a

execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.070675 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=3}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.070675 ^ ^2 0 0 0 0 1 force @a


execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.037124 ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.037124 ^ ^ 0 0 0 0 1 force @a

execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.015491 ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.015491 ^ ^1 0 0 0 0 1 force @a

execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^-0.003653 ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=4}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^-0.003653 ^ ^2 0 0 0 0 1 force @a



execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^ 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^.5 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^1 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^1.5 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^2 0.025 0.025 0.025 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:sweep_attack ^ ^ ^2.5 0.025 0.025 0.025 0 1 force @a

execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 1 force @a
execute at @s[scores={idle=5..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^2 0 0 0 0 1 force @a




scoreboard players add @s idle 1

execute as @s[scores={idle=60..}] at @s run kill @e[tag=stupefySpell,limit=1,sort=nearest,distance=..0.45]
execute as @s[scores={idle=60..}] run kill @s
