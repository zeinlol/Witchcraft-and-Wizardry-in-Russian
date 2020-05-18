# Increment spell challenge sessionID
scoreboard players add stupefySpellChallengeID global 1

scoreboard players set stupefyMovingTargetsExist global 0

# This resets the stupefy spell challenge by cloning default doors, stairs, etc.

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5528 -56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5544 -56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5540 -42 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5528 -40 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -40 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -56 1 1 false @s

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -24 1 1 false @s

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -72 1 1 false @s


# Reset stupefy challenge targets to prevent them sometimes being invisible
execute as @e[tag=stupefyChallengeTarget] at @s run tp @s ~ ~-200 ~
kill @e[tag=stupefyChallengeTarget]

scoreboard players set stupefyStuckTimer global 0
scoreboard players set stupefyStuckTimerIsGoing global 0

# Statues
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5560 -72 1 1 false @s
setblock 5552 54 -70 minecraft:black_glazed_terracotta[facing=west]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5560 -56 1 1 false @s
setblock 5552 54 -54 minecraft:black_glazed_terracotta[facing=west]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5572 -55 1 1 false @s
setblock 5570 54 -62 minecraft:black_glazed_terracotta[facing=east]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5572 -44 1 1 false @s
setblock 5570 54 -46 minecraft:black_glazed_terracotta[facing=east]

# drop stair
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5560 -40 1 1 false @s
clone 5583 47 -60 5588 56 -56 5553 45 -48 replace

# Reset moving targets
fill 5542 1 -59 5545 1 -59 minecraft:redstone_block
execute as @e[tag=movingTarget1,limit=1] at @s run tp @s ~ 47.5 ~
execute as @e[tag=movingTarget2,limit=1] at @s run tp @s ~ 47.5 ~
execute as @e[tag=movingTarget3,limit=1] at @s run tp @s ~ 47.5 ~
execute as @e[tag=movingTarget4,limit=1] at @s run tp @s ~ 47.5 ~

# Metal gate / door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5528 -72 1 1 false @s
fill 5521 50 -71 5521 53 -69 minecraft:iron_bars[north=true,south=true]

# Draw Bridge
clone 5512 83 -67 5501 92 -73 5501 48 -73
setblock 5510 77 -75 minecraft:quartz_block
setblock 5511 77 -75 minecraft:quartz_block
setblock 5512 77 -75 minecraft:quartz_block
setblock 5513 77 -75 minecraft:jungle_planks

# Stone slide thingies
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -24 1 1 false @s
clone 5518 52 -27 5521 52 -26 5505 43 -22
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -24 1 1 false @s
clone 5482 52 -19 5479 52 -20 5491 44 -19
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -8 1 1 false @s
clone 5482 52 -14 5479 52 -15 5491 45 -16
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -8 1 1 false @s

# Door
clone 5503 84 -7 5505 88 -6 5503 54 -3

# Floor gate things
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 8 1 1 false @s
fill 5502 48 13 5498 48 11 purple_stained_glass
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 8 1 1 false @s
fill 5506 48 13 5510 48 11 purple_stained_glass
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 24 1 1 false @s
fill 5502 48 27 5498 48 29 purple_stained_glass
fill 5502 48 21 5498 48 19 purple_stained_glass
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 24 1 1 false @s
fill 5506 48 21 5510 48 19 purple_stained_glass
fill 5506 48 27 5510 48 29 purple_stained_glass

# Make door iron door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5480 40 1 1 false @s
setblock 5487 55 32 air
setblock 5487 56 32 air
setblock 5487 55 32 minecraft:iron_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock 5487 56 32 minecraft:iron_door[facing=east,half=upper,hinge=right,open=false,powered=false]


# Statue scoreboards
scoreboard players set stupefyStatue1 global 0
scoreboard players set stupefyStatue1Direction global 0

scoreboard players set stupefyStatue2 global 0
scoreboard players set stupefyStatue2Direction global 0

scoreboard players set stupefyStatue3 global 0
scoreboard players set stupefyStatue3Direction global 0

scoreboard players set stupefyStatue4 global 0
scoreboard players set stupefyStatue4Direction global 0

# Drop stair
scoreboard players set stupefyDropStair global -2
scoreboard players set stupefyDropStairDirection global 0

# Door
scoreboard players set stupefyDoor1 global -60
scoreboard players set stupefyDoor1Direction global 0

# Draw Bridge
scoreboard players set stupefyDrawBridge global 360

# Stone Slide 1
scoreboard players set stupefyStone1 global 100

# Stone Slide 2
scoreboard players set stupefyStone2 global 160

# Stone Slide 3
scoreboard players set stupefyStone2 global 130

kill @e[tag=chunkLoader]