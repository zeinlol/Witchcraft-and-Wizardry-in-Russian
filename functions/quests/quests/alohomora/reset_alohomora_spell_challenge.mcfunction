# Increment spell challenge sessionID
scoreboard players add alohomoraSpellChallengeID global 1

# This resets the alohomora spell challenge by cloning default pillars, etc.

# bookshelf
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 8 1 1 false @s
execute as e7de767c-220b-438c-8b53-5dab1a6afe04 run function hp:misc/reset_book_shelf

# Stupefy Target Cage
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 -8 1 1 false @s
fill 6470 46 -2 6470 48 -4 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]


# Levers
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6520 24 1 1 false @s
execute as 6c99fd2e-fe3b-486a-ab18-f61fc316fcd3 run function hp:misc/reset_lever
execute as 6a09ff89-bb86-4f20-a090-1b458fa52a9f run function hp:misc/reset_lever

# Pillars
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6536 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6533 38 1 1 false @s
fill 6532 36 25 6534 43 23 air
clone 6532 35 37 6534 50 39 6532 29 23
fill 6538 36 21 6540 44 23 air
clone 6532 35 43 6534 52 45 6538 27 21

# Add key to Chests
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6488 24 1 1 false @s
execute store result entity 3b5a3aee-a860-4729-81b6-748149c46b89 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6488 40 1 1 false @s
execute store result entity abf1f964-4236-45f4-9952-fada6945d0b4 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6456 24 1 1 false @s
execute store result entity caa64060-b3c0-4088-8d7f-06cbb393389a ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 24 1 1 false @s
execute store result entity 3270c92c-2f02-4a84-b347-1c25cdeb3607 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1

# Locked Doors
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6456 -24 1 1 false @s
execute as 636c5b4c-0fc4-4f1a-9682-e7110912c73b at @s run function hp:misc/close_door  
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6488 24 1 1 false @s
execute as 85004ed7-ab18-45fc-8dda-34bea5454859 at @s run function hp:misc/close_door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6520 24 1 1 false @s
execute as c1bf67d6-7f4c-4e01-b8da-7e0cc07c48fe at @s run function hp:misc/close_door
execute as d01d128e-e0be-446f-8471-cb67f6e27d66 at @s run function hp:misc/close_door

# Lamps
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6488 8 1 1 false @s
execute as 71967295-9b99-4d6c-819b-c21f418e3114 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6501 -22 1 1 false @s
execute as 6395fce8-cb41-45d0-bd64-52e00c33034d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6514 4 1 1 false @s
execute as 1c9ad97b-afda-44ef-8a8d-207280cb97ad store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6

# Close door so monster books don't escape
setblock 6499 38 34 minecraft:oak_door[facing=north,half=upper,hinge=left,open=false,powered=false]
setblock 6499 37 34 minecraft:oak_door[facing=north,half=lower,hinge=left,open=false,powered=false]


# Pillar scoreboards
scoreboard players set alohomoraPillar1 global -10
scoreboard players set alohomoraPillar1Direction global 0

scoreboard players set alohomoraPillar2 global -10
scoreboard players set alohomoraPillar2Direction global 0

# Timer scoreboards
scoreboard players set alohomoraChainTimer global 0
scoreboard players set alohomoraChainTimerSeconds global 0
scoreboard players set alohomoraChainTimerIsGoing global 0

scoreboard players set alohomoraChain1 global 0
scoreboard players set alohomoraChain2 global 0
scoreboard players set alohomoraChain3 global 0

scoreboard players set alohomoraTimerComplete global 0

scoreboard players set alohomoraStuckTimer global 0
scoreboard players set alohomoraStuckTimerIsGoing global 0

# Reset monster books
scoreboard players set alohomoraHasTriggeredMonsterBook global 0


kill @e[tag=chunkLoader]