replaceitem entity @s hotbar.0 written_book{pages:["[\"\",{\"text\":\"Click to calculate rotation\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hp:npc/calculate_path_points_rotation\"}},{\"text\":\"\\n\\n\"},{\"text\":\"Click to set up follow path npc\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/execute as @e[tag=npc,limit=1,sort=nearest,distance=..3,tag=npc] run function hp:npc/make_follow_path_npc\"}},{\"text\":\"\\n\\n\"},{\"text\":\"Move to path\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/execute as @e[tag=fpActor,limit=1,sort=nearest,distance=..3,tag=npc] run function hp:npc/move_to_path\"}},{\"text\":\"\\n\\n\"},{\"text\":\"Freeze all moter function\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add freezeNPC\"}},{\"text\":\"\\n\\n\"},{\"text\":\"Unfreeze\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s remove freezeNPC\"}},{\"text\":\"\\n \"}]"],title:"Path Point Editor",author:"Ya Boi",generation:3,qDetect:1b,altFDetect:1b}


# cheeky hacked f and q detection
execute as @s[scores={pressQ=1..}] run tag @s add hasPressedQ
execute as @a[tag=hasPressedQ] run kill @e[type=item,nbt={Item:{tag:{qDetect:1b}}}]
execute as @a[tag=hasPressedQ] run scoreboard players set @s pressQ 0


execute as @s if entity @s[nbt={Inventory:[{Slot:-106b,tag:{altFDetect:1b}}]}] run tag @s add hasPressedF

# Copy paste Path ID
execute as @s[tag=hasPressedF,scores={pathIndicator=7},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[5].lvl int 1 run scoreboard players operation @e[tag=hover,limit=1,tag=pathIndicator] PathID = @s CopyPathID
execute as @s[tag=hasPressedF,scores={pathIndicator=7},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run tellraw @s ["",{"text":"Pasted path ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=pathIndicator]","objective":"PathID"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={pathIndicator=7},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run scoreboard players operation @s CopyPathID = @e[tag=hover,limit=1,tag=pathIndicator] PathID
execute as @s[tag=hasPressedF,scores={pathIndicator=7},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run tellraw @s ["",{"text":"Copied Path ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=pathIndicator]","objective":"PathID"},"bold":true,"color":"gold"}]


# Copy paste point ID
execute as @s[tag=hasPressedF,scores={pathIndicator=6},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[4].lvl int 1 run scoreboard players operation @e[tag=hover,limit=1,tag=pathIndicator] PathPointID = @s CopyPathPointID
execute as @s[tag=hasPressedF,scores={pathIndicator=6},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run tellraw @s ["",{"text":"Pasted path point ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=pathIndicator]","objective":"PathPointID"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={pathIndicator=6},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run scoreboard players operation @s CopyPathPointID = @e[tag=hover,limit=1,tag=pathIndicator] PathPointID
execute as @s[tag=hasPressedF,scores={pathIndicator=6},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] run tellraw @s ["",{"text":"Copied path point ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=pathIndicator]","objective":"PathPointID"},"bold":true,"color":"gold"}]

scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator] tmp 0
execute as @s[tag=hasPressedF,scores={pathIndicator=5}] as @e[tag=hover,limit=1,tag=pathIndicator,scores={pathEnding=0,tmp=0}] at @s store success score @s tmp store result block ~ 0 ~ Items[0].tag.Enchantments[6].lvl int 1 run scoreboard players set @s pathEnding 1
execute as @s[tag=hasPressedF,scores={pathIndicator=5}] as @e[tag=hover,limit=1,tag=pathIndicator,scores={pathEnding=1,tmp=0}] at @s store success score @s tmp store result block ~ 0 ~ Items[0].tag.Enchantments[6].lvl int 1 run scoreboard players set @s pathEnding 2
execute as @s[tag=hasPressedF,scores={pathIndicator=5}] as @e[tag=hover,limit=1,tag=pathIndicator,scores={pathEnding=2,tmp=0}] at @s store success score @s tmp store result block ~ 0 ~ Items[0].tag.Enchantments[6].lvl int 1 run scoreboard players set @s pathEnding 3
execute as @s[tag=hasPressedF,scores={pathIndicator=5}] as @e[tag=hover,limit=1,tag=pathIndicator,scores={pathEnding=3,tmp=0}] at @s store success score @s tmp store result block ~ 0 ~ Items[0].tag.Enchantments[6].lvl int 1 run scoreboard players set @s pathEnding 0

execute as @s[tag=hasPressedF,scores={pathIndicator=4},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[4].lvl int 1 run scoreboard players add @e[tag=hover,limit=1,tag=pathIndicator] PathPointID 1
execute as @s[tag=hasPressedF,scores={pathIndicator=4},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[4].lvl int 1 run scoreboard players remove @e[tag=hover,limit=1,tag=pathIndicator] PathPointID 1


execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=!isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[5].lvl int 1 run scoreboard players add @e[tag=hover,limit=1,tag=pathIndicator] PathID 1
execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=isSneaking] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[5].lvl int 1 run scoreboard players remove @e[tag=hover,limit=1,tag=pathIndicator] PathID 1

execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=!isSneaking] at @e[tag=hover,limit=1,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run scoreboard players add @s PathID 1
execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=!isSneaking] at @e[tag=hover,limit=1,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run tellraw @a ["",{"text":"ID set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"PathID"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=isSneaking] at @e[tag=hover,limit=1,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run scoreboard players remove @s PathID 1
execute as @s[tag=hasPressedF,scores={pathIndicator=3},tag=isSneaking] at @e[tag=hover,limit=1,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run tellraw @a ["",{"text":"ID set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"PathID"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={pathIndicator=3}] at @e[tag=hover,limit=1,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] store result entity @s ArmorItems[3].tag.PathID int 1 run scoreboard players get @s PathID

execute as @s[tag=hasPressedF,scores={pathIndicator=2}] at @e[tag=hover,tag=pathIndicator] run setblock ~ 0 ~ bedrock
execute as @s[tag=hasPressedF,scores={pathIndicator=2}] at @e[tag=hover,tag=pathIndicator] run setblock ~ 1 ~ stone
execute as @s[tag=hasPressedF,scores={pathIndicator=2}] run kill @e[tag=hover,tag=pathIndicator]


execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=600] {CustomName:"{\"text\":\"reset\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=400,tag=pathIndicator] idle 600
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=400] {CustomName:"{\"text\":\"600\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=200,tag=pathIndicator] idle 400
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=200] {CustomName:"{\"text\":\"400\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=100,tag=pathIndicator] idle 200
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=100] {CustomName:"{\"text\":\"200\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=90,tag=pathIndicator] idle 100
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=90] {CustomName:"{\"text\":\"100\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=80,tag=pathIndicator] idle 90
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=80] {CustomName:"{\"text\":\"90\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=70,tag=pathIndicator] idle 80
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=70] {CustomName:"{\"text\":\"80\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=60,tag=pathIndicator] idle 70
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=60] {CustomName:"{\"text\":\"70\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=50,tag=pathIndicator] idle 60
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=50] {CustomName:"{\"text\":\"60\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=40,tag=pathIndicator] idle 50
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=40] {CustomName:"{\"text\":\"50\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=30,tag=pathIndicator] idle 40
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=30] {CustomName:"{\"text\":\"40\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=20,tag=pathIndicator] idle 30
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=20] {CustomName:"{\"text\":\"30\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=10,tag=pathIndicator] idle 20
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=10] {CustomName:"{\"text\":\"20\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=0,tag=pathIndicator] idle 10
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=0] {CustomName:"{\"text\":\"10\"}"}
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run scoreboard players set @e[tag=hover,limit=1,tag=pathIndicator,name=reset,tag=pathIndicator] idle 0
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] run data merge entity @e[tag=hover,limit=1,tag=pathIndicator,name=reset] {CustomName:"{\"text\":\"0\"}"}

execute as @s[tag=hasPressedF,scores={pathIndicator=1}] at @e[tag=hover,tag=npc,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run scoreboard players add @s npcPhase 1
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] at @e[tag=hover,tag=npc,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] run scoreboard players set @s[scores={npcPhase=4}] npcPhase 1
execute as @s[tag=hasPressedF,scores={pathIndicator=1}] at @e[tag=hover,tag=npc,tag=fpActor] as @e[tag=fpEngine,limit=1,sort=nearest,distance=..1] store result entity @s ArmorItems[3].tag.npcPhase int 1 run scoreboard players get @s npcPhase


execute as @s[tag=hasPressedF,scores={pathIndicator=1}] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[9].lvl int 1 run scoreboard players get @e[tag=hover,limit=1,tag=pathIndicator] idle


execute as @s[tag=hasPressedF,scores={pathIndicator=0}] store result entity @e[tag=hover,limit=1,tag=pathIndicator] Rotation[0] float 1 run data get entity @s Rotation[0]

# The movement system writes into the npc engine's motion nbt tags so slopes and stairs etc are supported. Therefore I need to find and store x and z displacement values:
# execute if entity @s[tag=hasPressedF,scores={pathIndicator=0}] as @e[tag=hover,limit=1] at @s run function hp:npc/edit_path_xz_distance
# execute as @s[tag=hasPressedF,scores={pathIndicator=0}] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[1].lvl int 1 run data get entity @e[tag=hover,limit=1] Rotation[0] 1
# execute as @s[tag=hasPressedF,scores={pathIndicator=0}] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[2].lvl int 1 run scoreboard players get @e[tag=hover,limit=1] pathPoint_dx
# execute as @s[tag=hasPressedF,scores={pathIndicator=0}] at @e[tag=hover,limit=1,tag=pathIndicator] store result block ~ 0 ~ Items[0].tag.Enchantments[3].lvl int 1 run scoreboard players get @e[tag=hover,limit=1] pathPoint_dz
# tellraw @s[tag=hasPressedF,scores={pathIndicator=0}] ["",{"text":"Rotation set to","color":"white"},{"text":" ","color":"gold"},{"score":{"name":"@s[tag=hasPressedF,scores={pathIndicator=0}]","objective":"CurrentXRot"},"bold":true,"color":"gold"},{"text":" with displacement (","color":"white"},{"score":{"name":"@e[tag=hover,limit=1]","objective":"pathPoint_dx"},"color":"yellow"},{"text":" ## ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1]","objective":"pathPoint_dz"},"color":"yellow"},{"text":")","color":"white"}]



execute as @s[tag=hasPressedQ] run scoreboard players add @s pathIndicator 1
execute as @s[tag=hasPressedQ,scores={pathIndicator=8..}] run scoreboard players set @s pathIndicator 0



replaceitem entity @s hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set NPC path point\",\"color\":\"gold\",\"bold\":true}"},EntityTag:{Tags:["npcPathPoint"]},qDetect:1b,altFDetect:1b} 1
# replaceitem entity @s hotbar.2 minecraft:air
# replaceitem entity @s hotbar.3 minecraft:air
# replaceitem entity @s hotbar.4 minecraft:air
# replaceitem entity @s hotbar.5 minecraft:air
# replaceitem entity @s hotbar.6 minecraft:air
# replaceitem entity @s hotbar.7 minecraft:air
# replaceitem entity @s hotbar.8 minecraft:air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:air

# Clear cinematic bars
tag @s remove letterbox