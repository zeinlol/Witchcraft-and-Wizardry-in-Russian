# Increment spell challenge sessionID
scoreboard players add dungeonDelvingID global 1


summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1832 888 1 1 false @s
summon armor_stand 1828 93 889 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 6
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = dungeonDelvingID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1832 904 1 1 false @s
execute as 5ac67dd6-cbcd-4e6a-8f12-ccab357fd43d run function hp:misc/reset_wingardium_switch

fill 1830 92 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1784 888 1 1 false @s
fill 1790 80 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1720 824 1 1 false @s
fill 1724 51 822 1724 53 823 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Spawnpoints
scoreboard players set dungeonDelvingSecondSpawnPointUnlocked global 0
scoreboard players set dungeonDelvingThirdSpawnPointUnlocked global 0
scoreboard players set dungeonDelvingFourthSpawnPointUnlocked global 0
scoreboard players set dungeonDelvingFifthSpawnPointUnlocked global 0


# Water level
scoreboard players set dungeonDelvingWaterLevel global 0
scoreboard players set dungeonDelvingTargetWaterLevel global 0
scoreboard players set oldDungeonWaterLevel global 0
scoreboard players set dungeonDelvingWaterTick global 0

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 968 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 968 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 968 1 1 false @s

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 856 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 856 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 856 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 872 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 872 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 872 1 1 false @s

clone 1640 38 941 1678 38 983 1640 38 842 replace normal
clone 1640 39 941 1678 39 983 1640 39 842 replace normal
clone 1640 40 941 1678 40 983 1640 40 842 replace normal
clone 1640 41 941 1678 41 983 1640 41 842 replace normal
clone 1640 42 941 1678 42 983 1640 42 842 replace normal
clone 1640 43 941 1678 43 983 1640 43 842 replace normal
clone 1640 44 941 1678 44 983 1640 44 842 replace normal

setblock 1658 42 866 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 1658 42 861 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 1659 42 857 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 1656 42 855 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 1664 42 859 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
setblock 1666 42 872 minecraft:jungle_button[face=ceiling,facing=south,powered=false]

setblock 1657 42 860 minecraft:acacia_sapling[stage=0]
setblock 1655 42 866 minecraft:acacia_sapling[stage=0]
setblock 1658 42 869 minecraft:acacia_sapling[stage=0]
setblock 1653 42 865 minecraft:poppy
setblock 1654 42 867 minecraft:poppy
setblock 1672 44 858 minecraft:poppy



# Reset skeleton triggers
scoreboard players set dungeonDelvingHasTriggeredEnemies1 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies2 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies3 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies4 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies5 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies6 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies7 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies8 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies9 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies10 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies11 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies12 global 0
scoreboard players set dungeonDelvingHasTriggeredEnemies13 global 0

kill @e[tag=chunkLoader]