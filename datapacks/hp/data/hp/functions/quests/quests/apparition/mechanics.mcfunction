# Door 1
execute if score apparitionSwitch1 global matches 0 if score apparitionSwitch2 global matches 0 if score apparitionSwitch3 global matches 0 run scoreboard players set apparitionDoor3Direction global 1
execute unless score apparitionSwitch1 global matches 0 run scoreboard players set apparitionDoor3Direction global 0
execute unless score apparitionSwitch2 global matches 0 run scoreboard players set apparitionDoor3Direction global 0
execute unless score apparitionSwitch3 global matches 0 run scoreboard players set apparitionDoor3Direction global 0

# Reset cubes
execute as @e[tag=wingardium,scores={wingardiumBox=3}] unless score @s wingardiumBoxID = wingardiumBox3ID global run function hp:spells/spell/wingardium_dissolve

execute if entity @e[tag=wingardium,x=8842,y=28,z=61,dx=169,dy=22,dz=187] run function hp:quests/quests/apparition/reset_wingardium_cubes



function hp:quests/quests/apparition/door_1
function hp:quests/quests/apparition/door_2
function hp:quests/quests/apparition/door_3

# Play melody when pulling center chain
execute if score apparitionHasPulledCenterChain global matches 1 if score apparitionMelodyProgress global matches 1 run scoreboard players set apparitionMelody1 global 80
execute if score apparitionHasPulledCenterChain global matches 1 if score apparitionMelodyProgress global matches 2 run scoreboard players set apparitionMelody2 global 120
execute if score apparitionHasPulledCenterChain global matches 1 if score apparitionMelodyProgress global matches 3 run scoreboard players set apparitionMelody3 global 160
execute if score apparitionHasPulledCenterChain global matches 1 if score apparitionMelodyProgress global matches 4 run scoreboard players set apparitionMelody4 global 200
execute if score apparitionHasPulledCenterChain global matches 1 run scoreboard players set apparitionChainProgress global 1
execute if score apparitionHasPulledCenterChain global matches 1 run scoreboard players set apparitionHasPulledCenterChain global 0


execute if score apparitionMelodyProgress global matches 1 run function hp:quests/quests/apparition/combination_lock_1
execute if score apparitionMelodyProgress global matches 2 run function hp:quests/quests/apparition/combination_lock_2
execute if score apparitionMelodyProgress global matches 3 run function hp:quests/quests/apparition/combination_lock_3
execute if score apparitionMelodyProgress global matches 4 run function hp:quests/quests/apparition/combination_lock_4

execute if score apparitionMelodyPuzzleComplete global matches 1 run scoreboard players set apparitionDoor1Direction global 1
execute if score apparitionMelodyPuzzleComplete global matches 1 run scoreboard players set apparitionMelodyPuzzleComplete global 0

execute if score apparitionMelodyProgress global matches 1 run function hp:quests/quests/apparition/combination_lock_1

execute if score apparitionRedLamps global matches 20 run function hp:quests/quests/apparition/lamps/lamp1_red
execute if score apparitionRedLamps global matches 20 run function hp:quests/quests/apparition/lamps/lamp2_red
execute if score apparitionRedLamps global matches 20 run function hp:quests/quests/apparition/lamps/lamp3_red
execute if score apparitionRedLamps global matches 20 run function hp:quests/quests/apparition/lamps/lamp4_red
execute if score apparitionRedLamps global matches 1 run function hp:quests/quests/apparition/lamps/lamp1_off
execute if score apparitionRedLamps global matches 1 run function hp:quests/quests/apparition/lamps/lamp2_off
execute if score apparitionRedLamps global matches 1 run function hp:quests/quests/apparition/lamps/lamp3_off
execute if score apparitionRedLamps global matches 1 run function hp:quests/quests/apparition/lamps/lamp4_off
execute if score apparitionRedLamps global matches 1.. run scoreboard players remove apparitionRedLamps global 1

execute if score apparitionLamp1 global matches 20 run function hp:quests/quests/apparition/lamps/lamp1_green
execute if score apparitionLamp1 global matches 1 run function hp:quests/quests/apparition/lamps/lamp1_off
execute if score apparitionLamp1 global matches 1.. run scoreboard players remove apparitionLamp1 global 1

execute if score apparitionLamp2 global matches 20 run function hp:quests/quests/apparition/lamps/lamp2_green
execute if score apparitionLamp2 global matches 1 run function hp:quests/quests/apparition/lamps/lamp2_off
execute if score apparitionLamp2 global matches 1.. run scoreboard players remove apparitionLamp2 global 1

execute if score apparitionLamp3 global matches 20 run function hp:quests/quests/apparition/lamps/lamp3_green
execute if score apparitionLamp3 global matches 1 run function hp:quests/quests/apparition/lamps/lamp3_off
execute if score apparitionLamp3 global matches 1.. run scoreboard players remove apparitionLamp3 global 1

execute if score apparitionLamp4 global matches 20 run function hp:quests/quests/apparition/lamps/lamp4_green
execute if score apparitionLamp4 global matches 1 run function hp:quests/quests/apparition/lamps/lamp4_off
execute if score apparitionLamp4 global matches 1.. run scoreboard players remove apparitionLamp4 global 1


function hp:quests/quests/apparition/melody_1
function hp:quests/quests/apparition/melody_2
function hp:quests/quests/apparition/melody_3
function hp:quests/quests/apparition/melody_4

# Apparition first drop
execute as @a[tag=play,x=8899,y=15,z=1,dx=10,dy=24,dz=11,tag=!inTravelPoint] run function hp:travel_point/init_apparition_1
# Apparition maze drop 
execute as @a[tag=play,x=8842,y=28,z=61,dx=169,dy=22,dz=187,tag=!inTravelPoint] run function hp:travel_point/init_apparition_2