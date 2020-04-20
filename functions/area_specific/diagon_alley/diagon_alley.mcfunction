#####################
# Diagon Alley Door #
#####################

execute if score diagonAlleyDoor global matches 1.. run scoreboard players remove diagonAlleyDoor global 1
execute if score diagonAlleyDoorState global matches 1 if score diagonAlleyDoor global matches ..0 if entity @e[type=armor_stand,tag=diagonAlleyDoorPos,limit=1] run function hp:misc/diagon_alley_door/startup_close

execute if score diagonAlleyAnimation global matches 1 if entity @e[type=armor_stand,name=AlleyPosition,tag=Opening,limit=1] run function hp:misc/diagon_alley_door/doorfunc_open
execute if score diagonAlleyAnimation global matches 1 if entity @e[type=armor_stand,name=AlleyPosition,tag=Closing,limit=1] run function hp:misc/diagon_alley_door/doorfunc_close


########################
# Gringotts Stair case #
########################
# Trigger 2840 21 1099 2850 36 1109
execute as @p[x=2840,y=21,z=1099,dx=10,dy=15,dz=10,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_gringotts_staircase


#####################
# Second hand books #
#####################
# Combination lock and monster books nest
# 2810 48 791 2841 56 808
execute if entity @p[x=2810,y=48,z=791,dx=31,dy=8,dz=17,tag=play] run function hp:quests/quests/monster_book_of_monsters/combination_lock

# If exiting 
execute if score secondHandBroomCellarIsEmpty global matches 0 unless entity @p[x=2810,y=48,z=791,dx=31,dy=8,dz=17,tag=!inTravelPoint,tag=play] run tag cd6aea63-d9ed-4a56-951b-422fb9d2cebf add disable
execute if score secondHandBroomCellarIsEmpty global matches 0 unless entity @p[x=2810,y=48,z=791,dx=31,dy=8,dz=17,tag=!inTravelPoint,tag=play] as cd6aea63-d9ed-4a56-951b-422fb9d2cebf run function hp:creatures/remove_nest_creatures
execute if score secondHandBroomCellarIsEmpty global matches 0 unless entity @p[x=2810,y=48,z=791,dx=31,dy=8,dz=17,tag=!inTravelPoint,tag=play] run scoreboard players set secondHandBroomCellarIsEmpty global 1

##############
# Sewer Rats #
##############
execute if entity @p[x=2840,y=19,z=969,dx=24,dy=18,dz=39,tag=play] run particle minecraft:dust 0.3 0.5 0.3 1 2852.51 24.00 991.18 6 0.1 6 1 10

execute as @p[x=2845,y=22,z=980,dx=15,dy=1,dz=24,tag=play] run function hp:health/poison
execute as @p[x=2845,y=22,z=980,dx=15,dy=1,dz=24,tag=play] run effect give @s minecraft:instant_damage



# Knockturn alley door
function hp:area_specific/diagon_alley/knockturn_alley_door_1
function hp:area_specific/diagon_alley/knockturn_alley_door_2