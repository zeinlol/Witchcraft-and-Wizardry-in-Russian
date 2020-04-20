# If picked up by player
execute as @s[tag=wingardiumBoxPickedUp] run function hp:spells/spell/wingardium_box_picked_up

# Outline visuals
execute as @s[tag=wingardiumGlow,tag=!glowing] run data merge entity @s {Glowing:1b}
execute as @s[tag=wingardiumGlow,tag=!glowing] run tag @s add glowing
execute as @s[tag=!wingardiumGlow,tag=!hover,tag=glowing] run data merge entity @s {Glowing:0b}
execute as @s[tag=!wingardiumGlow,tag=!hover,tag=glowing] run tag @s remove glowing

# Hover over wingardiumSwitch
execute at @s if entity @e[tag=wingardiumSwitch,distance=..1,tag=!wingardiumSwitchIsOccupied] run tag @s add wingardiumSwitchHover

# Place in switch
execute as @s[tag=!wingardiumBoxPickedUp,tag=wingardiumSwitchHover,tag=!wingardiumInSwitch] run function hp:spells/spell/wingardium_box_place_in_switch

# wingardium
execute as @s[tag=wingardiumSwitchHover] at @s run tp @s @e[tag=wingardiumSwitch,limit=1,sort=nearest]

# In switch
execute as @s[tag=wingardiumInSwitch] run function hp:spells/spell/wingardium_box_in_switch

# Cleanup for next cycle
team join wingardium_i @s[tag=wingardiumGlow,tag=!wingardiumGlowHover,team=!wingardium_i]
team join wingardium @s[tag=wingardiumGlow,tag=wingardiumGlowHover,team=!wingardium]
execute as @s[tag=wingardiumGlow] run tag @s remove wingardiumGlow
execute as @s[tag=wingardiumGlowHover] run tag @s remove wingardiumGlowHover

# Remove if is outdated (part of a spell challenge and the spell challenge ID has been updated)
execute as @s[scores={SCSession=1..}] run function hp:spells/spell/wingardium_box_reset

# Remove if is outdated (part of a spell challenge and the spell challenge ID has been updated)
execute as @s[scores={SCSession=-1}] unless score @s sessionID = global sessionID run function hp:spells/spell/wingardium_remove