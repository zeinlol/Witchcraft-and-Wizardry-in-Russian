# Performance wrapper for sidequests

scoreboard players operation @s questState = toadHunt4 sharedQuests

### Function ###
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=trevor4] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=trevor4] run scoreboard players set toadHunt4 sharedQuests 2
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=trevor4] run scoreboard players set @s trackedQuestID 39
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=trevor4] at @s run playsound minecraft:custom.inventory.pickup.meat master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=trevor4] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=trevor4] run tag @s remove visible

execute if score @s trackedQuestID matches 39 run function hp:quests/quests/toad_hunt_4/function