execute at @s run summon armor_stand ~ ~-1 ~ {Tags:["birdSkeletonSummoner"]}
execute store result entity @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["leg","birdSkeletonIsBeingSpawned","birdSkeleton"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:12,Unbreakable:1b}}]}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["leg","birdSkeletonIsBeingSpawned","birdSkeleton"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:11,Unbreakable:1b}}]}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["head","birdSkeletonIsBeingSpawned","birdSkeleton"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:10,Unbreakable:1b}}]}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["body","birdSkeletonIsBeingSpawned","birdSkeleton"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:9,Unbreakable:1b}}]}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,NoBasePlate:1b,Tags:["tail","birdSkeletonIsBeingSpawned","birdSkeleton"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",Count:1b,tag:{Damage:8,Unbreakable:1b}}],Pose:{Head:[30f,0f,0f]}}



# Fix rotation
execute at @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] run tp @e[tag=birdSkeletonIsBeingSpawned] ~ ~ ~ ~ ~

# Offset to prevent view culling
execute at @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] as @e[tag=leg,tag=birdSkeletonIsBeingSpawned] run tp @s ^ ^1 ^0.05 ~ ~
execute at @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] as @e[tag=head,tag=birdSkeletonIsBeingSpawned] run tp @s ^ ^3.65 ^-2.95 ~ ~
execute at @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] as @e[tag=body,tag=birdSkeletonIsBeingSpawned] run tp @s ^ ^2.65 ^-0.7 ~ ~
execute at @e[tag=birdSkeletonSummoner,limit=1,sort=nearest] as @e[tag=tail,tag=birdSkeletonIsBeingSpawned] run tp @s ^ ^2.825 ^1.775 ~ ~


tag @e[tag=birdSkeletonIsBeingSpawned] remove birdSkeletonIsBeingSpawned
kill @e[tag=birdSkeletonSummoner]