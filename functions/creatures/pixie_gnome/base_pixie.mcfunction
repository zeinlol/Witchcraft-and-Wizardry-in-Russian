# Despawn
execute unless entity @p[distance=..70] run kill @e[tag=pixieVisual,limit=1,sort=nearest,distance=..2]
execute unless entity @p[distance=..70] run kill @s

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.pixie.wound master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Water causes passengers to dismount, so I check if the entity doesn't have any passengers and if that's the case I kill the creature to prevent problems
execute store success score @s waterCheck run data get entity @s Passengers
execute as @s[scores={waterCheck=0}] run scoreboard players set @s creatureHealth 0

# Kill pixie
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/pixie_gnome/pixie_death

# Fix rotation
# execute store result score @s rotY run data get entity @s Rotation[0]
execute store result entity @e[tag=pixieVisual,limit=1,sort=nearest,distance=..2] Rotation[0] float 1 run data get entity @s Rotation[0]

# Calculate speed
execute store result score @s pixiePos1X run data get entity @s Pos[0] 100
execute store result score @s pixiePos1Y run data get entity @s Pos[1] 100
execute store result score @s pixiePos1Z run data get entity @s Pos[2] 100

scoreboard players operation @s pixiePos1X -= @s pixiePos2X
scoreboard players operation @s pixiePos1Y -= @s pixiePos2Y
scoreboard players operation @s pixiePos1Z -= @s pixiePos2Z

execute store result score @s pixiePos2X run data get entity @s Pos[0] 100
execute store result score @s pixiePos2Y run data get entity @s Pos[1] 100
execute store result score @s pixiePos2Z run data get entity @s Pos[2] 100

# Motion based on pythagoras except i dont square but that doesnt matter because i dont need the exact distance just if it's big or small
scoreboard players operation @s tmp3 = @s pixiePos1X
scoreboard players operation @s tmp3 *= @s pixiePos1X
scoreboard players operation @s pixieMotion = @s tmp3
scoreboard players operation @s[scores={pixiePos1Y=..1}] tmp3 = @s pixiePos1Y
scoreboard players operation @s[scores={pixiePos1Y=..1}] tmp3 *= @s pixiePos1Y
scoreboard players operation @s[scores={pixiePos1Y=..1}] pixieMotion += @s tmp3
scoreboard players operation @s tmp3 = @s pixiePos1Z
scoreboard players operation @s tmp3 *= @s pixiePos1Z
scoreboard players operation @s pixieMotion += @s tmp3

# Set Head Pose based on rotation to get trailing effect
execute as @s[scores={pixieMotion=1..200}] unless entity @s[scores={animState=1..40}] run scoreboard players set @s tmp 33
execute as @s[scores={pixieMotion=201..400}] unless entity @s[scores={animState=1..40}] run scoreboard players set @s tmp 32
execute as @s[scores={pixieMotion=401..600}] unless entity @s[scores={animState=1..40}] run scoreboard players set @s tmp 31
execute as @s[scores={pixieMotion=601..800}] unless entity @s[scores={animState=1..40}] run scoreboard players set @s tmp 30
execute as @s[scores={pixieMotion=801..1000}] unless entity @s[scores={animState=1..40}] run scoreboard players set @s tmp 29
execute as @s[scores={pixieMotion=1001..}] run scoreboard players set @s tmp 28

execute as @s[scores={animTest=1..2,animState=1..40}] run scoreboard players set @s tmp 8
execute as @s[scores={animTest=3..4,animState=1..40}] run scoreboard players set @s tmp 7
execute as @s[scores={animTest=5..6,animState=1..40}] run scoreboard players set @s tmp 6
execute as @s[scores={animTest=7..8,animState=1..40}] run scoreboard players set @s tmp 7
scoreboard players add @s animTest 1
execute as @s[scores={animTest=9..}] run scoreboard players set @s animTest 0
execute store result entity @e[tag=pixieVisual,limit=1,sort=nearest,distance=..2] ArmorItems[3].tag.Damage int 1 run scoreboard players get @s tmp

execute as @s[tag=moveSlow] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 1
execute as @s[tag=moveSlow] store result entity @s Motion[1] double 0.01 run data get entity @s Motion[1] 1
execute as @s[tag=moveSlow] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 1

# Attack
scoreboard players add @s tmp4 1
execute at @s[scores={tmp4=40..}] positioned ~ ~-.25 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run effect give @s minecraft:instant_damage 1 1 true
execute at @s[scores={tmp4=40..}] positioned ~ ~-.25 ~ if entity @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run playsound minecraft:custom.creatures.pixie.attack master @a
execute at @s[scores={tmp4=40..,animState=1..40}] positioned ~ ~-.25 ~ if entity @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s animState 1
execute at @s[scores={tmp4=40..}] positioned ~ ~-.25 ~ if entity @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s tmp4 0

execute as @s[scores={animState=100}] run tag @s add moveSlow

# execute as @s[scores={animState=55}] at @s run playsound minecraft:custom.creatures.pixie.charge master @a ~ ~ ~ 1.5
execute as @s[scores={animState=40}] at @s run function hp:creatures/pixie_gnome/pixie_charge_attack
execute as @s[scores={animState=30}] at @s run function hp:creatures/pixie_gnome/pixie_charge_attack
execute as @s[scores={animState=30}] at @s run function hp:creatures/pixie_gnome/pixie_charge_attack
execute as @s[scores={animState=10}] at @s run function hp:creatures/pixie_gnome/pixie_charge_attack

execute as @s[scores={animState=1..40}] run tp @s ~ ~ ~ facing entity @p[tag=play,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint]
execute as @s[scores={animState=1..40}] run tag @s remove isNearPlayer
execute as @s[scores={animState=1..40}] at @s if entity @p[distance=..3,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add isNearPlayer
execute as @s[scores={animState=1..40},tag=!isNearPlayer] store result entity @s Motion[0] double 0.35 run data get entity @s ArmorItems[3].tag.attackMotionX 1
execute as @s[scores={animState=1..40},tag=!isNearPlayer] store result entity @s Motion[1] double 0.35 run data get entity @s ArmorItems[3].tag.attackMotionY 1
execute as @s[scores={animState=1..40},tag=!isNearPlayer] store result entity @s Motion[2] double 0.35 run data get entity @s ArmorItems[3].tag.attackMotionZ 1
execute as @s[scores={animState=1..40},tag=isNearPlayer] store result entity @s Motion[0] double 0.2 run data get entity @s ArmorItems[3].tag.attackMotionX 1
execute as @s[scores={animState=1..40},tag=isNearPlayer] store result entity @s Motion[1] double 0.2 run data get entity @s ArmorItems[3].tag.attackMotionY 1
execute as @s[scores={animState=1..40},tag=isNearPlayer] store result entity @s Motion[2] double 0.2 run data get entity @s ArmorItems[3].tag.attackMotionZ 1

execute as @s[scores={animState=-20}] run tag @s remove moveSlow
execute as @s[scores={animState=-20}] run scoreboard players set @s animState 300
execute as @s[scores={animState=-20}] run scoreboard players operation @s animState += global Random
execute as @s[scores={animState=-20}] run function hp:misc/random_number
execute as @s[scores={animState=-20}] run scoreboard players operation @s animState += global Random
execute as @s[scores={animState=-20}] run function hp:misc/random_number

scoreboard players remove @s animState 1


# Prevent pixie from hanging upside down
data merge entity @s {BatFlags:0b}

# Idle sounds
scoreboard players add @s idle 1
execute as @s[scores={idle=100..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.pixie.idle master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s idle 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle