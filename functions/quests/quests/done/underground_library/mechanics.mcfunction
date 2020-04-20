# Doors
function hp:quests/quests/underground_library/door_1
function hp:quests/quests/underground_library/door_2

# four pillars
execute if score undergroundLibraryDoor1Direction global matches 1 unless score d0e801d2-2592-4e6e-839d-9cd861a7b88b pillarState matches 2 run scoreboard players set undergroundLibraryDoor1Direction global 0
execute if score undergroundLibraryDoor1Direction global matches 1 unless score 5d643847-6710-40e5-8f9d-9a9ad05aae30 pillarState matches 3 run scoreboard players set undergroundLibraryDoor1Direction global 0
execute if score undergroundLibraryDoor1Direction global matches 1 unless score b44aab91-b706-4fac-a826-9294baf82b99 pillarState matches 1 run scoreboard players set undergroundLibraryDoor1Direction global 0
execute if score undergroundLibraryDoor1Direction global matches 1 unless score 415b1852-a1ab-4c93-8943-77dc96e688c9 pillarState matches 4 run scoreboard players set undergroundLibraryDoor1Direction global 0
execute if score undergroundLibraryDoor1Direction global matches 0 if score d0e801d2-2592-4e6e-839d-9cd861a7b88b pillarState matches 2 if score 5d643847-6710-40e5-8f9d-9a9ad05aae30 pillarState matches 3 if score b44aab91-b706-4fac-a826-9294baf82b99 pillarState matches 1 if score 415b1852-a1ab-4c93-8943-77dc96e688c9 pillarState matches 4 run scoreboard players set undergroundLibraryDoor1Direction global 1

# Summon Skeletons
execute if score undergroundLibraryHasTriggeredSkeletons global matches 0 positioned 6968 58 5001 if entity @p[distance=..13] run function hp:quests/quests/underground_library/summon_skeletons