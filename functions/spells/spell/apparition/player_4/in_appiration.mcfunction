# Areas where you can't apparate
function hp:spells/spell/apparition/apparition_lock

# check which general direction the player is pointed in (used to detect ledges in the right direction)
tag @s remove apparateSouth
tag @s remove apparateWest
tag @s remove apparateNorth
tag @s remove apparateEast
execute if entity @s[y_rotation=-45..44] run tag @s add apparateSouth
execute if entity @s[y_rotation=45..134] run tag @s add apparateWest
execute if entity @s[y_rotation=135..179.9999] run tag @s add apparateNorth
execute if entity @s[y_rotation=-180..-134] run tag @s add apparateNorth
execute if entity @s[y_rotation=-135..-44] run tag @s add apparateEast

# Cinematic focal length
effect give @s minecraft:slowness 100 2 true

# Set Distance 
scoreboard players set @s[tag=!isApparating] rc_loop 50

execute as @s[tag=!isApparating] at @s run function hp:spells/raycast/apparate_cast_p4
execute as @s[tag=!isApparating] as 0-0-10-0-4 at @s align xyz run tp @s ~.5 ~ ~.5 0 0

scoreboard players add 00000000-0000-0010-0000-000000000004 animTest 3

execute as 0-0-10-0-4 store result entity @s Pose.Head[1] float 1 run scoreboard players get @s animTest

# Appiration
execute as @s[tag=isApparating] run function hp:spells/spell/apparition/player_4/apparate
execute as @s[scores={apparating=1..}] run scoreboard players remove @s apparating 1

# Detect if the selected spot is valid
tag @s remove spotNotValid

execute at 0-0-10-0-4 if block ~ ~-1 ~ #hp:apparate_ray run tag @s add spotNotValid
execute at 0-0-10-0-4 if block ~ ~-1 ~ barrier run tag @s add spotNotValid
execute at 0-0-10-0-4 unless block ~ ~ ~ #hp:apparate_ray run tag @s add spotNotValid
execute at 0-0-10-0-4 unless block ~ ~1 ~ #hp:apparate_ray run tag @s add spotNotValid

# If spot is invalid
execute as @s[tag=spotNotValid] run function hp:spells/spell/apparition/player_4/invalid_spot

# If in an area where you can't apparate
execute as @s[tag=cantApparateHere] run tag @s add spotNotValid

# Change between valid and invalid location marker
execute as @s[scores={appirationMarker=..10},tag=spotNotValid] run scoreboard players add @s appirationMarker 1
execute as @s[scores={appirationMarker=1..},tag=!spotNotValid] run scoreboard players remove @s appirationMarker 1
execute as @s[tag=!isApparating,scores={appirationMarker=1..10}] run function hp:spells/spell/apparition/player_4/draw_indicator

# Init appiration
execute as @s[tag=hasPressedF,tag=!isApparating,tag=!spotNotValid] unless score @s apparating matches 1.. run function hp:spells/spell/apparition/player_4/init_apparate

# Exit
execute as @s[tag=inAppiration,tag=hasDoubleRightClicked,tag=!preventDoubleExecution] at @s run tag @s add exitApparition
execute as @s[tag=exitApparition,tag=!isApparating] run function hp:spells/spell/apparition/exit_apparition