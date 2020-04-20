execute positioned ~ ~2 ~ run effect give @e[distance=..1,tag=creature,tag=undead,tag=!darkSpiritCreature] minecraft:instant_health 1 1
execute positioned ~ ~2 ~ run effect give @e[distance=..1,tag=creature,tag=!undead,tag=!darkSpiritCreature] minecraft:instant_damage 1 1
execute positioned ~ ~2 ~ run effect give @p[distance=..1] minecraft:instant_damage 1 3
execute positioned ~ ~2 ~ run playsound minecraft:custom.gameplay_element.spikes master @a ~ ~ ~ 1 1