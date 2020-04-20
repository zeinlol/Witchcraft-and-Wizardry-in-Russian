# Prevent the bat from hanging upside down
data merge entity @s {BatFlags:0b}

# Fix rotation
execute at @s store result entity @e[tag=keyCreatureVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]


# Pickup
# /summon bat ~ ~ ~ {PersistenceRequired:1,Silent:1b,Invulnerable:1b,Tags:["keyCreature","invisible"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:0b,Marker:1b,Invisible:1b,Tags:["restorable","pickUp","resettable","flyingKey1","glowable","interactable","keyCreatureVisual"],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1321}}]}]}

# Fake
# /summon bat ~ ~ ~ {PersistenceRequired:1,Silent:1b,Invulnerable:1b,Tags:["keyCreature","invisible"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:0b,Marker:1b,Invisible:1b,Tags:["keyCreatureVisual"],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1320}}]}]}