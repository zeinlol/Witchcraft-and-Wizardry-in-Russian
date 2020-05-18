# function for doing linear interpolation. (LinEaRinterPlation???? This industry is pretty bad at abbreviations) e.g. used for npcs changing direction over a short duration rather than it being instant. 3 of these exists so I can interpolate between 3 different values per entity, which was nescesary in some cases. You could probably do it in a better way by storing only storing seperate instances of the time parameter or something like that, but oh well. This works too.
# Lerp3 is rotation lerping so it wraps around 360 and is slightly more complicated

##########################################################################
# Determine if it's faster to wrap around 360 than going all the way around
# 
# Highest = x
# Lowest = y
# 
# Distance 1  = x - y
# Distance 2  = 360 - x + y
# 
# I made it to wrap around 360 having forgot that minecraft goes from -180 to 180, so I just add and subtract 180 at the start and end.
# 
##########################################################################

execute as @s[tag=!inLerp3] run scoreboard players add @s lerp3Start 180
execute as @s[tag=!inLerp3] run scoreboard players add @s lerp3End 180

# Distance 1 (stored in tmp)
execute as @s[tag=!inLerp3] if score @s lerp3End >= @s lerp3Start run scoreboard players operation distance1 tmp = @s lerp3End
execute as @s[tag=!inLerp3] if score @s lerp3End >= @s lerp3Start run scoreboard players operation distance1 tmp -= @s lerp3Start
execute as @s[tag=!inLerp3] if score @s lerp3End < @s lerp3Start run scoreboard players operation distance1 tmp = @s lerp3Start
execute as @s[tag=!inLerp3] if score @s lerp3End < @s lerp3Start run scoreboard players operation distance1 tmp -= @s lerp3End

# Distance 2 (stored in tmp)
execute as @s[tag=!inLerp3] if score @s lerp3End >= @s lerp3Start run scoreboard players set distance2 tmp 360
execute as @s[tag=!inLerp3] if score @s lerp3End >= @s lerp3Start run scoreboard players operation distance2 tmp -= @s lerp3End
execute as @s[tag=!inLerp3] if score @s lerp3End >= @s lerp3Start run scoreboard players operation distance2 tmp += @s lerp3Start
execute as @s[tag=!inLerp3] if score @s lerp3End < @s lerp3Start run scoreboard players set distance2 tmp 360
execute as @s[tag=!inLerp3] if score @s lerp3End < @s lerp3Start run scoreboard players operation distance2 tmp -= @s lerp3Start
execute as @s[tag=!inLerp3] if score @s lerp3End < @s lerp3Start run scoreboard players operation distance2 tmp += @s lerp3End

execute as @s[tag=!inLerp3] if score distance1 tmp > distance2 tmp run tag @s add wrap

execute as @s[tag=!inLerp3] run scoreboard players remove @s lerp3Start 180
execute as @s[tag=!inLerp3] run scoreboard players remove @s lerp3End 180


##########################################################################
# Initialization
##########################################################################
scoreboard players operation @s[tag=!inLerp3,tag=!wrap] lerp3Current = @s lerp3Start
scoreboard players operation @s[tag=!inLerp3,tag=!wrap] lerp3Increment = @s lerp3End
scoreboard players operation @s[tag=!inLerp3,tag=!wrap] lerp3Increment -= @s lerp3Start
execute store result entity @s ArmorItems[3].tag.lerp3Increment int 1 run scoreboard players operation @s[tag=!inLerp3,tag=!wrap] lerp3Increment /= @s lerp3Time

scoreboard players operation @s[tag=!inLerp3,tag=wrap] lerp3Current = @s lerp3Start
scoreboard players operation @s[tag=!inLerp3,tag=wrap] lerp3Increment = distance2 tmp
execute store result entity @s ArmorItems[3].tag.lerp3Increment int 1 run scoreboard players operation @s[tag=!inLerp3,tag=wrap] lerp3Increment /= @s lerp3Time

execute as @s[tag=!inLerp3,tag=wrap] if score @s lerp3Start < @s lerp3End run scoreboard players operation @s tmp = @s lerp3Increment
execute as @s[tag=!inLerp3,tag=wrap] if score @s lerp3Start < @s lerp3End run scoreboard players operation @s lerp3Increment -= @s tmp
execute store result entity @s ArmorItems[3].tag.lerp3Increment int 1 run execute as @s[tag=!inLerp3,tag=wrap] if score @s lerp3Start < @s lerp3End run scoreboard players operation @s lerp3Increment -= @s tmp

execute as @s[tag=!inLerp3] store result entity @s ArmorItems[3].tag.lerp3Start int 1 run scoreboard players get @s lerp3Start
execute as @s[tag=!inLerp3] store result entity @s ArmorItems[3].tag.lerp3End int 1 run scoreboard players get @s lerp3End

tag @s[tag=!inLerp3] remove wrap
tag @s[tag=!inLerp3] add inLerp3

##########################################################################
# Lerping
##########################################################################

execute store result entity @s ArmorItems[3].tag.lerp3Current int 1 run scoreboard players operation @s[tag=lerp3,scores={lerp3Time=1..}] lerp3Current += @s lerp3Increment
execute store result entity @s ArmorItems[3].tag.lerp3Time int 1 run scoreboard players remove @s[tag=lerp3,scores={lerp3Time=1..}] lerp3Time 1
execute store result entity @s ArmorItems[3].tag.lerp3Current int 1 run scoreboard players operation @s[tag=lerp3,scores={lerp3Time=0}] lerp3Current = @s lerp3End
tag @s[tag=lerp3,scores={lerp3Time=0}] remove inLerp3
tag @s[tag=lerp3,scores={lerp3Time=0}] remove lerp3