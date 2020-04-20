# Increment spell challenge sessionID
scoreboard players add veraVertoSpellChallengeID global 1

# This resets the Vera Verto spell challenge

# Magnets
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8472 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8456 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8456 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8472 -8 1 1 false @s

function hp:quests/quests/vera_verto/reset_magnets

# Locked doors
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8584 8 1 1 false @s

execute as 34e7952a-233f-4bd3-a002-ed3cfbd23974 at @s run function hp:misc/close_door
execute as 126ed37c-f6bb-44ba-b4e0-1dc989a7c02c at @s run function hp:misc/close_door

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8600 8 1 1 false @s

execute as cb007d90-71d0-4f60-a85c-5754d573b15f at @s run function hp:misc/close_door
execute as e5723eb8-0b8c-43b1-b06e-526ba0041009 at @s run function hp:misc/close_door



# Load chunks for summoning creatures
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8584 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8568 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8552 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8584 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8568 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8552 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8584 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8568 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8552 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8584 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8568 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8552 24 1 1 false @s

# Close fence gates
setblock 8553 71 -3 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock 8573 71 -2 minecraft:spruce_fence_gate[facing=north,in_wall=false,open=false,powered=false]
setblock 8573 71 1 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 8553 71 3 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]

# Summon creatures for maze thing
execute positioned 8568 71 13 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8579 71 20 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8579 71 6 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8566 71 -7 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8567 71 -13 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8572 71 -20 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8554 71 -24 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8548 71 -19 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8547 71 -7 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8557 71 -5 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8551 71 5 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8557 71 19 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 8549 71 21 run function hp:creatures/toad/summon_toad
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned


execute positioned 8553 71 18 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s add keyBearer
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned

execute positioned 8556 71 -14 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s add keyBearer
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned

execute positioned 8578 71 -10 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s add keyBearer
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned

execute positioned 8566 71 7 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s add keyBearer
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned




##############
# First room #
##############
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8616 -8 1 1 false @s
# fill 8620 71 -14 8620 73 -14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute as a4e8ad96-04b1-4193-b661-20c78d3a5a81 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8616 -24 1 1 false @s
execute as c77ada68-b881-4351-822d-ea5ff6ada257 at @s run function hp:misc/reset_lever
# Pillar 1
fill 8620 67 -26 8620 72 -26 air
fill 8620 67 -26 8620 68 -26 dark_prismarine
setblock 8620 67 -26 minecraft:clay
# Pillar 2
fill 8620 67 -29 8620 73 -29 air
fill 8620 67 -29 8620 68 -29 dark_prismarine
setblock 8620 67 -29 minecraft:clay

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8632 -24 1 1 false @s
execute as e555a7f1-e029-4c68-aec7-3377a07ec1a7 at @s run function hp:misc/reset_lever

###############
# Second room #
###############
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8632 8 1 1 false @s
fill 8634 71 0 8634 73 0 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as 68094be7-2221-468a-b248-dd809e20fd5d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 5
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8632 -8 1 1 false @s
execute as 195ae4d5-be62-4381-ad8a-05788c6e211d at @s run function hp:misc/reset_rotating_pillar

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8648 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8648 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8664 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8664 8 1 1 false @s

# Magnet
execute as 1a94c974-a658-41ba-bfa1-1d0ec1cdd72e at @s run function hp:misc/reset_magnetic_object

# Magnet blockers
fill 8650 71 1 8650 71 -1 minecraft:smooth_stone
fill 8651 71 -2 8653 71 -2 minecraft:air
fill 8654 71 -1 8654 71 1 minecraft:air
fill 8653 71 2 8651 71 2 minecraft:air

fill 8650 70 1 8650 70 -1 minecraft:piston_head[facing=up,short=false,type=sticky]
fill 8651 70 -2 8653 70 -2 minecraft:smooth_stone
fill 8654 70 -1 8654 70 1 minecraft:smooth_stone
fill 8653 70 2 8651 70 2 minecraft:smooth_stone

fill 8650 69 1 8650 69 -1 minecraft:sticky_piston[extended=true,facing=up]
fill 8651 69 -2 8653 69 -2 minecraft:sticky_piston[extended=false,facing=up]
fill 8654 69 -1 8654 69 1 minecraft:sticky_piston[extended=false,facing=up]
fill 8653 69 2 8651 69 2 minecraft:sticky_piston[extended=false,facing=up]

fill 8650 68 1 8650 68 -1 minecraft:redstone_block
fill 8651 68 -2 8653 68 -2 minecraft:smooth_stone
fill 8654 68 -1 8654 68 1 minecraft:smooth_stone
fill 8653 68 2 8651 68 2 minecraft:smooth_stone

# Gate
fill 8662 72 7 8662 76 9 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute as 3e3f4731-90cb-45c3-8d8f-0071b17895ff store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as 5e960531-d728-4318-8d83-7806d5eeb801 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as a0220424-3712-4243-8637-b9c31d5b95bb store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6

execute as 4443f13f-b2a3-4f31-b815-61b73692cbfe store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as 81760fa9-3bdc-4c8c-9990-a6b53fdaa123 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as e89ab767-2ecb-41d7-b991-ff1eaba147d1 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6

# Barrier
execute as 282ec29c-b63f-4cc4-8a01-b7942076050f at @s run function hp:misc/reset_bombarda_blockade

##############
# Third Room #
##############
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8616 8 1 1 false @s
fill 8620 71 14 8620 73 14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute as 2a845776-8895-43a1-9d58-0d8d6953aa33 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 5
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8616 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8632 24 1 1 false @s
fill 8613 71 20 8613 73 20 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
fill 8612 71 21 8612 73 21 air
fill 8614 71 21 8614 73 21 air
execute as 334e1857-e68f-4ed9-a02b-c1cfae3aa86c at @s run function hp:misc/reset_lever 
setblock 8618 71 24 air
setblock 8618 70 24 minecraft:smooth_stone
setblock 8618 69 24 minecraft:sticky_piston[extended=false,facing=up]
setblock 8618 68 24 minecraft:smooth_stone
fill 8627 71 23 8627 74 25 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as 34b510ad-8b18-43a7-8d29-c370aa0a77a0 at @s run function hp:misc/close_door
execute as 9ff74b00-41d8-4523-b0df-3dd6e8ae4229 at @s run function hp:misc/reset_lever 
execute as df716348-ae38-43b1-80d2-7706f3492861 at @s run function hp:misc/reset_magnetic_object

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8616 40 1 1 false @s
execute positioned 8620 71 41 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 20
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = veraVertoSpellChallengeID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s add keyBearer
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned
kill @e[tag=chunkLoader]


# Scoreboard
scoreboard players set veraVertoCage1Direction global 0
scoreboard players set veraVertoDoor1Direction global 0
scoreboard players set veraVertoDoor2Direction global 0
scoreboard players set veraVertoDoor3Direction global 0
scoreboard players set veraVertoDoor4Direction global 0 
scoreboard players set veraVertoDoor5Direction global 0
scoreboard players set veraVertoMagnetBlock1Direction global 1
scoreboard players set veraVertoMagnetBlock2Direction global 0
scoreboard players set veraVertoMagnetBlock3Direction global 0
scoreboard players set veraVertoMagnetBlock4Direction global 0
scoreboard players set veraVertoMagnetBlock5Direction global 0
scoreboard players set veraVertoPillar1Direction global 0
scoreboard players set veraVertoPillar2Direction global 0

scoreboard players set veraVertoCage1 global -10
scoreboard players set veraVertoDoor1 global -10
scoreboard players set veraVertoDoor2 global -10
scoreboard players set veraVertoDoor3 global -10
scoreboard players set veraVertoDoor4 global -10
scoreboard players set veraVertoDoor5 global -10
scoreboard players set veraVertoMagnetBlock1 global 5
scoreboard players set veraVertoMagnetBlock2 global -5
scoreboard players set veraVertoMagnetBlock3 global -5
scoreboard players set veraVertoMagnetBlock4 global -5
scoreboard players set veraVertoMagnetBlock5 global -5
scoreboard players set veraVertoPillar1 global -10
scoreboard players set veraVertoPillar2 global -10

scoreboard players set veraVertoChain1 global 0
scoreboard players set veraVertoChain2 global 0
scoreboard players set veraVertoChain3 global 0

scoreboard players set room1Chain global 0
scoreboard players set room2Chain global 0
scoreboard players set hasPulledRoom1Chain global 0
scoreboard players set hasPulledRoom2Chain global 0