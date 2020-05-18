# Pillars
execute as 62a920cb-39a6-49b5-b2c2-b594ef7230a0 if entity @s[tag=pillarRotate] as 1c3f6c95-60a2-4c3d-8be4-ffa1d9a69976 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar
execute as 62a920cb-39a6-49b5-b2c2-b594ef7230a0 if entity @s[tag=pillarRotate] as bdaf259f-c029-4fca-9a19-6d057eb759d3 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar

execute as 1c3f6c95-60a2-4c3d-8be4-ffa1d9a69976 if entity @s[tag=pillarRotate] as 62a920cb-39a6-49b5-b2c2-b594ef7230a0 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar
execute as bdaf259f-c029-4fca-9a19-6d057eb759d3 if entity @s[tag=pillarRotate] as 62a920cb-39a6-49b5-b2c2-b594ef7230a0 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar


execute as f4b46f03-0ba6-4e70-8d67-75687cf4b68f if entity @s[tag=pillarRotate] as 425871cc-43b4-44af-9998-58d049122423 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar
execute as f4b46f03-0ba6-4e70-8d67-75687cf4b68f if entity @s[tag=pillarRotate] as 682b3316-fa7d-442e-982e-8d061bc4d804 if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar

execute as 425871cc-43b4-44af-9998-58d049122423 if entity @s[tag=pillarRotate] as f4b46f03-0ba6-4e70-8d67-75687cf4b68f if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar
execute as 682b3316-fa7d-442e-982e-8d061bc4d804 if entity @s[tag=pillarRotate] as f4b46f03-0ba6-4e70-8d67-75687cf4b68f if entity @s[tag=!rotatingPillar] run function hp:misc/chain_rotate_pillar


# Rotating Pillars
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score 682b3316-fa7d-442e-982e-8d061bc4d804 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score f4b46f03-0ba6-4e70-8d67-75687cf4b68f pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score 425871cc-43b4-44af-9998-58d049122423 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score bdaf259f-c029-4fca-9a19-6d057eb759d3 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score 62a920cb-39a6-49b5-b2c2-b594ef7230a0 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score 1c3f6c95-60a2-4c3d-8be4-ffa1d9a69976 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 0
execute if score hogwartsPuzzleDoor11Direction global matches 0 if score 682b3316-fa7d-442e-982e-8d061bc4d804 pillarState matches 2 if score f4b46f03-0ba6-4e70-8d67-75687cf4b68f pillarState matches 2 if score 425871cc-43b4-44af-9998-58d049122423 pillarState matches 2 if score bdaf259f-c029-4fca-9a19-6d057eb759d3 pillarState matches 2 if score 62a920cb-39a6-49b5-b2c2-b594ef7230a0 pillarState matches 2 if score 1c3f6c95-60a2-4c3d-8be4-ffa1d9a69976 pillarState matches 2 run scoreboard players set hogwartsPuzzleDoor11Direction global 1


# This is the block animation for door 1
execute if score hogwartsPuzzleDoor11Direction global matches 1 if score hogwartsPuzzleDoor11 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 615 134 269 2 1

execute if score hogwartsPuzzleDoor11 global matches 2 run fill 615 133 267 615 134 270 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor11 global matches 2 run fill 615 135 268 615 135 269 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score hogwartsPuzzleDoor11 global matches 4 run fill 615 133 267 615 134 270 air
execute if score hogwartsPuzzleDoor11 global matches 4 run fill 615 134 267 615 134 270 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor11 global matches 4 run fill 615 135 268 615 135 269 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score hogwartsPuzzleDoor11 global matches 6 run fill 615 133 267 615 134 270 air
execute if score hogwartsPuzzleDoor11 global matches 6 run fill 615 135 268 615 135 269 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score hogwartsPuzzleDoor11 global matches 8 run fill 615 133 267 615 134 270 air
execute if score hogwartsPuzzleDoor11 global matches 8 run fill 615 135 268 615 135 269 air

execute if score hogwartsPuzzleDoor11Direction global matches 0 if score hogwartsPuzzleDoor11 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 615 134 269 2 1

# Direction
execute if score hogwartsPuzzleDoor11Direction global matches 1 unless score hogwartsPuzzleDoor11 global matches 10.. run scoreboard players add hogwartsPuzzleDoor11 global 1
execute if score hogwartsPuzzleDoor11Direction global matches 0 unless score hogwartsPuzzleDoor11 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor11 global 1