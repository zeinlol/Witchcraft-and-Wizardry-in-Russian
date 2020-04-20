summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 904 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 920 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 920 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 904 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 904 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 920 1 1 false @s

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1672 968 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1656 968 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1640 968 1 1 false @s


execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1657 42 860 minecraft:air
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1655 42 866 minecraft:air
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1658 42 869 minecraft:air
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1653 42 865 minecraft:air
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1654 42 867 minecraft:air
execute if score dungeonDelvingWaterLevel global matches ..6 run setblock 1672 44 858 minecraft:air

execute if score dungeonDelvingWaterLevel global matches 1.. run clone 1640 38 893 1678 38 935 1640 38 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 2.. run clone 1640 39 893 1678 39 935 1640 39 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 3.. run clone 1640 40 893 1678 40 935 1640 40 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 4.. run clone 1640 41 893 1678 41 935 1640 41 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 5.. run clone 1640 42 893 1678 42 935 1640 42 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 6.. run clone 1640 43 893 1678 43 935 1640 43 842 replace normal
execute if score dungeonDelvingWaterLevel global matches 7 run clone 1640 44 893 1678 44 935 1640 44 842 replace normal

execute if score dungeonDelvingWaterLevel global matches 0 run clone 1640 38 941 1678 38 983 1640 38 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..1 run clone 1640 39 941 1678 39 983 1640 39 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..2 run clone 1640 40 941 1678 40 983 1640 40 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..3 run clone 1640 41 941 1678 41 983 1640 41 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..4 run clone 1640 42 941 1678 42 983 1640 42 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..5 run clone 1640 43 941 1678 43 983 1640 43 842 replace normal
execute if score dungeonDelvingWaterLevel global matches ..6 run clone 1640 44 941 1678 44 983 1640 44 842 replace normal

# Things that pop off if they aren't last
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1658 42 866 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1658 42 861 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1659 42 857 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1656 42 855 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1664 42 859 minecraft:jungle_button[face=ceiling,facing=south,powered=false]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1666 42 872 minecraft:jungle_button[face=ceiling,facing=south,powered=false]

execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1657 42 860 minecraft:acacia_sapling[stage=0]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1655 42 866 minecraft:acacia_sapling[stage=0]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1658 42 869 minecraft:acacia_sapling[stage=0]
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1653 42 865 minecraft:poppy
execute if score dungeonDelvingWaterLevel global matches ..4 run setblock 1654 42 867 minecraft:poppy
execute if score dungeonDelvingWaterLevel global matches ..6 run setblock 1672 44 858 minecraft:poppy


# Empty
# clone 1640 33 941 1678 33 983 1640 33 842

# Full
# clone 1640 33 893 1678 33 935 1640 33 842

kill @e[tag=chunkLoader]