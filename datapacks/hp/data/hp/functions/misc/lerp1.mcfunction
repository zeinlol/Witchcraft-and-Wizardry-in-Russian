# function for doing linear interpolation. (LinEaRinterPlation???? This industry is pretty bad at abbreviations) e.g. used for npcs changing direction over a short duration rather than it being instant. 3 of these exists so I can interpolate between 3 different values per entity, which was nescesary in some cases. You could probably do it in a better way by storing only storing seperate instances of the time parameter or something like that, but oh well. This works too.

##########################################################################
# Initialization
##########################################################################

scoreboard players operation @s[tag=!inLerp1] lerp1Current = @s lerp1Start
scoreboard players operation @s[tag=!inLerp1] lerp1Increment = @s lerp1End
scoreboard players operation @s[tag=!inLerp1] lerp1Increment -= @s lerp1Start
execute store result entity @s ArmorItems[3].tag.lerp1Increment int 1 run scoreboard players operation @s[tag=!inLerp1] lerp1Increment /= @s lerp1Time

execute as @s[tag=!inLerp2] store result entity @s ArmorItems[3].tag.lerp1Start int 1 run scoreboard players get @s lerp1Start
execute as @s[tag=!inLerp2] store result entity @s ArmorItems[3].tag.lerp1End int 1 run scoreboard players get @s lerp1End

tag @s[tag=!inLerp1] add inLerp1

##########################################################################
# Lerping
##########################################################################

execute store result entity @s ArmorItems[3].tag.lerp1Current int 1 run scoreboard players operation @s[tag=lerp1,scores={lerp1Time=1..}] lerp1Current += @s lerp1Increment
execute store result entity @s ArmorItems[3].tag.lerp1Time int 1 run scoreboard players remove @s[tag=lerp1,scores={lerp1Time=1..}] lerp1Time 1
execute store result entity @s ArmorItems[3].tag.lerp1Current int 1 run scoreboard players operation @s[tag=lerp1,scores={lerp1Time=0}] lerp1Current = @s lerp1End
tag @s[tag=lerp1,scores={lerp1Time=0}] remove inLerp1
tag @s[tag=lerp1,scores={lerp1Time=0}] remove lerp1
