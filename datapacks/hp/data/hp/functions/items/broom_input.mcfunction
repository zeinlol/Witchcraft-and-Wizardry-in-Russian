# Ride Broom
# You have to test for the root vehicle, so since the pig you are riding is riding a armor_stand you have to test for that.
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run scoreboard players set @s broomSpeed 0
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run scoreboard players set @s broomDelay -1
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run scoreboard players set flyingBroomID 0
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run effect clear @s minecraft:speed
execute as @s[tag=flyingBroom,tag=playingBroomWindSound,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run stopsound @s hostile minecraft:custom.ambient.hogwarts.hogwarts_grounds_high
execute as @s[tag=flyingBroom,tag=playingBroomWindSound,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] at @s run playsound minecraft:custom.ambient.hogwarts.hogwarts_grounds_high_fade hostile @s ~ ~ ~ 1000000 1.5 1
execute as @s[tag=flyingBroom,tag=playingBroomWindSound,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s remove playingBroomWindSound
execute as @s[tag=!isDrowning,tag=flyingBroom,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=flyingBroom,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=flyingBroom,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=flyingBroom,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0},nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s add showTrackedQuest
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s add jumpedOffBroomThisTick
execute as @s[tag=flyingBroom,nbt=!{RootVehicle:{Entity:{id:"minecraft:armor_stand"}}}] run tag @s remove flyingBroom

tag @s add distanceCheck
execute as @s[scores={broomSpeed=0}] at @s run summon minecraft:area_effect_cloud ^ ^ ^0 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=1}] at @s run summon minecraft:area_effect_cloud ^ ^ ^0.83 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=2}] at @s run summon minecraft:area_effect_cloud ^ ^ ^1.66 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=3}] at @s run summon minecraft:area_effect_cloud ^ ^ ^2.49 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=4}] at @s run summon minecraft:area_effect_cloud ^ ^ ^3.32 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=5}] at @s run summon minecraft:area_effect_cloud ^ ^ ^4.15 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=6}] at @s run summon minecraft:area_effect_cloud ^ ^ ^4.98 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=7}] at @s run summon minecraft:area_effect_cloud ^ ^ ^5.81 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=8}] at @s run summon minecraft:area_effect_cloud ^ ^ ^6.64 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=9}] at @s run summon minecraft:area_effect_cloud ^ ^ ^7.7 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=10}] at @s run summon minecraft:area_effect_cloud ^ ^ ^9 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}
execute as @s[scores={broomSpeed=11}] at @s run summon minecraft:area_effect_cloud ^ ^ ^10 {Radius:0.0f,Duration:0,Particle:"block air",Tags:[distanceCheck,tmp]}

scoreboard players add @s broomOverlay 1
scoreboard players set @s[scores={broomOverlay=10}] broomOverlay 0

scoreboard players remove @s[tag=hasChangedSlotDown,scores={broomSpeed=1..}] broomSpeed 1
scoreboard players add @s[tag=hasChangedSlotUp,scores={broomSpeed=..10}] broomSpeed 1

execute store result score @s broomMov_x run data get entity @s Pos[0] 100
execute store result score @s broomMov_y run data get entity @s Pos[1] 100
execute store result score @s broomMov_z run data get entity @s Pos[2] 100

execute as @e[tag=distanceCheck,limit=2,sort=nearest] store result score @s broomMov_x run data get entity @s Pos[0] 100
execute as @e[tag=distanceCheck,limit=2,sort=nearest] store result score @s broomMov_y run data get entity @s Pos[1] 100
execute as @e[tag=distanceCheck,limit=2,sort=nearest] store result score @s broomMov_z run data get entity @s Pos[2] 100

scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_x -= @s broomMov_x
scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_y -= @s broomMov_y
scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_z -= @s broomMov_z

scoreboard players operation @s broomMov_x = @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_x
scoreboard players operation @s broomMov_y = @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_y
scoreboard players operation @s broomMov_z = @e[tag=distanceCheck,tag=tmp,limit=1] broomMov_z

kill @e[tag=distanceCheck,tag=tmp]
tag @e remove distanceCheck

# Make broom face direction player is moving
execute if entity @s store result score @s tmp run data get entity @s Rotation[1] 1
execute at @s store result entity @e[tag=broomVisual,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute at @s store result entity @e[tag=broomVisual,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute at @s store result entity @e[tag=broomSaddle,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute at @s store result entity @e[tag=broomSaddle,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute at @s store result entity @e[tag=broomElytra,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute unless entity @s[scores={tmp=..-45}] at @s store result entity @e[tag=broomElytra,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1] 1
execute if entity @s[scores={tmp=..-45}] at @s store result entity @e[tag=broomElytra,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players set @s tmp -45


# Due to a bug / limitation you can't use execute store on pose.head[0] if the rotation of the head is [0f,0f,0f] since it then won't be stored in the nbt tags. Solution is to very slightly tilt one of the other axis. 
execute if entity @s store result score @s tmp run data get entity @s Rotation[1] 1
execute if entity @s[scores={tmp=45..}] run scoreboard players set @s tmp 45
execute if entity @s[scores={tmp=..-45}] run scoreboard players set @s tmp -45
execute if entity @s store result entity @e[tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] float 1 run scoreboard players get @s tmp

#############################################
# Apply motion
#############################################
scoreboard players remove @s[scores={broomPulse=1..}] broomPulse 1
scoreboard players set @s[scores={broomPulse=..0,broomType=1..2}] broomPulse 5
scoreboard players set @s[scores={broomPulse=..0,broomType=3..4}] broomPulse 4

# X
execute at @s[scores={broomPulse=1,broomType=1}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_x run data get entity @s Motion[0] 2350
execute at @s[scores={broomPulse=1,broomType=2}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_x run data get entity @s Motion[0] 3333
execute at @s[scores={broomPulse=1,broomType=3}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_x run data get entity @s Motion[0] 3450
execute at @s[scores={broomPulse=1,broomType=4}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_x run data get entity @s Motion[0] 3666

execute at @s[scores={broomPulse=1}] run scoreboard players operation @s broomMov_x += @e[tag=broomElytra,limit=1,sort=nearest] broomMov_x
execute at @s[scores={broomPulse=1}] store result entity @e[tag=broomElytra,limit=1,sort=nearest] Motion[0] double 0.00025 run scoreboard players get @s broomMov_x
# Y
execute at @s[scores={broomPulse=1,broomType=1}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_y run data get entity @s Motion[1] 2350
execute at @s[scores={broomPulse=1,broomType=2}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_y run data get entity @s Motion[1] 2888
execute at @s[scores={broomPulse=1,broomType=3}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_y run data get entity @s Motion[1] 3150
execute at @s[scores={broomPulse=1,broomType=4}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_y run data get entity @s Motion[1] 3222

# If y is positive increase force
execute at @s[scores={broomPulse=1}] run scoreboard players operation @s broomMov_y += @e[tag=broomElytra,limit=1,sort=nearest] broomMov_y
execute at @s[scores={broomPulse=1,broomMov_y=..0}] store result entity @e[tag=broomElytra,limit=1,sort=nearest] Motion[1] double 0.0003 run scoreboard players get @s broomMov_y
execute at @s[scores={broomPulse=1,broomMov_y=1..}] store result entity @e[tag=broomElytra,limit=1,sort=nearest] Motion[1] double 0.0003 run scoreboard players get @s broomMov_y
# Z
execute at @s[scores={broomPulse=1,broomType=1}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_z run data get entity @s Motion[2] 2350
execute at @s[scores={broomPulse=1,broomType=2}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_z run data get entity @s Motion[2] 3333
execute at @s[scores={broomPulse=1,broomType=3}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_z run data get entity @s Motion[2] 3450
execute at @s[scores={broomPulse=1,broomType=4}] as @e[tag=broomElytra,limit=1,sort=nearest] store result score @s broomMov_z run data get entity @s Motion[2] 3666
execute at @s[scores={broomPulse=1}] run scoreboard players operation @s broomMov_z += @e[tag=broomElytra,limit=1,sort=nearest] broomMov_z
execute at @s[scores={broomPulse=1}] store result entity @e[tag=broomElytra,limit=1,sort=nearest] Motion[2] double 0.00025 run scoreboard players get @s broomMov_z
