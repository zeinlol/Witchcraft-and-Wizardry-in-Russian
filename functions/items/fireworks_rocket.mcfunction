
####################
# Detect Collision #
####################
# Detect if motion has changed (also works with invulnerable entities) and kill the trident if that's the case
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] store result score @s tmp run data get entity @s Motion[0] 50
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] run scoreboard players operation @s tmp -= @s movX
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] store result score @s tmp run data get entity @s Motion[1] 50
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] run scoreboard players operation @s tmp -= @s movY
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] store result score @s tmp run data get entity @s Motion[2] 50
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,distance=..0.45] run scoreboard players operation @s tmp -= @s movZ
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=..-3},distance=..0.45] run tag @s add hitSomething
execute at @s if entity @e[limit=1,sort=nearest,tag=fireworksRocket,scores={tmp=3..},distance=..0.45] run tag @s add hitSomething

# Detect if the trident is stuck in a block
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket,nbt={inGround:1b},distance=..0.45] run tag @s add hitSomething


#######################
# On Collision Normal #
#######################
execute at @s[tag=hitSomething] run playsound minecraft:custom.spell.stupefy.hit master @a ~ ~ ~ 3
execute at @s[tag=hitSomething] run particle minecraft:smoke ~ ~ ~ 0.025 0.025 0.025 0.075 20 force
execute if score global Random matches 0..25 at @s[tag=hitSomething] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;2505983,15708415]}]}}}}
execute if score global Random matches 26..50 at @s[tag=hitSomething] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;7721293,1251602]}]}}}}
execute if score global Random matches 51..75 at @s[tag=hitSomething] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16711680,16753152]}]}}}}
execute if score global Random matches 76..100 at @s[tag=hitSomething] run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16753152,0]}]}}}}
execute as @s[tag=hitSomething] at @s run kill @e[tag=fireworksRocket,limit=1,sort=nearest]
execute as @s[tag=hitSomething] run kill @s


################
# Apply Motion #
################
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket] store result entity @s Motion[0] double 0.02 run scoreboard players get @s movX
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket] store result entity @s Motion[1] double 0.02 run scoreboard players get @s movY
execute at @s as @e[limit=1,sort=nearest,tag=fireworksRocket] store result entity @s Motion[2] double 0.02 run scoreboard players get @s movZ

execute as @s[scores={idle=1}] store result entity @s Rotation[0] float 1 run scoreboard players get @s TargetXRot
execute as @s[scores={idle=1}] store result entity @s Rotation[1] float 1 run scoreboard players get @s TargetYRot

#############
# Particles #
#############
execute at @s[scores={idle=1..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 1 1 1 ^ ^ ^ 0 0 0 0 1 force @a
execute at @s[scores={idle=1..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 1 1 1 ^ ^ ^1 0 0 0 0 1 force @a
execute at @s[scores={idle=1..}] positioned ~ ~-.2 ~ run particle minecraft:dust 1 1 1 1 ^ ^ ^2 0 0 0 0 1 force @a




scoreboard players add @s idle 1

execute as @s[scores={idle=30..}] run tag @s add hitSomething
