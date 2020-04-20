# This is the barrier system, that prevents the player from leaving the playable area. 

# Remove tag from previous testing
tag @s remove leavingPlayableArea
tag @s remove leftPlayableArea

###############
# Reset Point #
###############

# Check if the player is leaving the playable area

# Hogwarts
execute as @s[x=-349,dx=1987,y=0,dy=99999,z=-887,dz=1987] run function hp:barrier/performance/hogwarts_test

# Станция 'Хогсмид'
execute as @s[x=412,dx=935,y=0,dy=99999,z=-2148,dz=967] run tag @s add leftPlayableArea
execute as @s[x=512,dx=735,y=0,dy=99999,z=-2048,dz=767] run function hp:barrier/performance/hogsmeade_station_test

# Hogsmeade
execute as @s[x=4892,dx=1095,y=0,dy=99999,z=1948,dz=1095] run tag @s add leftPlayableArea
execute as @s[x=4992,dx=895,y=0,dy=99999,z=2048,dz=895] run function hp:barrier/performance/hogsmeade_test

# Residences
execute as @s[x=4892,dx=1019,y=0,dy=99999,z=3868,dz=1019] run tag @s add leftPlayableArea
execute as @s[x=4992,dx=819,y=0,dy=99999,z=3968,dz=819] run function hp:barrier/performance/residences_test

# Azkaban
execute as @s[x=4689,dx=662,y=0,dy=255,z=9706,dz=656] unless entity @s[x=4878,dx=296,y=0,dy=99999,z=9937,dz=224] run tag @s add leavingPlayableArea
execute as @s[x=4689,dx=662,y=0,dy=255,z=9706,dz=656] unless entity @s[x=4855,dx=345,y=0,dy=99999,z=9914,dz=273] run tag @s add leftPlayableArea

########################################################################
# Lock some areas until player has completed certain important actions #
########################################################################

# London
execute as @s[scores={worldBarrier=1..2},x=1868,dx=2206,y=0,dy=255,z=-600,dz=1700] unless entity @s[x=2730,dx=423,y=0,dy=99999,z=717,dz=584] run tag @s add leavingPlayableArea
execute as @s[scores={worldBarrier=1..2},x=1868,dx=2206,y=0,dy=255,z=-600,dz=1700] unless entity @s[x=2717,dx=436,y=0,dy=99999,z=703,dz=598] run tag @s add leftPlayableArea

# Diagon Alley
execute as @s[scores={worldBarrier=1},x=2785,dx=73,y=0,dy=99999,z=797,dz=226] run tag @s add leavingPlayableArea
execute as @s[scores={worldBarrier=1},x=2785,dx=73,y=0,dy=99999,z=803,dz=220] run tag @s add leftPlayableArea

# Станция 'Хогсмид'
execute as @s[scores={worldBarrier=3},x=412,dx=935,y=0,dy=99999,z=-2148,dz=967] if entity @s[x=512,dx=1247,y=0,dy=99999,z=-2048,dz=244] run tag @s add leavingPlayableArea
execute as @s[scores={worldBarrier=3},x=412,dx=935,y=0,dy=99999,z=-2148,dz=967] if entity @s[x=512,dx=1247,y=0,dy=99999,z=-2048,dz=224] run tag @s add leftPlayableArea

# Hogwarts
execute as @s[x=-349,dx=1987,y=0,dy=99999,z=-887,dz=1987] as @s[scores={worldBarrier=3}] unless entity @s[x=734,dx=242,y=0,dy=99999,z=274,dz=106] run tag @s add leavingPlayableArea
execute as @s[x=-349,dx=1987,y=0,dy=99999,z=-887,dz=1987] as @s[scores={worldBarrier=3}] unless entity @s[x=715,dx=273,y=0,dy=99999,z=255,dz=138] run tag @s add leftPlayableArea


###############
# Reset Point #
###############
execute as @s[tag=leftPlayableArea,tag=!inResetPoint] run function hp:barrier/init_barrier_reset
