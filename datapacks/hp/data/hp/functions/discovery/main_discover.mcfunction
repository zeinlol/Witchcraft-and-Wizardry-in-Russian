# On discover location increase counter displayed in quest book
scoreboard players add @s[scores={discoverLocation=80}] disLocations 1

# Decay Timer
execute as @s[scores={discoveryTimer=1..}] run scoreboard players remove @s discoveryTimer 1
execute as @s[scores={discoverLocation=1..}] run scoreboard players remove @s discoverLocation 1
execute as @s[scores={discoverLocation=1,playerID=1}] run bossbar set minecraft:player1discover name ""
execute as @s[scores={discoverLocation=1,playerID=2}] run bossbar set minecraft:player2discover name ""
execute as @s[scores={discoverLocation=1,playerID=3}] run bossbar set minecraft:player3discover name ""
execute as @s[scores={discoverLocation=1,playerID=4}] run bossbar set minecraft:player4discover name ""
execute as @s[scores={discoverLocation=1,playerID=1}] run bossbar set minecraft:player1empty name ""
execute as @s[scores={discoverLocation=1,playerID=2}] run bossbar set minecraft:player2empty name ""
execute as @s[scores={discoverLocation=1,playerID=3}] run bossbar set minecraft:player3empty name ""
execute as @s[scores={discoverLocation=1,playerID=4}] run bossbar set minecraft:player4empty name ""
execute as @s[scores={discoverLocation=1}] run function hp:misc/update_bossbars

# I only test once every second to save performance. Atleast theoretically.
execute as @s[scores={discoveryTimer=0,discoverLocation=0},tag=!doNotPlayAmbience] run function hp:discovery/discover_test

# This system also detects where the player is, which is required by the quest direction compass, and it also prevents showing the same location text several times.
# Hiearchy is
# 1. lastRegion (Hogwarts, London, etc. Disconnected chunks that you can't walk between)
# 2. lastArea (Hogwarts Grounds, Hogwarts Castle, Diagon Alley, West Minster. Bigger areas, but connected)
# 3. lastLocation (Гостинная Гриффиндора, Ollivanders, etc. Smaller centralized locations)

# Regions:
# Hogwarts = 1
    # Hogwarts Grounds = 1
	# Hogwarts Castle = 2
	# the Forbidden Forest = 3
# London = 2
    # Diagon Alley = 4
	# West Minster = 5
	# Thames = 6
	# Kings Cross = 7
	# Borough of Islington = 8
	# Knockturn Alley = 9
# Станция 'Хогсмид' = 3
	# Станция 'Хогсмид'
# Hogsmeade = 4
	# 
# Ministry of Magic = 5
	# 
# Тисовая Улица = 6
	# 
# Azkaban = 7
	# 
# Spell Challenges, etc. = 8
    # 

