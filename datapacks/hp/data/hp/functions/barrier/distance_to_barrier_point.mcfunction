# Copied from respawn system

######################
# Determine distance #
######################
# I do distance^2 = x^2+y^2+z^2. No need to do the square root, since i'm only checking which is smallest

#####
# X #
#####

# if spawnpoint x is greater than player x
execute if score @s playerRespawnX >= @s respawnX run scoreboard players operation @s tmp = @s playerRespawnX
execute if score @s playerRespawnX >= @s respawnX run scoreboard players operation @s tmp -= @s respawnX

# if spawnpoint x is less than player x
execute if score @s playerRespawnX < @s respawnX run scoreboard players operation @s tmp = @s respawnX
execute if score @s playerRespawnX < @s respawnX run scoreboard players operation @s tmp -= @s playerRespawnX

# Pythagoras
scoreboard players operation @s tmp *= @s tmp

#####
# Y #
#####

# if spawnpoint y is greater than player y
execute if score @s playerRespawnY >= @s respawnY run scoreboard players operation @s tmp2 = @s playerRespawnY
execute if score @s playerRespawnY >= @s respawnY run scoreboard players operation @s tmp2 -= @s respawnY

# if spawnpoint y is less than player y
execute if score @s playerRespawnY < @s respawnY run scoreboard players operation @s tmp2 = @s respawnY
execute if score @s playerRespawnY < @s respawnY run scoreboard players operation @s tmp2 -= @s playerRespawnY

# Pythagoras
scoreboard players operation @s tmp2 *= @s tmp2
scoreboard players operation @s tmp += @s tmp2

#####
# Z #
#####

# if spawnpoint z is greater than player z
execute if score @s playerRespawnZ >= @s respawnZ run scoreboard players operation @s tmp3 = @s playerRespawnZ
execute if score @s playerRespawnZ >= @s respawnZ run scoreboard players operation @s tmp3 -= @s respawnZ

# if spawnpoint z is less than player z
execute if score @s playerRespawnZ < @s respawnZ run scoreboard players operation @s tmp3 = @s respawnZ
execute if score @s playerRespawnZ < @s respawnZ run scoreboard players operation @s tmp3 -= @s playerRespawnZ

# Pythagoras
scoreboard players operation @s tmp3 *= @s tmp3
scoreboard players operation @s tmp += @s tmp3

# If this is the first point being tested assume it's the one that will be used
execute as @s[scores={testRespawnID=0}] run scoreboard players operation @s respawnID = @s testRespawnID
execute as @s[scores={testRespawnID=0}] run scoreboard players operation @s respawnDistance = @s tmp

# If the new tested point is closer to the player than the previously closets point replace it
execute as @s[scores={testRespawnID=1..}] if score @s tmp < @s respawnDistance run scoreboard players operation @s respawnID = @s testRespawnID
execute as @s[scores={testRespawnID=1..}] if score @s tmp < @s respawnDistance run scoreboard players operation @s respawnDistance = @s tmp

# Test next respawn Point
scoreboard players add @s testRespawnID 1