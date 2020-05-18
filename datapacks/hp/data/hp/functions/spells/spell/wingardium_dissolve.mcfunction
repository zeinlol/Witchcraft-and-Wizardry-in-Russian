# Dissolve wingardium cube when it gets reset. Only difference from wingardium_remove function is a particle effect and handling the switches

# Particles
execute at @s run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.05 40 force

tag @s remove wingardium
data merge entity @s[tag=glowing] {glowing:0b}
tag @s remove glowing

# Lift from switch
execute as @s[tag=wingardiumInSwitch] at @s as @e[tag=wingardiumSwitch,limit=1,sort=nearest] run tag @s remove wingardiumSwitchIsOccupied
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 1 ~ quartz_block
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 2 ~ redstone_block
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run playsound minecraft:custom.gameplay_element.wingardium_switch.lift_from_switch master @a


tp @s ~ -1000 ~
kill @s