# This hold area specific functions for the Vera Verto spell challenge

# Mirror mcGonagall
execute store result entity 284743c5-4b30-438c-bb84-f9a79c249b15 Rotation[0] float 1 run data get entity e81c917a-e505-4c22-af67-9ea583022799 Rotation[0] 1
execute store result entity 284743c5-4b30-438c-bb84-f9a79c249b15 Rotation[1] float 1 run data get entity e81c917a-e505-4c22-af67-9ea583022799 Rotation[1] 1
execute as e81c917a-e505-4c22-af67-9ea583022799 if score @s expression matches 1.. store result entity 284743c5-4b30-438c-bb84-f9a79c249b15 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 17
execute as e81c917a-e505-4c22-af67-9ea583022799 if score @s expression matches 0 store result entity 284743c5-4b30-438c-bb84-f9a79c249b15 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 18

# Mirror snake chain
execute store result entity c4fb2807-8d95-44ff-927f-2e0c8df56a66 ArmorItems[3].tag.Damage int 1 run data get entity d4944268-f2d4-4542-9082-d6e2fc886a0e ArmorItems[3].tag.Damage 1

# Mirror Magnets
execute store result entity aaf66806-d602-468d-a305-2f86e764783d HandItems[1].tag.Damage int 1 run data get entity 6321b7f9-9201-4e28-a386-20e423660c53 ArmorItems[3].tag.Damage
execute store result entity 84be9db0-a0d6-435b-92d5-a77df2e5c572 HandItems[1].tag.Damage int 1 run data get entity 5a2d974f-1663-4b99-b225-fc4e3dddc080 ArmorItems[3].tag.Damage
execute store result entity 554af854-31d8-4526-861d-35a1e7b392b1 HandItems[1].tag.Damage int 1 run data get entity 22c20bb2-4db0-4007-9945-b5c6fe79a824 ArmorItems[3].tag.Damage
execute store result entity 296a314f-d9c1-4464-938d-2b582467fe7b HandItems[1].tag.Damage int 1 run data get entity 3f2ae031-fe0c-48f5-b944-da2f0f7dfe92 ArmorItems[3].tag.Damage
execute store result entity dc95b379-5e1b-4f0a-ae1c-0036114dc870 HandItems[1].tag.Damage int 1 run data get entity 50b515ce-9f6f-4e27-a62c-01dca734694b ArmorItems[3].tag.Damage
execute store result entity cf51caa1-7af4-430f-8493-c0b39d108819 HandItems[1].tag.Damage int 1 run data get entity 1b32bced-50f3-43bd-a278-03b985ee5c1a ArmorItems[3].tag.Damage
execute store result entity d16b3b6d-4e62-4a3c-a5bb-b08d4b05ec57 HandItems[1].tag.Damage int 1 run data get entity 59775882-6c41-4ecf-8786-da25aa7f26f0 ArmorItems[3].tag.Damage
execute store result entity af79265e-4975-40cd-9914-7db790a80f4e HandItems[1].tag.Damage int 1 run data get entity b12834a6-4d4c-42c1-a3d7-e971f8fe4988 ArmorItems[3].tag.Damage
execute store result entity 5250756a-7acf-486b-9fc1-30657ab1dd45 HandItems[1].tag.Damage int 1 run data get entity c4d9eda4-9162-4e2b-84ba-832e49683265 ArmorItems[3].tag.Damage
execute store result entity 7cae8dab-9ec5-4e5d-8fab-4c38dfc00097 HandItems[1].tag.Damage int 1 run data get entity 2b8fd49e-79eb-4b36-a9e0-5f9ddfb03d20 ArmorItems[3].tag.Damage

# Doors to each room
function hp:quests/quests/vera_verto/door_1
function hp:quests/quests/vera_verto/door_2
function hp:quests/quests/vera_verto/door_3


##########
# Room 1 #
##########
# Pillars
function hp:quests/quests/vera_verto/pillar_1
function hp:quests/quests/vera_verto/pillar_2

execute if score room1Chain global matches 1 if score hasPulledRoom1Chain global matches 0 as @p[scores={trackedQuestID=20}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=26}] run tag @s add cutsceneLeader
execute if score room1Chain global matches 1 if score hasPulledRoom1Chain global matches 0 as @a[scores={trackedQuestID=20}] run scoreboard players set @s cutSceneID 26
execute if score room1Chain global matches 1 if score hasPulledRoom1Chain global matches 0 as @a[scores={trackedQuestID=20}] run function hp:cutscenes/init_cutscene
execute if score room1Chain global matches 1 if score hasPulledRoom1Chain global matches 0 run scoreboard players set hasPulledRoom1Chain global 1

execute if score room2Chain global matches 1 if score hasPulledRoom2Chain global matches 0 as @p[scores={trackedQuestID=20}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=27}] run tag @s add cutsceneLeader
execute if score room2Chain global matches 1 if score hasPulledRoom2Chain global matches 0 as @a[scores={trackedQuestID=20}] run scoreboard players set @s cutSceneID 27
execute if score room2Chain global matches 1 if score hasPulledRoom2Chain global matches 0 as @a[scores={trackedQuestID=20}] run function hp:cutscenes/init_cutscene
execute if score room2Chain global matches 1 if score hasPulledRoom2Chain global matches 0 run scoreboard players set hasPulledRoom2Chain global 1

##########
# Room 2 #
##########
# Rotating pillar_1
execute as 195ae4d5-be62-4381-ad8a-05788c6e211d run function hp:quests/quests/vera_verto/rotating_pillar

# Magnet blockers
function hp:quests/quests/vera_verto/magnet_block_1
function hp:quests/quests/vera_verto/magnet_block_2
function hp:quests/quests/vera_verto/magnet_block_3
function hp:quests/quests/vera_verto/magnet_block_4

# Cage 1
execute if score veraVertoCage1Direction global matches 0 if score veraVertoChain1 global matches 1 if score veraVertoChain2 global matches 1 if score veraVertoChain3 global matches 1 run playsound minecraft:custom.gameplay_element.ding master @a 8662 73 8 30 1.5 1
execute if score veraVertoCage1Direction global matches 0 if score veraVertoChain1 global matches 1 if score veraVertoChain2 global matches 1 if score veraVertoChain3 global matches 1 run scoreboard players set veraVertoCage1Direction global 1
function hp:quests/quests/vera_verto/cage_1


##########
# Room 3 #
##########
# Door / gate
function hp:quests/quests/vera_verto/door_4
function hp:quests/quests/vera_verto/door_5

# Fix that magnet blocking gate attaches to magnet
execute if score veraVertoDoor5Direction global matches 0 unless block 8627 74 25 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false] run fill 8627 71 23 8627 74 25 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Magnet blocker
function hp:quests/quests/vera_verto/magnet_block_5