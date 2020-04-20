# This is the block animation for the room of requirement entrance door
execute if score roomOfRequirementEntranceDirection global matches 1 if score roomOfRequirementEntrance global matches 2 positioned 778 99 104 run stopsound @a[distance=..50] master minecraft:custom.fx.stone_rumble
execute if score roomOfRequirementEntranceDirection global matches 1 if score roomOfRequirementEntrance global matches 2 run playsound minecraft:custom.fx.stone_rumble master @a 778 99 104 5 1

execute if score roomOfRequirementEntrance global matches 3 run setblock 785 99 97 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 6 run setblock 785 99 95 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 9 run setblock 785 99 93 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 12 run setblock 785 99 91 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 15 run setblock 785 99 89 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 18 run setblock 785 99 87 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 21 run setblock 785 99 85 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 24 run setblock 785 99 83 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 27 run setblock 785 99 81 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 30 run setblock 787 99 81 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 33 run setblock 787 99 83 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 36 run setblock 787 99 85 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 39 run setblock 787 99 87 minecraft:redstone_block
execute if score roomOfRequirementEntrance global matches 42 run setblock 787 99 89 minecraft:redstone_block

execute if score roomOfRequirementEntranceDirection global matches 0 if score roomOfRequirementEntrance global matches 42 positioned 778 99 104 run stopsound @a[distance=..50] master minecraft:custom.fx.stone_rumble
execute if score roomOfRequirementEntranceDirection global matches 0 if score roomOfRequirementEntrance global matches 42 run playsound minecraft:custom.fx.stone_rumble master @a 778 99 104 5 1

# Direction
execute if score roomOfRequirementEntranceDirection global matches 1 unless score roomOfRequirementEntrance global matches 45.. run scoreboard players add roomOfRequirementEntrance global 1
execute if score roomOfRequirementEntranceDirection global matches 0 unless score roomOfRequirementEntrance global matches ..-10 run scoreboard players remove roomOfRequirementEntrance global 1