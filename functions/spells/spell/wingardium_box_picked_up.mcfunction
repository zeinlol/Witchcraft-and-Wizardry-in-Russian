# Lift from switch
execute as @s[tag=wingardiumInSwitch] at @s as @e[tag=wingardiumSwitch,limit=1,sort=nearest] run tag @s remove wingardiumSwitchIsOccupied
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 1 ~ quartz_block
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run setblock ~ 2 ~ redstone_block
execute as @s[tag=wingardiumInSwitch] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest] run playsound minecraft:custom.gameplay_element.wingardium_switch.lift_from_switch master @a

# Clean up
tag @s[tag=wingardiumSwitchHover] remove wingardiumSwitchHover
tag @s[tag=wingardiumInSwitch] remove wingardiumInSwitch
tag @s[tag=wingardiumHover] remove wingardiumHover

# Particles
execute at @s run particle portal ~ ~ ~ .15 .15 .15 .4 1

execute as @s[tag=wingardiumBoxPutDown] run tag @s remove wingardiumPickUp
execute as @s[tag=wingardiumBoxPutDown] run tag @s remove wingardiumBoxPickedUp
execute as @s[tag=wingardiumBoxPutDown] run scoreboard players set @s playerID 0
execute as @s[tag=wingardiumBoxPutDown] run data merge entity @s {FallDistance:1000f}
execute as @s[tag=wingardiumBoxPutDown] run tag @s remove wingardiumBoxPutDown
