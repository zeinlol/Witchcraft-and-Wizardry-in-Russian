playsound minecraft:custom.spell.vera_verto.vera_verto_1 master @a
playsound minecraft:custom.inventory.pickup.metal2 master @a ~ ~ ~ 1
playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1
particle minecraft:cloud ~ ~1 ~ 0.2 0.5 0.2 0.05 100 force
execute as @e[tag=armorSuitCreature,limit=1,sort=nearest] run tag @s add killArmorSuitCreature
execute as @e[tag=killArmorSuitCreature,limit=1,sort=nearest] run function hp:creatures/armor_suit/summon_armor_suit_duck
execute as @e[tag=killArmorSuitCreature,limit=1,sort=nearest] run tp @s ~ ~-100 ~
execute as @e[tag=killArmorSuitCreature,limit=1,sort=nearest] run kill @s
tp @s ~ ~-100 ~
kill @s