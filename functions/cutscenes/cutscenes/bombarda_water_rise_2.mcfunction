execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=42}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=42}] run function hp:cutscenes/fade_out

# Fix cutscene start location (move player to next room with more water)
execute as @s[scores={cutSceneTimer=1}] run scoreboard players add @s posZ 13700000

execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 59 182 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7455 59 182 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7452 59 182 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7449 59 182 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7449 59 179 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7452 59 179 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7455 59 179 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 59 179 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 59 176 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7455 59 176 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7452 59 176 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7449 59 176 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7458 59 173 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7455 59 173 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7452 59 173 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] positioned 7449 59 173 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["risingWater"],NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1492}}]}
execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=16] at @s run tp @s ~ ~0.0265 ~
execute as @s[scores={cutSceneTimer=42..300},tag=cutsceneLeader] as @e[tag=risingWater,limit=16] at @s run data merge entity @s {Fire:200}


title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=42..300}] 7452.87 67.88 172.58 350.46 18.17
execute as @s[scores={cutSceneTimer=280}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=302}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=302}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run kill @e[tag=risingWater]
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaSecondPipeDestroyed global 0
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run scoreboard players set bombardaSecondPipeHasBeenDestroyed global 0
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=303}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=324}] run function hp:cutscenes/exit_cutscene