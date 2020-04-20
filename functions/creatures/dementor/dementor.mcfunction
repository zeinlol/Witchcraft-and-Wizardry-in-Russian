# Prevent fire and make invisible
data merge entity @s {Fire:-20,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000,ShowParticles:0b}]}

tag @s add focusDementorEngine
execute as @e[tag=dementorActor] if score @s creatureID = @e[tag=focusDementorEngine,limit=1] creatureID run tag @s add focusDementorActor

# Rotation
# I calculate the rotation based on an avaraged motion vector for the last 5 ticks to get less jerky and spontaneous movement
scoreboard players operation @s dementorPosX5 = @s dementorPosX4
scoreboard players operation @s dementorPosX4 = @s dementorPosX3
scoreboard players operation @s dementorPosX3 = @s dementorPosX2
scoreboard players operation @s dementorPosX2 = @s dementorPosX1
execute store result score @s dementorPosX1 run data get entity @s Pos[0] 100
scoreboard players operation @s dementorPosX1 -= @s dementorPosXlast
execute store result score @s dementorPosXlast run data get entity @s Pos[0] 100
scoreboard players operation @s dementorPosX = @s dementorPosX1
scoreboard players operation @s dementorPosX += @s dementorPosX2
scoreboard players operation @s dementorPosX += @s dementorPosX3
scoreboard players operation @s dementorPosX += @s dementorPosX4
scoreboard players operation @s dementorPosX += @s dementorPosX5
scoreboard players set @s tmp2 5
scoreboard players operation @s dementorPosX /= @s tmp2

scoreboard players operation @s dementorPosY5 = @s dementorPosY4
scoreboard players operation @s dementorPosY4 = @s dementorPosY3
scoreboard players operation @s dementorPosY3 = @s dementorPosY2
scoreboard players operation @s dementorPosY2 = @s dementorPosY1
execute store result score @s dementorPosY1 run data get entity @s Pos[1] 100
scoreboard players operation @s dementorPosY1 -= @s dementorPosYlast
execute store result score @s dementorPosYlast run data get entity @s Pos[1] 100
scoreboard players operation @s dementorPosY = @s dementorPosY1
scoreboard players operation @s dementorPosY += @s dementorPosY2
scoreboard players operation @s dementorPosY += @s dementorPosY3
scoreboard players operation @s dementorPosY += @s dementorPosY4
scoreboard players operation @s dementorPosY += @s dementorPosY5
scoreboard players operation @s dementorPosY /= @s tmp2

scoreboard players operation @s dementorPosZ5 = @s dementorPosZ4
scoreboard players operation @s dementorPosZ4 = @s dementorPosZ3
scoreboard players operation @s dementorPosZ3 = @s dementorPosZ2
scoreboard players operation @s dementorPosZ2 = @s dementorPosZ1
execute store result score @s dementorPosZ1 run data get entity @s Pos[2] 100
scoreboard players operation @s dementorPosZ1 -= @s dementorPosZlast
execute store result score @s dementorPosZlast run data get entity @s Pos[2] 100
scoreboard players operation @s dementorPosZ = @s dementorPosZ1
scoreboard players operation @s dementorPosZ += @s dementorPosZ2
scoreboard players operation @s dementorPosZ += @s dementorPosZ3
scoreboard players operation @s dementorPosZ += @s dementorPosZ4
scoreboard players operation @s dementorPosZ += @s dementorPosZ5
scoreboard players operation @s dementorPosZ /= @s tmp2

# Motion based on pythagoras except i dont square but that doesnt matter because i dont need the exact distance just if it's big or small
scoreboard players operation @s tmp3 = @s dementorPosX
scoreboard players operation @s tmp3 *= @s dementorPosX
scoreboard players operation @s dementorMotion = @s tmp3
scoreboard players operation @s[scores={dementorPosY=..1}] tmp3 = @s dementorPosY
scoreboard players operation @s[scores={dementorPosY=..1}] tmp3 *= @s dementorPosY
scoreboard players operation @s[scores={dementorPosY=..1}] dementorMotion += @s tmp3
scoreboard players operation @s tmp3 = @s dementorPosZ
scoreboard players operation @s tmp3 *= @s dementorPosZ
scoreboard players operation @s dementorMotion += @s tmp3

# Calculate rotation based on Motion
# Set Head Pose based on rotation to get trailing effect
scoreboard players set @s tmp3 30
scoreboard players operation @s dementorRotation = @s dementorMotion
scoreboard players operation @s dementorRotation /= @s tmp3
scoreboard players set @s[scores={dementorRotation=80..}] dementorRotation 80
execute store result entity @e[tag=focusDementorActor,limit=1] Pose.Head[0] float 1 run scoreboard players get @s dementorRotation

# Detect if the dementor is tuck (hasn't moved for a long time) If that's the case move it back to it's circling position
execute as @s[scores={dementorMotion=..90,dementorStuck=0..}] run scoreboard players add @s dementorStuck 1
execute as @s[scores={dementorMotion=51..,dementorStuck=1..}] run scoreboard players remove @s dementorStuck 1
execute as @s[scores={dementorStuck=250..}] at @s run particle minecraft:smoke ~ ~ ~ 0.3 0.5 0.3 0.05 100 force
# Hide
execute as @s[scores={dementorStuck=250..}] at @s store result entity @e[tag=focusDementorActor,limit=1,sort=nearest] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp3 0
execute as @s[scores={dementorStuck=250..}] run scoreboard players set @s dementorStuck -20

# When stuck make it invisible for a while so the tp back isn't too obvious
execute as @s[scores={dementorStuck=..-1}] run scoreboard players add @s dementorStuck 1
execute as @s[scores={dementorStuck=-15}] store result entity @s Pos[0] double 1 run data get entity @s ArmorItems[3].tag.AX 1
execute as @s[scores={dementorStuck=-15}] store result entity @s Pos[1] double 1 run data get entity @s ArmorItems[3].tag.AY 1
execute as @s[scores={dementorStuck=-15}] store result entity @s Pos[2] double 1 run data get entity @s ArmorItems[3].tag.AZ 1
execute as @s[scores={dementorStuck=-15}] run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute as @s[scores={dementorStuck=-1}] at @s run particle minecraft:smoke ~ ~ ~ 0.3 0.5 0.3 0.05 100 force
# Unhide
execute as @s[scores={dementorStuck=-1}] at @s store result entity @e[tag=focusDementorActor,limit=1,sort=nearest] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp3 74


# Switch to fast model (cloth flaps faster)
execute as @s[scores={dementorMotion=..800},tag=fast] at @s store result entity @e[tag=focusDementorActor,limit=1,sort=nearest] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp3 74
execute as @s[scores={dementorMotion=..800},tag=fast] run tag @s remove fast
execute as @s[scores={dementorMotion=801..},tag=!fast] at @s store result entity @e[tag=focusDementorActor,limit=1,sort=nearest] ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp3 73
execute as @s[scores={dementorMotion=801..},tag=!fast] run tag @s add fast





# Calculate next positioned based on avageraged movement vector from last 5 ticks
scoreboard players operation @s dementorLookX = @s dementorPosXlast
scoreboard players operation @s dementorLookY = @s dementorPosYlast
scoreboard players operation @s dementorLookZ = @s dementorPosZlast

scoreboard players operation @s dementorLookX += @s dementorPosX
scoreboard players operation @s dementorLookY += @s dementorPosY
scoreboard players operation @s dementorLookZ += @s dementorPosZ

# Store current rotation
execute store result score @s dementorRotY run data get entity @e[tag=focusDementorActor,limit=1] Rotation[0]

# Summon look target and move it to the look position
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"rotationSmoothing\"}",Radius:0.0f,Duration:3,Particle:"block air",Tags:[dementorRotationSmoother]}
execute store result entity @e[tag=dementorRotationSmoother,limit=1,sort=nearest] Pos[0] double 0.01 run scoreboard players get @s dementorLookX
execute store result entity @e[tag=dementorRotationSmoother,limit=1,sort=nearest] Pos[1] double 0.01 run scoreboard players get @s dementorLookY
execute store result entity @e[tag=dementorRotationSmoother,limit=1,sort=nearest] Pos[2] double 0.01 run scoreboard players get @s dementorLookZ

# Rotate the armorstand to point towards the lerp target and store those rotation values in appropriate scoreboards
execute at @s run tp @e[tag=focusDementorActor,limit=1] ~ ~-1.5 ~ facing entity @e[tag=dementorRotationSmoother,limit=1] eyes

kill @e[tag=dementorRotationSmoother]

# Store current rotation
execute store result score @s dementorRotTY run data get entity @s Rotation[0]

# Revert to actual rotation and lerp towards target rotation
function hp:creatures/dementor/dementor_lerp_rotation

scoreboard players add @s[scores={tmp=..9}] tmp 1
execute at @s[scores={tmp=10..}] as @p[distance=..3.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run effect give @s minecraft:wither 5 2 true
execute at @s[scores={tmp=10..}] as @p[distance=..3.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run effect give @s minecraft:instant_damage 1 2 true
execute at @s[scores={tmp=10..}] if entity @p[distance=..3.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp 0

# Reset AX, AY, AZ to predefined location so it's less likely that the phantom gets stuck
scoreboard players remove @s idle 1
execute as @s[scores={idle=..0}] store result entity @s AX int 1 run data get entity @s ArmorItems[3].tag.AX 1
execute as @s[scores={idle=..0}] store result entity @s AY int 1 run data get entity @s ArmorItems[3].tag.AY 1
execute as @s[scores={idle=..0}] store result entity @s AZ int 1 run data get entity @s ArmorItems[3].tag.AZ 1
execute as @s[scores={idle=..0}] run scoreboard players set @s idle 10


tag @s remove focusDementorEngine
tag @e[tag=focusDementorActor] remove focusDementorActor