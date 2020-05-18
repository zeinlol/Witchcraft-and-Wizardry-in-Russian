# Reset box
execute as @e[tag=wingardium,scores={wingardiumBox=6}] unless score @s wingardiumBoxID = wingardiumBox6ID global run function hp:spells/spell/wingardium_dissolve


# Blow up pipe 1
execute if score bombardaFirstPipeDestroyed global matches 1 run particle minecraft:spit 7466 57 -22 0.4 0.4 0.4 0 30 force
execute if score bombardaFirstPipeDestroyed global matches 1 run particle minecraft:splash 7466 57 -22 0.4 0.4 0.4 0 70 force
execute if score bombardaFirstPipeDestroyed global matches 1 run particle minecraft:falling_dust blue_wool 7466 57 -22 0.4 0.4 0.4 0 20 force
execute if score bombardaFirstPipeDestroyed global matches 1 unless score bombardaFirstPipeHasBeenDestroyed global matches 1 run setblock 7466 57 -22 minecraft:birch_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
execute if score bombardaFirstPipeDestroyed global matches 1 unless score bombardaFirstPipeHasBeenDestroyed global matches 1 run playsound minecraft:custom.fx.fossing_water master @a 7466 57 -22 3 1
execute if score bombardaFirstPipeDestroyed global matches 1 unless score bombardaFirstPipeHasBeenDestroyed global matches 1 run scoreboard players set bombardaFirstPipeHasBeenDestroyed global 1
execute if score bombardaFirstPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s overrideRespawn 16
execute if score bombardaFirstPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s cutSceneID 18
execute if score bombardaFirstPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=1},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=18}] run tag @s add cutsceneLeader
execute if score bombardaFirstPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=2},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=18}] run tag @s add cutsceneLeader
execute if score bombardaFirstPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=3},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=18}] run tag @s add cutsceneLeader
execute if score bombardaFirstPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=4},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=18}] run tag @s add cutsceneLeader
execute if score bombardaFirstPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run function hp:cutscenes/init_cutscene
# Blow up pipe 2
execute if score bombardaSecondPipeDestroyed global matches 1 run particle minecraft:spit 7453 67 180 0.4 0.4 0.4 0 30 force
execute if score bombardaSecondPipeDestroyed global matches 1 run particle minecraft:splash 7453 67 180 0.4 0.4 0.4 0 70 force
execute if score bombardaSecondPipeDestroyed global matches 1 run particle minecraft:falling_dust blue_wool 7453 67 180 0.4 0.4 0.4 0 20 force
execute if score bombardaSecondPipeDestroyed global matches 1 unless score bombardaSecondPipeHasBeenDestroyed global matches 1 run setblock 7453 67 180 minecraft:birch_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
execute if score bombardaSecondPipeDestroyed global matches 1 unless score bombardaSecondPipeHasBeenDestroyed global matches 1 run playsound minecraft:custom.fx.fossing_water master @a 7453 67 180 3 1
execute if score bombardaSecondPipeDestroyed global matches 1 unless score bombardaSecondPipeHasBeenDestroyed global matches 1 run scoreboard players set bombardaSecondPipeHasBeenDestroyed global 1
execute if score bombardaSecondPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s overrideRespawn 17
execute if score bombardaSecondPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s cutSceneID 19
execute if score bombardaSecondPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=1},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=19}] run tag @s add cutsceneLeader
execute if score bombardaSecondPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=2},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=19}] run tag @s add cutsceneLeader
execute if score bombardaSecondPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=3},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=19}] run tag @s add cutsceneLeader
execute if score bombardaSecondPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=4},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=19}] run tag @s add cutsceneLeader
execute if score bombardaSecondPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run function hp:cutscenes/init_cutscene
# Blow up pipe 3
execute if score bombardaThirdPipeDestroyed global matches 1 run particle minecraft:spit 7473 84 220 0.4 0.4 0.4 0 30 force
execute if score bombardaThirdPipeDestroyed global matches 1 run particle minecraft:splash 7473 84 220 0.4 0.4 0.4 0 70 force
execute if score bombardaThirdPipeDestroyed global matches 1 run particle minecraft:falling_dust blue_wool 7473 84 220 0.4 0.4 0.4 0 20 force
execute if score bombardaThirdPipeDestroyed global matches 1 unless score bombardaThirdPipeHasBeenDestroyed global matches 1 run setblock 7473 84 220 minecraft:birch_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
execute if score bombardaThirdPipeDestroyed global matches 1 unless score bombardaThirdPipeHasBeenDestroyed global matches 1 run playsound minecraft:custom.fx.fossing_water master @a 7473 84 220 3 1
execute if score bombardaThirdPipeDestroyed global matches 1 unless score bombardaThirdPipeHasBeenDestroyed global matches 1 run scoreboard players set bombardaThirdPipeHasBeenDestroyed global 1
execute if score bombardaThirdPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s overrideRespawn 18
execute if score bombardaThirdPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run scoreboard players set @s cutSceneID 20
execute if score bombardaThirdPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=1},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=20}] run tag @s add cutsceneLeader
execute if score bombardaThirdPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=2},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=20}] run tag @s add cutsceneLeader
execute if score bombardaThirdPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=3},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=20}] run tag @s add cutsceneLeader
execute if score bombardaThirdPipeDestroyed global matches 1 as @p[scores={trackedQuestID=19,playerID=4},tag=!inProperCutScene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=20}] run tag @s add cutsceneLeader
execute if score bombardaThirdPipeDestroyed global matches 1 as @a[scores={trackedQuestID=19},tag=!inProperCutScene] run function hp:cutscenes/init_cutscene

# Underwater particles
execute positioned 7466.5 57.5 115.5 if entity @p[distance=..50] run particle minecraft:bubble 7466.5 57.5 115.5 0.3 0.3 0.3 0.25 1 force

execute positioned 7466.5 57.5 252.5 if entity @p[distance=..50] run particle minecraft:bubble 7466.5 57.5 252.5 0.3 0.3 0.3 0.25 1 force
execute positioned 7453.5 67.5 317.5 if entity @p[distance=..50] run particle minecraft:bubble 7453.5 67.5 317.5 0.3 0.3 0.3 0.25 1 force

execute positioned 7453.5 67.5 454.5 if entity @p[distance=..50] run particle minecraft:bubble 7453.5 67.5 454.5 0.3 0.3 0.3 0.25 1 force
execute positioned 7466.5 57.5 389.5 if entity @p[distance=..50] run particle minecraft:bubble 7466.5 57.5 389.5 0.3 0.3 0.3 0.25 1 force
execute positioned 7473.5 83.5 357.5 if entity @p[distance=..50] run particle minecraft:bubble 7473.5 83.5 357.5 0.3 0.3 0.3 0.25 1 force

# Bridge and stairs
function hp:quests/quests/bombarda_maxima/draw_bridge
function hp:quests/quests/bombarda_maxima/stair1
function hp:quests/quests/bombarda_maxima/stair2

# Drop platforms
function hp:quests/quests/bombarda_maxima/drop_platform1
function hp:quests/quests/bombarda_maxima/drop_platform2
function hp:quests/quests/bombarda_maxima/drop_platform3

# Out of sewer section

# Waves
execute if score bombardaWaveIsGoing global matches 0 if score bombardaWave global matches 1..3 if score bombardaWaveHasPulledChain global matches 1 run scoreboard players set bombardaWaveTimer global 50
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 50 run scoreboard players set bombardaWaveIsGoing global 1
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 50 run playsound minecraft:custom.ui.event15 master @a 7493 95 335 1 1 1
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 35 run playsound minecraft:custom.ui.event12 master @a 7493 95 335 1 1 1
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 10 run fill 7491 94 340 7491 95 339 barrier
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 10 run fill 7491 94 331 7491 95 330 barrier
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 5 if score bombardaWave global matches 1 run function hp:quests/quests/bombarda_maxima/wave1_enemies
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 5 if score bombardaWave global matches 2 run function hp:quests/quests/bombarda_maxima/wave2_enemies
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 5 if score bombardaWave global matches 3 run function hp:quests/quests/bombarda_maxima/wave3_enemies
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 1 run fill 7491 94 340 7491 95 339 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 1 run fill 7491 94 331 7491 95 330 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 1 run playsound minecraft:custom.gameplay_element.ding master @a 7493 97 336 5
execute if score bombardaWave global matches 1..3 if score bombardaWaveTimer global matches 1.. run scoreboard players remove bombardaWaveTimer global 1
# Open gate
execute if score bombardaWaveIsGoing global matches 0 if score bombardaWave global matches 4 if score bombardaWaveHasPulledChain global matches 1 run scoreboard players set bombardaWaveTimer global 10
execute if score bombardaWave global matches 4 if score bombardaWaveTimer global matches 4 run setblock 7493 95 335 air
execute if score bombardaWave global matches 4 if score bombardaWaveTimer global matches 2 run setblock 7493 96 335 air
execute if score bombardaWave global matches 4 if score bombardaWaveTimer global matches 4 run playsound minecraft:custom.fx.metal_door_open master @a 7493 96 335
execute if score bombardaWave global matches 4 if score bombardaWaveTimer global matches 4 run scoreboard players set bombardaWave global 5
execute if score bombardaWave global matches 4 if score bombardaWaveTimer global matches 1.. run scoreboard players remove bombardaWaveTimer global 1


# Wave 1 complete
execute if score bombardaWaveIsGoing global matches 1 if score bombardaWave global matches 1 if score bombardaWaveTimer global matches 0 unless entity @e[tag=creature,scores={questID=19,waveID=1}] run scoreboard players set bombardaCompleteWave1 global 1
execute if score bombardaCompleteWave1 global matches 1 run playsound minecraft:custom.gameplay_element.ding master @a 7493 97 336 5
execute if score bombardaCompleteWave1 global matches 1 store result entity 81136510-c437-40cd-bb22-fcd45e0eaa92 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score bombardaCompleteWave1 global matches 1 run scoreboard players set bombardaWaveIsGoing global 0
execute if score bombardaCompleteWave1 global matches 1 run scoreboard players set bombardaWave global 2
execute if score bombardaCompleteWave1 global matches 1 run scoreboard players set bombardaCompleteWave1 global 0

# Wave 2 complete
execute if score bombardaWaveIsGoing global matches 1 if score bombardaWave global matches 2 if score bombardaWaveTimer global matches 0 unless entity @e[tag=creature,scores={questID=19,waveID=2}] run scoreboard players set bombardaCompleteWave2 global 1
execute if score bombardaCompleteWave2 global matches 1 run playsound minecraft:custom.gameplay_element.ding master @a 7493 97 335 5
execute if score bombardaCompleteWave2 global matches 1 store result entity bee7f703-6bd0-42a9-b5fa-ee1742c8fc33 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score bombardaCompleteWave2 global matches 1 run scoreboard players set bombardaWaveIsGoing global 0
execute if score bombardaCompleteWave2 global matches 1 run scoreboard players set bombardaWave global 3
execute if score bombardaCompleteWave2 global matches 1 run scoreboard players set bombardaCompleteWave2 global 0

# Wave 3 complete
execute if score bombardaWaveIsGoing global matches 1 if score bombardaWave global matches 3 if score bombardaWaveTimer global matches 0 unless entity @e[tag=creature,scores={questID=19,waveID=3}] run scoreboard players set bombardaCompleteWave3 global 1
execute if score bombardaCompleteWave3 global matches 1 run playsound minecraft:custom.gameplay_element.ding master @a 7493 97 334 5
execute if score bombardaCompleteWave3 global matches 1 store result entity 537d9c87-554e-481c-9076-1cd712c07888 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score bombardaCompleteWave3 global matches 1 run scoreboard players set bombardaWaveIsGoing global 0
execute if score bombardaCompleteWave3 global matches 1 run scoreboard players set bombardaWave global 4
execute if score bombardaCompleteWave3 global matches 1 run scoreboard players set bombardaCompleteWave3 global 0

# Pull lever
execute if score bombardaWaveHasPulledChain global matches 1 run scoreboard players set bombardaWaveHasPulledChain global 0

# Pixie gnomes
execute if score bombardaHasTriggeredPixies global matches 0 if entity @p[x=7498,y=110,z=322,dx=7,dy=5,dz=15] run function hp:quests/quests/bombarda_maxima/summon_pixie_gnomes

# Rats
execute if score bombardaHasTriggeredRats global matches 0 positioned 7457 67 209 if entity @p[distance=..13] run function hp:quests/quests/bombarda_maxima/summon_rats

# Skeletons
# execute if score bombardaHasTriggeredSkeletons global matches 0 as 40143fa9-a530-4d68-88ec-481f62c3b42e if entity @s[tag=explodedBlockade] run function hp:quests/quests/bombarda_maxima/summon_skeletons


# If stuck on parkour for more than 7 minutes add a ladder
# Stuck timer. Only adds time if systick is less than 200 to prevent the timer counting up while on the main menu if you just choose to pause the game there.
execute if score systick time matches ..200 if score bombardaStuckTimerIsGoing global matches 1 run scoreboard players operation bombardaStuckTimer global += systick time

# If you have been stuck for 7 minutes automatically open the gate
execute if score bombardaStuckTimerIsGoing global matches 1 if score bombardaStuckTimer global matches 420000.. run playsound minecraft:custom.gameplay_element.ding master @a 7496 119 286 30 1 1

# Success
execute if score bombardaStuckTimerIsGoing global matches 1 if score bombardaStuckTimer global matches 420000.. as @a[scores={trackedQuestID=19}] run scoreboard players set @s cutSceneID 53
execute if score bombardaStuckTimerIsGoing global matches 1 if score bombardaStuckTimer global matches 420000.. as @a[scores={trackedQuestID=19}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=53}] run tag @s add cutsceneLeader
execute if score bombardaStuckTimerIsGoing global matches 1 if score bombardaStuckTimer global matches 420000.. as @a[scores={trackedQuestID=19}] run function hp:cutscenes/init_cutscene

execute if score bombardaStuckTimerIsGoing global matches 1 if score bombardaStuckTimer global matches 420000.. run scoreboard players set bombardaStuckTimerIsGoing global 0

execute unless score bombardaStuckTimer global matches 420000.. positioned 7499 109 316 if entity @p[tag=play,distance=..7] run scoreboard players set bombardaStuckTimerIsGoing global 1

execute positioned 7499 130 279 if entity @p[tag=play,distance=..7] run scoreboard players set bombardaStuckTimerIsGoing global 0