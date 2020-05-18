execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=42}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=42}] run function hp:cutscenes/fade_out

# Fix cutscene start location (move player to next room with more water)
execute as @s[scores={cutSceneTimer=1}] run scoreboard players add @s posZ 13700000


execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 49 -29 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 49 -26 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -17 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -14 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -14 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -14 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -17 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -17 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -17 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -20 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -20 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -20 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -20 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7473 49 -23 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -26 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -26 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -26 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -26 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -29 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -29 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -29 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -29 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -32 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -32 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -32 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -32 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 49 -32 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -35 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -35 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -35 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -35 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7470 49 -38 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7467 49 -38 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7464 49 -38 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7461 49 -38 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}

execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=40] at @s run tp @s ~ ~0.0175 ~
execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=40] at @s run data merge entity @s {Fire:200}


title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=42..300}] 7464.28 55.12 -9.89 194.65 1.73
# tp @s[scores={cutSceneTimer=42..300}] 7463.62 55.59 -10.26 195.33 2.45
execute as @s[scores={cutSceneTimer=280}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=302}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run kill @e[tag=risingWater]
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaFirstPipeDestroyed global 0
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaFirstPipeHasBeenDestroyed global 0
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=324}] run function hp:cutscenes/exit_cutscene