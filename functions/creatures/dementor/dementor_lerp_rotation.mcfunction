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

scoreboard players add @s dementorRotY 180
scoreboard players add @s dementorRotTY 180

# Distance 1 (stored in tmp)
execute if score @s dementorRotTY >= @s dementorRotY run scoreboard players operation distance1 tmp = @s dementorRotTY
execute if score @s dementorRotTY >= @s dementorRotY run scoreboard players operation distance1 tmp -= @s dementorRotY
execute if score @s dementorRotTY < @s dementorRotY run scoreboard players operation distance1 tmp = @s dementorRotY
execute if score @s dementorRotTY < @s dementorRotY run scoreboard players operation distance1 tmp -= @s dementorRotTY

# Distance 2 (stored in tmp)
execute if score @s dementorRotTY >= @s dementorRotY run scoreboard players set distance2 tmp 360
execute if score @s dementorRotTY >= @s dementorRotY run scoreboard players operation distance2 tmp -= @s dementorRotTY
execute if score @s dementorRotTY >= @s dementorRotY run scoreboard players operation distance2 tmp += @s dementorRotY
execute if score @s dementorRotTY < @s dementorRotY run scoreboard players set distance2 tmp 360
execute if score @s dementorRotTY < @s dementorRotY run scoreboard players operation distance2 tmp -= @s dementorRotY
execute if score @s dementorRotTY < @s dementorRotY run scoreboard players operation distance2 tmp += @s dementorRotTY

execute if score distance1 tmp > distance2 tmp run tag @s add wrap

execute run scoreboard players remove @s dementorRotY 180
execute run scoreboard players remove @s dementorRotTY 180

##########################################################################
# Initialization
##########################################################################
scoreboard players set @s tmp3 10
scoreboard players operation @s[tag=!wrap] tmp2 = @s dementorRotTY
scoreboard players operation @s[tag=!wrap] tmp2 -= @s dementorRotY
scoreboard players operation @s[tag=!wrap] tmp2 /= @s tmp3

scoreboard players operation @s[tag=wrap] tmp2 = distance2 tmp
scoreboard players operation @s[tag=wrap] tmp2 /= @s tmp3

execute as @s[tag=wrap] if score @s dementorRotY < @s dementorRotTY run scoreboard players operation @s tmp = @s tmp2
execute as @s[tag=wrap] if score @s dementorRotY < @s dementorRotTY run scoreboard players operation @s tmp2 -= @s tmp
execute as @s[tag=wrap] if score @s dementorRotY < @s dementorRotTY run scoreboard players operation @s tmp2 -= @s tmp

tag @s remove wrap

# Store new rotation
scoreboard players operation @s dementorRotY += @s tmp2
execute store result entity @e[tag=focusDementorActor,limit=1] Rotation[0] float 1 run scoreboard players get @s dementorRotY

