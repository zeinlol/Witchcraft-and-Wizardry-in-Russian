# This hold area specific functions for the alohomora spell challenge

# Timer
execute if score alohomoraChainTimerIsGoing global matches 1 run function hp:quests/quests/alohomora/timer

# Stuck timer. Only adds time if systick is less than 200 to prevent the timer counting up while on the main menu if you just choose to pause the game there.
execute if score systick time matches ..200 if score alohomoraStuckTimerIsGoing global matches 1 run scoreboard players operation alohomoraStuckTimer global += systick time

# If you have been stuck for 7 minutes automatically open the gate
execute if score alohomoraStuckTimer global matches 420000.. run playsound minecraft:custom.gameplay_element.ding master @a 6478 45 -12 30 1 1

# Success
execute if score alohomoraStuckTimer global matches 420000.. as @p[scores={trackedQuestID=17}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=16}] run tag @s add cutsceneLeader
execute if score alohomoraStuckTimer global matches 420000.. as @a[scores={trackedQuestID=17}] run scoreboard players set @s cutSceneID 16
execute if score alohomoraStuckTimer global matches 420000.. as @a[scores={trackedQuestID=17}] run function hp:cutscenes/init_cutscene
execute if score alohomoraStuckTimer global matches 420000.. unless entity @p[tag=cutsceneLeader,scores={cutSceneID=16}] run tag @s add cutsceneLeader

execute if score alohomoraStuckTimer global matches 420000.. run scoreboard players set alohomoraStuckTimerIsGoing global 0
execute if score alohomoraStuckTimer global matches 420000.. run scoreboard players set alohomoraChain1 global 0
execute if score alohomoraStuckTimer global matches 420000.. run scoreboard players set alohomoraChain2 global 0
execute if score alohomoraStuckTimer global matches 420000.. run scoreboard players set alohomoraChain3 global 0
execute if score alohomoraStuckTimer global matches 420000.. as 71967295-9b99-4d6c-819b-c21f418e3114 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraStuckTimer global matches 420000.. as 6395fce8-cb41-45d0-bd64-52e00c33034d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraStuckTimer global matches 420000.. as 1c9ad97b-afda-44ef-8a8d-207280cb97ad store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraStuckTimer global matches 420000.. run scoreboard players set alohomoraStuckTimer global 0


# Pillars (controlled by levers)
function hp:quests/quests/alohomora/pillar1
function hp:quests/quests/alohomora/pillar2

# Riddle drops
execute as @p[x=6562,y=14,z=-2,dx=4,dy=24,dz=4,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_alohomora_1
execute as @p[x=6562,y=14,z=-8,dx=4,dy=24,dz=4,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_alohomora_2
execute as @p[x=6593,y=3,z=-18,dx=16,dy=22,dz=4,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_alohomora_2
execute as @p[x=6593,y=3,z=14,dx=10,dy=22,dz=4,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_alohomora_2
execute as @p[x=6605,y=3,z=14,dx=4,dy=22,dz=4,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_alohomora_3

# Spawn monster books when entering cellar
execute if score alohomoraHasTriggeredMonsterBook global matches 0 if entity @p[x=6496,y=36,z=36,dx=8,dy=5,dz=12,tag=!inTravelPoint,tag=play] run function hp:quests/quests/alohomora/summon_monster_books