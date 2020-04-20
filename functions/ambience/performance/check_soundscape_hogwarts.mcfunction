# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

tag @s remove hogwartsInterior
tag @s remove hogwartsGreatHall
tag @s remove hogwartsForbiddenForestCave
tag @s remove hogwartsGreenhouses
tag @s remove hogwartsOwlery
tag @s remove hogwartsHagridsHut
tag @s remove hogwartsSlytherin
tag @s remove hogwartsRavenclaw
tag @s remove hogwartsHufflepuff
tag @s remove hogwartsGryffindor
tag @s remove hogwartsBoatHouse
tag @s remove hogwartsLibrary
tag @s remove hogwartsHospitalWing
tag @s remove hogwartsForbiddenForest
tag @s remove hogwartsCave
tag @s remove hogwartsPotions

# Test for flying
execute if entity @s[scores={ambienceLocation=16}] run tag @s add playerIsOutside
execute if entity @s[scores={ambienceLocation=25}] run tag @s add playerIsOutside
execute if entity @s[scores={ambienceLocation=32}] run tag @s add playerIsOutside

execute as @s[x=576,dx=44,y=0,dy=196,z=236,dz=61] run function hp:ambience/performance/hogwarts/clock_tower

execute as @s[x=602,dx=129,y=0,dy=256,z=213,dz=114] run function hp:ambience/performance/hogwarts/hospital_wing_courtyard

execute as @s[x=707,dx=37,y=0,dy=241,z=287,dz=39] run function hp:ambience/performance/hogwarts/gryffindor_tower

execute as @s[x=724,dx=98,y=0,dy=204,z=51,dz=168] run function hp:ambience/performance/hogwarts/cathedral_thing

execute as @s[x=724,dx=98,y=0,dy=204,z=51,dz=168] run function hp:ambience/performance/hogwarts/cathedral_thing

execute as @s[x=762,dx=31,y=0,dy=225,z=137,dz=29] run function hp:ambience/performance/hogwarts/ravenclaw_tower

execute as @s[x=744,dx=66,y=0,dy=220,z=53,dz=30] run function hp:ambience/performance/hogwarts/bell_towers

execute as @s[x=657,dx=174,y=0,dy=116,z=56,dz=123] run function hp:ambience/performance/hogwarts/around_transfiguration_courtyard

execute as @s[x=689,dx=36,y=45,dy=44,z=-17,dz=86] run function hp:ambience/performance/hogwarts/building_by_greenhouses

execute as @s[x=696,dx=44,y=52,dy=199,z=125,dz=37] run function hp:ambience/performance/hogwarts/astronomy_tower

execute as @s[x=600,dx=77,y=0,dy=215,z=209,dz=114] run function hp:ambience/performance/hogwarts/opposite_clock_tower

execute as @s[x=-349,dx=1987,y=0,dy=72,z=-887,dz=1987] run function hp:ambience/performance/hogwarts/under_the_castle

execute as @s[x=600,dx=77,y=0,dy=215,z=209,dz=114] run function hp:ambience/performance/hogwarts/under_the_castle

execute as @s[x=704,dx=82,y=65,dy=110,z=312,dz=90] run function hp:ambience/performance/hogwarts/great_hall

execute as @s[x=504,dx=25,y=111,dy=99,z=60,dz=26] run function hp:ambience/performance/hogwarts/owlery

execute as @s[x=716,dx=129,y=42,dy=26,z=2,dz=136] run function hp:ambience/performance/hogwarts/greenhouses

execute as @s[x=716,dx=129,y=42,dy=26,z=2,dz=136] run function hp:ambience/performance/hogwarts/greenhouses

execute as @s[x=637,dx=16,y=43,dy=31,z=158,dz=16] run function hp:ambience/performance/hogwarts/tiny_building

execute as @s[x=325,dx=25,y=9,dy=25,z=362,dz=22] run function hp:ambience/performance/hogwarts/hagrids_hut

execute as @s[x=933,dx=29,y=0,dy=66,z=298,dz=28] run function hp:ambience/performance/hogwarts/boat_house

execute as @s[x=-48,dx=347,y=0,dy=256,z=-43,dz=878] run function hp:ambience/performance/hogwarts/forbidden_forest

# Small holes
execute as @s[x=721,dx=0,y=60,dy=4,z=235,dz=2] run tag @s add hogwartsInterior
execute as @s[x=695,dx=10,y=101,dy=3,z=228,dz=17] run tag @s add hogwartsInterior
execute as @s[x=705,dx=0,y=109,dy=1,z=240,dz=4] run tag @s add hogwartsInterior
execute as @s[x=640,dx=2,y=39,dy=63,z=218,dz=0] run tag @s add hogwartsInterior
execute as @s[x=643,dx=1,y=38,dy=29,z=218,dz=0] run tag @s add hogwartsInterior
execute as @s[x=640,dx=2,y=27,dy=5,z=218,dz=0] run tag @s add hogwartsInterior
execute as @s[x=788,dx=0,y=98,dy=1,z=80,dz=57] run tag @s add hogwartsInterior
execute as @s[x=786,dx=0,y=101,dy=0,z=80,dz=61] run tag @s add hogwartsInterior
execute as @s[x=797,dx=0,y=56,dy=1,z=133,dz=11] run tag @s add hogwartsInterior
execute as @s[x=693,dx=5,y=54,dy=6,z=62,dz=0] run tag @s add hogwartsInterior
execute as @s[x=685,dx=0,y=61,dy=5,z=61,dz=1] run tag @s add hogwartsInterior
execute as @s[x=662,dx=0,y=65,dy=5,z=77,dz=1] run tag @s add hogwartsInterior
execute as @s[x=665,dx=2,y=88,dy=7,z=144,dz=1] run tag @s add hogwartsInterior
execute as @s[x=703,dx=4,y=66,dy=5,z=141,dz=2] run tag @s add hogwartsInterior
execute as @s[x=782,dx=0,y=105,dy=0,z=119,dz=19] run tag @s add hogwartsInterior
execute as @s[x=784,dx=0,y=103,dy=0,z=74,dz=64] run tag @s add hogwartsInterior
execute as @s[x=631,dx=8,y=11,dy=109,z=211,dz=3] run tag @s add hogwartsInterior
execute as @s[x=632,dx=6,y=10,dy=109,z=210,dz=0] run tag @s add hogwartsInterior

# Subtract:
execute as @s[x=681,dx=2,y=83,dy=14,z=228,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=795,dx=1,y=85,dy=0,z=80,dz=64] run tag @s remove hogwartsInterior
execute as @s[x=739,dx=26,y=104,dy=0,z=153,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=792,dx=0,y=87,dy=0,z=161,dz=22] run tag @s remove hogwartsInterior
execute as @s[x=663,dx=1,y=53,dy=11,z=146,dz=11] run tag @s remove hogwartsInterior
execute as @s[x=771,dx=13,y=51,dy=1,z=63,dz=2] run tag @s remove hogwartsInterior
execute as @s[x=731,dx=38,y=47,dy=3,z=-2,dz=12] run tag @s remove hogwartsInterior
execute as @s[x=712,dx=0,y=54,dy=5,z=5,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=711,dx=0,y=54,dy=5,z=5,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=710,dx=0,y=54,dy=5,z=5,dz=3] run tag @s remove hogwartsInterior
execute as @s[x=722,dx=1,y=175,dy=4,z=142,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=757,dx=47,y=34,dy=4,z=-88,dz=12] run tag @s remove hogwartsInterior
execute as @s[x=665,dx=34,y=103,dy=1,z=153,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=635,dx=22,y=139,dy=0,z=271,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=635,dx=22,y=139,dy=0,z=266,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=658,dx=0,y=141,dy=0,z=268,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=716,dx=4,y=196,dy=0,z=145,dz=8] run tag @s remove hogwartsInterior
execute as @s[x=716,dx=0,y=176,dy=0,z=139,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=712,dx=1,y=176,dy=0,z=141,dz=2] run tag @s remove hogwartsInterior
execute as @s[x=714,dx=1,y=172,dy=0,z=138,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=712,dx=0,y=172,dy=0,z=140,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=712,dx=1,y=169,dy=0,z=138,dz=1] run tag @s remove hogwartsInterior 
execute as @s[x=588,dx=1,y=135,dy=0,z=258,dz=0] run tag @s remove hogwartsInterior
execute as @s[x=588,dx=1,y=133,dy=2,z=279,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=748,dx=1,y=95,dy=1,z=324,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=746,dx=1,y=95,dy=1,z=321,dz=2] run tag @s remove hogwartsInterior
execute as @s[x=744,dx=1,y=95,dy=1,z=319,dz=2] run tag @s remove hogwartsInterior
execute as @s[x=690,dx=16,y=50,dy=8,z=321,dz=1] run tag @s remove hogwartsInterior
execute as @s[x=712,dx=8,y=65,dy=11,z=389,dz=5] run tag @s remove hogwartsGreatHall
execute as @s[x=702,dx=10,y=52,dy=13,z=17,dz=8] run tag @s remove hogwartsInterior
execute as @s[x=511,dx=0,y=151,dy=4,z=75,dz=4] run tag @s remove hogwartsOwlery


# Whomping Willow Passage
execute as @s[x=498,dx=54,y=33,dy=5,z=392,dz=7] run tag @s add hogwartsInterior

# Headmaster office
execute as @s[x=5930,dx=89,y=33,dy=79,z=68,dz=1016] run tag @s add hogwartsInterior


execute unless entity @s[scores={ambienceLocation=26}] as @s[tag=hogwartsPotions,tag=!isFastTravelling] run function hp:ambience/soundscapes/slytherin
execute unless entity @s[scores={ambienceLocation=20}] as @s[tag=hogwartsCave,tag=!hogwartsPotions,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave
execute unless entity @s[scores={ambienceLocation=32}] as @s[tag=hogwartsForbiddenForest,tag=!isFastTravelling] run function hp:ambience/soundscapes/forbidden_forest
execute unless entity @s[scores={ambienceLocation=31}] as @s[tag=hogwartsLibrary,tag=!isFastTravelling] run function hp:ambience/soundscapes/library
execute unless entity @s[scores={ambienceLocation=30}] as @s[tag=hogwartsHospitalWing,tag=!isFastTravelling] run function hp:ambience/soundscapes/hospital_wing
execute unless entity @s[scores={ambienceLocation=29}] as @s[tag=hogwartsHufflepuff,tag=!isFastTravelling] run function hp:ambience/soundscapes/hufflepuff
execute unless entity @s[scores={ambienceLocation=28}] as @s[tag=hogwartsGryffindor,tag=!isFastTravelling] run function hp:ambience/soundscapes/gryffindor
execute unless entity @s[scores={ambienceLocation=27}] as @s[tag=hogwartsRavenclaw,tag=!isFastTravelling] run function hp:ambience/soundscapes/ravenclaw
execute unless entity @s[scores={ambienceLocation=26}] as @s[tag=hogwartsSlytherin,tag=!isFastTravelling] run function hp:ambience/soundscapes/slytherin
execute unless entity @s[scores={ambienceLocation=19}] as @s[tag=hogwartsBoatHouse,tag=!isFastTravelling] run function hp:ambience/soundscapes/boat_house
execute unless entity @s[scores={ambienceLocation=23}] as @s[tag=hogwartsHagridsHut,tag=!isFastTravelling] run function hp:ambience/soundscapes/hagrids_hut
execute unless entity @s[scores={ambienceLocation=18}] as @s[tag=hogwartsGreatHall,tag=!isFastTravelling] run function hp:ambience/soundscapes/great_hall_empty
execute unless entity @s[scores={ambienceLocation=24}] as @s[tag=hogwartsGreenhouses,tag=!isFastTravelling] run function hp:ambience/soundscapes/greenhouse
execute unless entity @s[scores={ambienceLocation=20}] as @s[tag=hogwartsForbiddenForestCave,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave
execute unless entity @s[scores={ambienceLocation=10}] as @s[tag=hogwartsOwlery,tag=!isFastTravelling] run function hp:ambience/soundscapes/eeylops_owl_emporium

execute unless entity @s[scores={ambienceLocation=22}] as @s[tag=hogwartsInterior,tag=!hogwartsGreatHall,tag=!hogwartsHospitalWing,tag=!hogwartsCave,tag=!hogwartsPotions,tag=!hogwartsLibrary,tag=!Hufflepuff,tag=!hogwartsGryffindor,tag=!hogwartsRavenclaw,tag=!hogwartsSlytherin,tag=!hogwartsLibrary,tag=!hogwartsHospitalWing,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogwarts_hall

execute unless entity @s[scores={ambienceLocation=16}] as @s[scores={lastRegion=1},x=-349,dx=1987,y=0,dy=125,z=-887,dz=1987,tag=!isFastTravelling,tag=!hogwartsInterior,tag=!hogwartsBoatHouse,tag=!hogwartsGreenhouses,tag=!hogwartsGreatHall,tag=!hogwartsForbiddenForestCave,tag=!hogwartsOwlery,tag=!hogwartsHagridsHut,tag=!hogwartsForbiddenForest] run function hp:ambience/soundscapes/hogwarts_grounds
execute unless entity @s[scores={ambienceLocation=25}] as @s[scores={lastRegion=1},x=-349,dx=1987,y=127,dy=500,z=-887,dz=1987,tag=!isFastTravelling,tag=!hogwartsInterior,tag=!hogwartsBoatHouse,tag=!hogwartsGreenhouses,tag=!hogwartsGreatHall,tag=!hogwartsForbiddenForestCave,tag=!hogwartsOwlery,tag=!hogwartsHagridsHut,tag=!hogwartsForbiddenForest] run function hp:ambience/soundscapes/hogwarts_grounds_high

# Большой Зал Full
execute unless entity @s[scores={ambienceLocation=17}] as @s[scores={lastRegion=1},tag=greatHallFull,x=4918,dx=94,y=24,dy=117,z=996,dz=94,tag=!isFastTravelling] run function hp:ambience/soundscapes/great_hall_full
# Большой Зал Empty
execute unless entity @s[scores={ambienceLocation=18}] as @s[scores={lastRegion=1},tag=!greatHallFull,x=4918,dx=94,y=24,dy=117,z=996,dz=94,tag=!isFastTravelling] run function hp:ambience/soundscapes/great_hall_empty