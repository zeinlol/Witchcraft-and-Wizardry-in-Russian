execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=42}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=42}] run function hp:cutscenes/fade_out

# Fix cutscene start location (move player to next room with more water)
execute as @s[scores={cutSceneTimer=1}] run scoreboard players add @s posZ 13700000

execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 227 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 227 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 224 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 221 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 218 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 215 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 212 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7475 80 209 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 209 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 212 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 215 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 218 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 221 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7472 80 224 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 224 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 221 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 218 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 215 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 212 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 209 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7469 80 206 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 206 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 209 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 212 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 215 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 218 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 221 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7466 80 224 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}

execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=29] at @s run tp @s ~ ~0.0165 ~
execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=29] at @s run data merge entity @s {Fire:200}


title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=42..300}] 7469.30 87.20 220.96 -92.95 60.00
execute as @s[scores={cutSceneTimer=280}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=302}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run kill @e[tag=risingWater]
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaThirdPipeDestroyed global 0
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaThirdPipeHasBeenDestroyed global 0
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=324}] run function hp:cutscenes/exit_cutscene