# function for doing linear interpolation. (LinEaRinterPlation???? This industry is pretty bad at abbreviations) e.g. used for npcs changing direction over a short duration rather than it being instant. 3 of these exists so I can interpolate between 3 different values per entity, which was nescesary in some cases. You could probably do it in a better way by storing only storing seperate instances of the time parameter or something like that, but oh well. This works too.

##########################################################################
# Initialization
##########################################################################

scoreboard players operation @s[tag=!inLerp2] lerp2Current = @s lerp2Start
scoreboard players operation @s[tag=!inLerp2] lerp2Increment = @s lerp2End
scoreboard players operation @s[tag=!inLerp2] lerp2Increment -= @s lerp2Start
execute store result entity @s ArmorItems[3].tag.lerp2Increment int 1 run scoreboard players operation @s[tag=!inLerp2] lerp2Increment /= @s lerp2Time

# solves some problems with wonky integer math
execute if score @s lerp2Start = @s lerp2End store result entity @s ArmorItems[3].tag.lerp2Increment int 1 run scoreboard players set @s lerp2Increment 0
execute if score @s lerp2Increment matches -1..1 store result entity @s ArmorItems[3].tag.lerp2Increment int 1 run scoreboard players set @s lerp2Increment 0

execute as @s[tag=!inLerp2] store result entity @s ArmorItems[3].tag.lerp2Start int 1 run scoreboard players get @s lerp2Start
execute as @s[tag=!inLerp2] store result entity @s ArmorItems[3].tag.lerp2End int 1 run scoreboard players get @s lerp2End

tag @s[tag=!inLerp2] add inLerp2

##########################################################################
# Lerping
##########################################################################

execute store result entity @s ArmorItems[3].tag.lerp2Current int 1 run scoreboard players operation @s[tag=lerp2,scores={lerp2Time=1..}] lerp2Current += @s lerp2Increment
execute store result entity @s ArmorItems[3].tag.lerp2Time int 1 run scoreboard players remove @s[tag=lerp2,scores={lerp2Time=1..}] lerp2Time 1
execute store result entity @s ArmorItems[3].tag.lerp2Current int 1 run scoreboard players operation @s[tag=lerp2,scores={lerp2Time=0}] lerp2Current = @s lerp2End
tag @s[tag=lerp2,scores={lerp2Time=0}] remove inLerp2
tag @s[tag=lerp2,scores={lerp2Time=0}] remove lerp2