# Prevent weird double executions
execute as @s[scores={wingardiumInput=1..}] run scoreboard players remove @s wingardiumInput 1

# Set active ray
tag @e[tag=rc_ray] remove rc_ray
execute as @e[tag=rc_ray_disabled] if score @s playerID = @p[tag=activePlayer] playerID run tag @s add rc_ray

# Set active picked up box if that exists
execute as @e[tag=wingardiumBoxPickedUp] if score @s playerID = @p[tag=activePlayer] playerID run tag @s add wingardiumPickUp

# Reset hover state
tag @s remove hoveringOnWingardiumBox
tag @s remove hoveringWingardiumBoxOverSwitch
tag @s remove hoveringOnWingardiumBoxInSwitch


# tellraw @a {"score":{"name":"@s","objective":"wingardiumRay"}}

# Set Distance 
execute as @s[scores={wingardiumRay=1}] if score @e[tag=rc_ray,limit=1,scores={tmp2=1..}] tmp2 < @s rc_loop run scoreboard players operation @s rc_loop = @e[tag=rc_ray,limit=1] tmp2
execute as @s[scores={wingardiumRay=2}] if score @e[tag=rc_ray,limit=1,scores={tmp2=1..},tag=!waitingToHitVoidAir] tmp2 < @s rc_loop run scoreboard players operation @s rc_loop = @e[tag=rc_ray,limit=1] tmp2
execute as @s[scores={wingardiumRay=2}] if score @e[tag=rc_ray,limit=1,scores={tmp3=1..},tag=waitingToHitVoidAir] tmp3 > @s rc_loop run scoreboard players operation @s rc_loop = @e[tag=rc_ray,limit=1] tmp2
scoreboard players set @e[tag=rc_ray,limit=1] tmp2 0

# Adjust Distance 
execute as @s[tag=hasChangedSlotUp,scores={rc_loop=..74}] run scoreboard players add @s rc_loop 3
execute as @s[tag=hasChangedSlotDown,scores={rc_loop=10..}] run scoreboard players remove @s rc_loop 3
execute as @s[scores={rc_loop=..9}] run scoreboard players set @s rc_loop 10
execute as @s[scores={rc_loop=76..}] run scoreboard players set @s rc_loop 75

# Determine ray type
execute unless entity @e[tag=wingardiumPickUp,limit=1] run scoreboard players set @s wingardiumRay 0
execute at @e[tag=wingardiumPickUp,limit=1] if block ~ ~ ~ air run scoreboard players set @s wingardiumRay 1
execute at @e[tag=wingardiumPickUp,limit=1] if block ~ ~ ~ void_air run scoreboard players set @s wingardiumRay 2
execute at @e[tag=wingardiumPickUp,limit=1] if block ~ ~ ~ cave_air run scoreboard players set @s wingardiumRay 4

# raycast wingardium selector
# wingardiumRay defines ray type. Required to do the funky thing where you can move boxes on the other side of glass
execute as @s[scores={wingardiumRay=0}] at @s anchored eyes run function hp:spells/raycast/rc_cast_0
execute as @s[scores={wingardiumRay=1}] at @s anchored eyes run function hp:spells/raycast/rc_cast_1
execute as @s[scores={wingardiumRay=2}] at @s anchored eyes run function hp:spells/raycast/rc_cast_2
execute as @s[scores={wingardiumRay=4}] at @s anchored eyes run function hp:spells/raycast/rc_cast_4

# Move box to ray
execute as @s[scores={wingardiumRay=0..1}] as @e[tag=wingardiumPickUp,limit=1] at @s run tp @s @e[tag=rc_ray,limit=1]
execute as @s[scores={wingardiumRay=2..4}] as @e[tag=wingardiumPickUp,limit=1] at @s run function hp:spells/spell/wingardium_box_move

# Outline visuals
execute at @s as @e[tag=wingardium,tag=interactable,distance=..40] run tag @s add wingardiumGlow
tag @e[tag=wingardiumHover,limit=1] add wingardiumGlowHover

# Zoom in
effect give @s minecraft:slowness 100 1 true

# If hovering over switch
execute if entity @e[tag=wingardiumPickUp,tag=wingardiumSwitchHover] run tag @s add hoveringWingardiumBoxOverSwitch
execute as @s[tag=!isLiftingWingardiumBox] if entity @e[tag=wingardiumHover,limit=1,tag=wingardiumSwitchHover] run tag @s add hoveringOnWingardiumBoxInSwitch

# Put down if block and ray gets too far seperated
execute as @s[scores={wingardiumRay=2}] at @e[tag=rc_ray,limit=1] if entity @e[tag=wingardiumPickUp,distance=5..] run tag @s add wingardiumPutDown

# Pick up / Put down
execute as @s[tag=hasPressedF,tag=!isLiftingWingardiumBox,scores={wingardiumInput=0}] if entity @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,scores={playerID=0}] run tag @s add wingardiumPickUpBox
execute as @s[tag=hasPressedF,tag=isLiftingWingardiumBox,scores={wingardiumInput=0}] run tag @s add wingardiumPutDown
execute as @s[tag=hasDoubleRightClicked,tag=isLiftingWingardiumBox,scores={wingardiumInput=0}] run tag @s add wingardiumPutDown

# Pick up
execute as @s[tag=wingardiumPickUpBox] if entity @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run scoreboard players set @s wingardiumInput 7
execute as @s[tag=wingardiumPickUpBox] if entity @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run tag @s add anim_wingardiumLift
execute as @s[tag=wingardiumPickUpBox] if entity @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,scores={playerID=0},limit=1] run tag @s add isLiftingWingardiumBox
execute as @s[tag=wingardiumPickUpBox] as @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
execute as @s[tag=wingardiumPickUpBox] at @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run playsound minecraft:custom.spell.wingardium.loop master @a ~ ~ ~ 0.2 1
execute as @s[tag=wingardiumPickUpBox] at @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run particle portal ~ ~ ~ .15 .15 .15 .4 100
execute as @s[tag=wingardiumPickUpBox] as @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run tag @s add wingardiumPickUp
execute as @s[tag=wingardiumPickUpBox] as @e[tag=wingardiumHover,tag=!wingardiumBoxPickedUp,limit=1] run tag @s add wingardiumBoxPickedUp
execute as @s[tag=wingardiumPickUpBox] run tag @s remove wingardiumPickUpBox

# Put down
execute as @s[tag=wingardiumPutDown] run scoreboard players set @s wingardiumInput 7
execute as @s[tag=wingardiumPutDown] run scoreboard players set @s rc_loop 40
execute as @s[tag=wingardiumPutDown] at @s run playsound minecraft:custom.spell.wingardium.wingardium_putdown master @a ~ ~ ~ 0.15 1
execute as @s[tag=wingardiumPutDown] at @s run tag @s add anim_wingardiumPutDown
execute as @s[tag=wingardiumPutDown] run stopsound @s master minecraft:custom.spell.wingardium.loop
execute as @s[tag=wingardiumPutDown] run tag @e[tag=wingardiumPickUp,limit=1] add wingardiumBoxPutDown
execute as @s[tag=wingardiumPutDown] run tag @s remove isLiftingWingardiumBox
execute as @s[tag=wingardiumPutDown] run tag @s remove wingardiumPutDown


# Exit
execute as @s[tag=!isLiftingWingardiumBox,tag=hasDoubleRightClicked,tag=!preventDoubleExecution,scores={wingardiumInput=0}] run tag @s add wingardiumExit

execute as @s[tag=wingardiumExit] run tag @e[tag=wingardiumPickUp] add wingardiumBoxPutDown
execute as @s[tag=wingardiumExit] at @s run playsound minecraft:custom.spell.wingardium.exit master @a
execute as @s[tag=wingardiumExit,tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..}] run tag @s add silentQuestAnimation
execute as @s[tag=wingardiumExit,tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..}] run tag @s add showTrackedQuest
execute as @s[tag=wingardiumExit] at @s run tag @s add anim_wingardiumExit
execute as @s[tag=wingardiumExit] run effect clear @s minecraft:slowness
execute as @s[tag=wingardiumExit] run tag @s remove inWingardium
execute as @s[tag=wingardiumExit] run kill @e[tag=rc_ray]
execute as @s[tag=wingardiumExit] run tag @s remove wingardiumExit

# Cleanup for next player
tag @e[tag=wingardiumPickUp] remove wingardiumPickUp
tag @e[tag=wingardiumHover] remove wingardiumHover


# Put down animation if block no longer exists
execute as @s[tag=isLiftingWingardiumBox,scores={playerID=1}] unless entity @e[tag=wingardiumBoxPickedUp,scores={playerID=1}] run tag @s add wingardiumPutDown
execute as @s[tag=isLiftingWingardiumBox,scores={playerID=2}] unless entity @e[tag=wingardiumBoxPickedUp,scores={playerID=2}] run tag @s add wingardiumPutDown
execute as @s[tag=isLiftingWingardiumBox,scores={playerID=3}] unless entity @e[tag=wingardiumBoxPickedUp,scores={playerID=3}] run tag @s add wingardiumPutDown
execute as @s[tag=isLiftingWingardiumBox,scores={playerID=4}] unless entity @e[tag=wingardiumBoxPickedUp,scores={playerID=4}] run tag @s add wingardiumPutDown


