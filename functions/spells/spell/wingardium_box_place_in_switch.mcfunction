# Place in switch
#########################

# Particles
execute at @s run particle cloud ~ ~.25 ~ .25 .25 .25 .015 1
# Animation
scoreboard players set @s idle 10
# Activate Switch
execute at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 1 ~ redstone_block
execute at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 2 ~ quartz_block
# Set switch as occupied
execute at @s as @e[tag=wingardiumSwitch,limit=1,sort=nearest] run tag @s add wingardiumSwitchIsOccupied
# Sound
execute at @s run playsound minecraft:custom.gameplay_element.wingardium_switch.place_in_switch_old master @a
execute at @s run playsound minecraft:custom.gameplay_element.wingardium_switch.place_in_switch master @a

tag @s add wingardiumInSwitch