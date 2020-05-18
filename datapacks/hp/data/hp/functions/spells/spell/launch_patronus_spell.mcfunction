# Mana
scoreboard players remove @s manaAmount 3000

### Blast dementors away ###
execute at @s as @e[tag=dementorEngine,distance=..60] run function hp:spells/spell/patronus_blast
tag @s add inPatronus
scoreboard players set @s spellCooldown3 409

### Visual Effects ###
scoreboard players set @s patronusBlast 300

# Clear dementor stun
scoreboard players set @s darkSpiritStun 0 

effect give @s minecraft:night_vision 100 10 true
effect give @s minecraft:blindness 1 1 true

summon minecraft:lightning_bolt ~ ~300 ~  
execute at @s run particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 100 normal

execute as @s[scores={patronusLook=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Fire:2000,Marker:1b,Tags:["patronusJustSummoned","patronus","lion","spellEntity"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:86}}]}
execute as @s[scores={patronusLook=2}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Fire:2000,Marker:1b,Tags:["patronusJustSummoned","patronus","owl","spellEntity"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:72}}]}
execute as @s[scores={patronusLook=3}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Fire:2000,Marker:1b,Tags:["patronusJustSummoned","patronus","niffler","spellEntity"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:62}}]}
execute as @s[scores={patronusLook=4}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Fire:2000,Marker:1b,Tags:["patronusJustSummoned","patronus","wolf","spellEntity"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:55}}]}
execute as @s[scores={patronusLook=5}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Fire:2000,Marker:1b,Tags:["patronusJustSummoned","patronus","stag","spellEntity"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}}]}

tp @e[tag=patronusJustSummoned,limit=1] @s
scoreboard players set @e[tag=patronusJustSummoned,limit=1] tmp 22
tag @e[tag=patronusJustSummoned,limit=1] remove patronusJustSummoned

