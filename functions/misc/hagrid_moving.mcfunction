# As far as I can tell there is a bug in Minecraft, which prohibits me from executing this as the entity it self (Hagrid). - If I do this I have to relog to see the legs change. Instead I execute it as the fpEngine when Hagrid is walking.

tp @s ~ ~ ~ ~ 0
execute as @e[tag=hagrid,tag=hagridLayer3,limit=1,sort=nearest,distance=..30] run tp @s ~ ~0.75 ~

execute store result score @s movX run data get entity @s Motion[0] 1000
execute store result score @s movZ run data get entity @s Motion[2] 1000

tag @s remove still
execute as @s[scores={movX=-10..10,movZ=-10..10}] run tag @s add still


# Moving legs
execute as @s[tag=!still] run replaceitem entity @s weapon.mainhand stone_shovel{Damage:75,Unbreakable:1b}
execute as @s[tag=!still] run replaceitem entity @s weapon.offhand stone_shovel{Damage:77,Unbreakable:1b}
replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.mainhand air
replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.offhand air

# Legs still
execute as @s[tag=still] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.mainhand stone_shovel{Damage:74,Unbreakable:1b}
execute as @s[tag=still] run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.offhand stone_shovel{Damage:76,Unbreakable:1b}
execute as @s[tag=!still] run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.mainhand air
execute as @s[tag=!still] run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.offhand air