# TP is simply based off nearest within a limit, since there shouldn't be more than one Hagrid close to another at any time. There is a risk of him being cut in half though if for some reason part of him ends up out of reach.

tp @e[tag=hagrid,tag=hagridLayer3,limit=1,sort=nearest,distance=..30] ~ ~.75 ~ ~ ~
tp @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] ~ ~ ~ ~ ~
tp @s ~ ~ ~ ~ 0




# Fix rotation of legs and arms
execute store result entity @e[tag=hagridLayer2,limit=1,sort=nearest,distance=..30] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute store result entity @e[tag=hagridLayer3,limit=1,sort=nearest,distance=..30] Rotation[0] float 1 run data get entity @s Rotation[0] 1

execute store result score @s movX run data get entity @s Pos[0] 1000
execute store result score @s movZ run data get entity @s Pos[2] 1000
scoreboard players operation @s movX -= @s movXlastFrame
scoreboard players operation @s movZ -= @s movZlastFrame
execute store result score @s movXlastFrame run data get entity @s Pos[0] 1000
execute store result score @s movZlastFrame run data get entity @s Pos[2] 1000

tag @s remove still
execute as @s[scores={movX=-10..10,movZ=-10..10}] run tag @s add still


# diamond_pickaxe{Damage:3,Unbreakable:1b} is used instead of air because of a bug, which causes the visuals to not always change when replacing with air leading to Hagrid having two pairs of legs in some instances.

# Replacing every tick makes a noise (and possibly lags more not sure?). That noise is removed via the resource pack, but it overrides other sounds since it's played so often, and minecraft probably has a max number of concurrent sounds or something like that.

# Layer 1 legs
execute as @s[tag=!still,tag=!walkingLegsLayer1] run replaceitem entity @s weapon.mainhand stone_shovel{Damage:75,Unbreakable:1b}
execute as @s[tag=!still,tag=!walkingLegsLayer1] run replaceitem entity @s weapon.offhand stone_shovel{Damage:77,Unbreakable:1b}
execute as @s[tag=!still,tag=!walkingLegsLayer1] run tag @s add walkingLegsLayer1
execute as @s[tag=still,tag=walkingLegsLayer1] run replaceitem entity @s weapon.mainhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @s[tag=still,tag=walkingLegsLayer1] run replaceitem entity @s weapon.offhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @s[tag=still,tag=walkingLegsLayer1] run tag @s remove walkingLegsLayer1

# Layer 2 legs
execute as @s[tag=still,tag=!walkingLegsLayer2] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.mainhand stone_shovel{Damage:74,Unbreakable:1b}
execute as @s[tag=still,tag=!walkingLegsLayer2] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.offhand stone_shovel{Damage:76,Unbreakable:1b}
execute as @s[tag=still,tag=!walkingLegsLayer2] run tag @s add walkingLegsLayer2
execute as @s[tag=!still,tag=walkingLegsLayer2] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.mainhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @s[tag=!still,tag=walkingLegsLayer2] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.offhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @s[tag=!still,tag=walkingLegsLayer2] run tag @s remove walkingLegsLayer2
