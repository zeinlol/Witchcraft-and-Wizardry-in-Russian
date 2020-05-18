# Entities are grouped togehter by proximity and when they are not visible they are killed. When they are visible again they get summoned back in. This helps boost performance a great deal by limiting the number of entities loaded at any given time.

# Attic
execute if score atticIsCulled global matches 1 if entity @p[tag=!cullAll,x=621,y=95,z=205,dx=104,dy=31,dz=97] run function hp:entity_culling/hogwarts/attic/attic_set
execute if score atticIsCulled global matches 0 unless entity @p[tag=!cullAll,x=621,y=95,z=205,dx=104,dy=31,dz=97] run function hp:entity_culling/hogwarts/attic/attic_remove

# Blue Carpet Hallway
execute if score blueCarpetHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=655,y=64,z=45,dx=100,dy=22,dz=32] run function hp:entity_culling/hogwarts/blue_carpet_hallway/blue_carpet_hallway_set
execute if score blueCarpetHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=655,y=64,z=45,dx=100,dy=22,dz=32] run function hp:entity_culling/hogwarts/blue_carpet_hallway/blue_carpet_hallway_remove

# Причал
execute if score boatHouseIsCulled global matches 1 if entity @p[tag=!cullAll,x=902,y=3,z=282,dx=80,dy=75,dz=59] run function hp:entity_culling/hogwarts/boat_house/boat_house_set
execute if score boatHouseIsCulled global matches 0 unless entity @p[tag=!cullAll,x=902,y=3,z=282,dx=80,dy=75,dz=59] run function hp:entity_culling/hogwarts/boat_house/boat_house_remove

# Причал Path
execute if score boatHousePathIsCulled global matches 1 if entity @p[tag=!cullAll,x=793,y=0,z=245,dx=177,dy=208,dz=175] run function hp:entity_culling/hogwarts/boat_house_path/boat_house_path_set
execute if score boatHousePathIsCulled global matches 0 unless entity @p[tag=!cullAll,x=793,y=0,z=245,dx=177,dy=208,dz=175] run function hp:entity_culling/hogwarts/boat_house_path/boat_house_path_remove

# Brick Floor Cellar
execute if score brickFloorCellarIsCulled global matches 1 if entity @p[tag=!cullAll,x=636,y=45,z=226,dx=82,dy=18,dz=80] run function hp:entity_culling/hogwarts/brick_floor_cellar/brick_floor_cellar_set
execute if score brickFloorCellarIsCulled global matches 0 unless entity @p[tag=!cullAll,x=636,y=45,z=226,dx=82,dy=18,dz=80] run function hp:entity_culling/hogwarts/brick_floor_cellar/brick_floor_cellar_remove

# Charms
execute if score charmsIsCulled global matches 1 if entity @p[tag=!cullAll,x=673,y=61,z=59,dx=44,dy=13,dz=26] run function hp:entity_culling/hogwarts/charms/charms_set
execute if score charmsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=673,y=61,z=59,dx=44,dy=13,dz=26] run function hp:entity_culling/hogwarts/charms/charms_remove

# Charms Hallway
execute if score charmsHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=652,y=63,z=54,dx=52,dy=24,dz=111] run function hp:entity_culling/hogwarts/charms_hallway/charms_hallway_set
execute if score charmsHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=652,y=63,z=54,dx=52,dy=24,dz=111] run function hp:entity_culling/hogwarts/charms_hallway/charms_hallway_remove

# Часовая Башня
execute if score clockTowerIsCulled global matches 1 if entity @p[tag=!cullAll,x=521,y=48,z=233,dx=111,dy=124,dz=63] run function hp:entity_culling/hogwarts/clock_tower/clock_tower_set
execute if score clockTowerIsCulled global matches 0 unless entity @p[tag=!cullAll,x=521,y=48,z=233,dx=111,dy=124,dz=63] run function hp:entity_culling/hogwarts/clock_tower/clock_tower_remove

# Двор Часовой Башни
execute if score clockTowerCourtyardIsCulled global matches 1 if entity @p[tag=!cullAll,x=469,y=39,z=198,dx=161,dy=108,dz=142] run function hp:entity_culling/hogwarts/clock_tower_courtyard/clock_tower_courtyard_set
execute if score clockTowerCourtyardIsCulled global matches 0 unless entity @p[tag=!cullAll,x=469,y=39,z=198,dx=161,dy=108,dz=142] run function hp:entity_culling/hogwarts/clock_tower_courtyard/clock_tower_courtyard_remove

# Defence Against the Dark Arts
execute if score dadaIsCulled global matches 1 if entity @p[tag=!cullAll,x=631,y=86,z=202,dx=25,dy=23,dz=105] run function hp:entity_culling/hogwarts/dada/dada_set
execute if score dadaIsCulled global matches 0 unless entity @p[tag=!cullAll,x=631,y=86,z=202,dx=25,dy=23,dz=105] run function hp:entity_culling/hogwarts/dada/dada_remove

# Gallery
execute if score galleryIsCulled global matches 1 if entity @p[tag=!cullAll,x=732,y=73,z=137,dx=39,dy=26,dz=32] run function hp:entity_culling/hogwarts/gallery/gallery_set
execute if score galleryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=732,y=73,z=137,dx=39,dy=26,dz=32] run function hp:entity_culling/hogwarts/gallery/gallery_remove

# Grand Staircase
execute if score grandStaircaseIsCulled global matches 1 if entity @p[tag=!cullAll,x=704,y=42,z=285,dx=43,dy=91,dz=60] run function hp:entity_culling/hogwarts/grand_staircase/grand_staircase_set
execute if score grandStaircaseIsCulled global matches 0 unless entity @p[tag=!cullAll,x=704,y=42,z=285,dx=43,dy=91,dz=60] run function hp:entity_culling/hogwarts/grand_staircase/grand_staircase_remove

# Большой Зал
execute if score greatHallIsCulled global matches 1 if entity @p[tag=!cullAll,x=690,y=60,z=302,dx=114,dy=71,dz=113] run function hp:entity_culling/hogwarts/great_hall/great_hall_set
execute if score greatHallIsCulled global matches 0 unless entity @p[tag=!cullAll,x=690,y=60,z=302,dx=114,dy=71,dz=113] run function hp:entity_culling/hogwarts/great_hall/great_hall_remove

# Большой Зал Courtyard
execute if score greatHallCourtyardIsCulled global matches 1 if entity @p[tag=!cullAll,x=716,y=62,z=209,dx=132,dy=85,dz=178] run function hp:entity_culling/hogwarts/great_hall_courtyard/great_hall_courtyard_set
execute if score greatHallCourtyardIsCulled global matches 0 unless entity @p[tag=!cullAll,x=716,y=62,z=209,dx=132,dy=85,dz=178] run function hp:entity_culling/hogwarts/great_hall_courtyard/great_hall_courtyard_remove

# Green Cellar
execute if score greenCellarIsCulled global matches 1 if entity @p[tag=!cullAll,x=655,y=37,z=19,dx=101,dy=16,dz=138] run function hp:entity_culling/hogwarts/green_cellar/green_cellar_set
execute if score greenCellarIsCulled global matches 0 unless entity @p[tag=!cullAll,x=655,y=37,z=19,dx=101,dy=16,dz=138] run function hp:entity_culling/hogwarts/green_cellar/green_cellar_remove

# Greenouses 1
execute if score greenhouses1IsCulled global matches 1 if entity @p[tag=!cullAll,x=686,y=43,z=-9,dx=175,dy=63,dz=86] run function hp:entity_culling/hogwarts/greenhouses_1/greenhouses_1_set
execute if score greenhouses1IsCulled global matches 0 unless entity @p[tag=!cullAll,x=686,y=43,z=-9,dx=175,dy=63,dz=86] run function hp:entity_culling/hogwarts/greenhouses_1/greenhouses_1_remove

# Greenhouses 2
execute if score greenhouses2IsCulled global matches 1 if entity @p[tag=!cullAll,x=777,y=43,z=-7,dx=93,dy=103,dz=198] run function hp:entity_culling/hogwarts/greenhouses_2/greenhouses_2_set
execute if score greenhouses2IsCulled global matches 0 unless entity @p[tag=!cullAll,x=777,y=43,z=-7,dx=93,dy=103,dz=198] run function hp:entity_culling/hogwarts/greenhouses_2/greenhouses_2_remove

# Greenhouses Hall
execute if score greenhousesHallIsCulled global matches 1 if entity @p[tag=!cullAll,x=734,y=47,z=17,dx=79,dy=42,dz=138] run function hp:entity_culling/hogwarts/greenhouses_hall/greenhouses_hall_set
execute if score greenhousesHallIsCulled global matches 0 unless entity @p[tag=!cullAll,x=734,y=47,z=17,dx=79,dy=42,dz=138] run function hp:entity_culling/hogwarts/greenhouses_hall/greenhouses_hall_remove

# Greenhouses Hallway
execute if score greenhousesHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=655,y=53,z=76,dx=219,dy=11,dz=29] run function hp:entity_culling/hogwarts/greenhouses_hallway/greenhouses_hallway_set
execute if score greenhousesHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=655,y=53,z=76,dx=219,dy=11,dz=29] run function hp:entity_culling/hogwarts/greenhouses_hallway/greenhouses_hallway_remove

# Гостинная Гриффиндора
execute if score gryffindorCommonRoomIsCulled global matches 1 if entity @p[tag=!cullAll,x=704,y=128,z=285,dx=43,dy=72,dz=43] run function hp:entity_culling/hogwarts/gryffindor_common_room/gryffindor_common_room_set
execute if score gryffindorCommonRoomIsCulled global matches 0 unless entity @p[tag=!cullAll,x=704,y=128,z=285,dx=43,dy=72,dz=43] run function hp:entity_culling/hogwarts/gryffindor_common_room/gryffindor_common_room_remove

# History of Magic
execute if score historyOfMagicIsCulled global matches 1 if entity @p[tag=!cullAll,x=627,y=43,z=205,dx=75,dy=29,dz=66] run function hp:entity_culling/hogwarts/history_of_magic/history_of_magic_set
execute if score historyOfMagicIsCulled global matches 0 unless entity @p[tag=!cullAll,x=627,y=43,z=205,dx=75,dy=29,dz=66] run function hp:entity_culling/hogwarts/history_of_magic/history_of_magic_remove

# Hospital Arch Classrooms
execute if score hospitalArchClassroomsIsCulled global matches 1 if entity @p[tag=!cullAll,x=694,y=58,z=229,dx=25,dy=25,dz=62] run function hp:entity_culling/hogwarts/hospital_arch_classrooms/hospital_arch_classrooms_set
execute if score hospitalArchClassroomsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=694,y=58,z=229,dx=25,dy=25,dz=62] run function hp:entity_culling/hogwarts/hospital_arch_classrooms/hospital_arch_classrooms_remove

# Hospital Courtyard
execute if score hospitalCourtyardIsCulled global matches 1 if entity @p[tag=!cullAll,x=644,y=62,z=227,dx=130,dy=103,dz=100] run function hp:entity_culling/hogwarts/hospital_courtyard/hospital_courtyard_set
execute if score hospitalCourtyardIsCulled global matches 0 unless entity @p[tag=!cullAll,x=644,y=62,z=227,dx=130,dy=103,dz=100] run function hp:entity_culling/hogwarts/hospital_courtyard/hospital_courtyard_remove
 
# Hospital Wing
execute if score hospitalWingIsCulled global matches 1 if entity @p[tag=!cullAll,x=580,y=112,z=250,dx=91,dy=35,dz=32] run function hp:entity_culling/hogwarts/hospital_wing/hospital_wing_set
execute if score hospitalWingIsCulled global matches 0 unless entity @p[tag=!cullAll,x=580,y=112,z=250,dx=91,dy=35,dz=32] run function hp:entity_culling/hogwarts/hospital_wing/hospital_wing_remove

# Hufflepuff
execute if score hufflepuffIsCulled global matches 1 if entity @p[tag=!cullAll,x=775,y=16,z=118,dx=76,dy=21,dz=58] run function hp:entity_culling/hogwarts/hufflepuff/hufflepuff_set
execute if score hufflepuffIsCulled global matches 0 unless entity @p[tag=!cullAll,x=775,y=16,z=118,dx=76,dy=21,dz=58] run function hp:entity_culling/hogwarts/hufflepuff/hufflepuff_remove

# Kitchen
execute if score kitchenIsCulled global matches 1 if entity @p[tag=!cullAll,x=710,y=49,z=326,dx=62,dy=15,dz=69] run function hp:entity_culling/hogwarts/kitchen/kitchen_set
execute if score kitchenIsCulled global matches 0 unless entity @p[tag=!cullAll,x=710,y=49,z=326,dx=62,dy=15,dz=69] run function hp:entity_culling/hogwarts/kitchen/kitchen_remove

# Knights Hallway
execute if score knightsHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=636,y=80,z=283,dx=82,dy=22,dz=27] run function hp:entity_culling/hogwarts/knights_hallway/knights_hallway_set
execute if score knightsHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=636,y=80,z=283,dx=82,dy=22,dz=27] run function hp:entity_culling/hogwarts/knights_hallway/knights_hallway_remove

# Large Hall
execute if score largeHallIsCulled global matches 1 if entity @p[tag=!cullAll,x=746,y=54,z=100,dx=78,dy=51,dz=129] run function hp:entity_culling/hogwarts/large_hall/large_hall_set
execute if score largeHallIsCulled global matches 0 unless entity @p[tag=!cullAll,x=746,y=54,z=100,dx=78,dy=51,dz=129] run function hp:entity_culling/hogwarts/large_hall/large_hall_remove

# Laundry
execute if score laundryIsCulled global matches 1 if entity @p[tag=!cullAll,x=678,y=49,z=255,dx=50,dy=14,dz=20] run function hp:entity_culling/hogwarts/laundry/laundry_set
execute if score laundryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=678,y=49,z=255,dx=50,dy=14,dz=20] run function hp:entity_culling/hogwarts/laundry/laundry_remove

# Library
execute if score libraryIsCulled global matches 1 if entity @p[tag=!cullAll,x=720,y=73,z=58,dx=77,dy=24,dz=87] run function hp:entity_culling/hogwarts/library/library_set
execute if score libraryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=720,y=73,z=58,dx=77,dy=24,dz=87] run function hp:entity_culling/hogwarts/library/library_remove

# Owlery
execute if score owleryIsCulled global matches 1 if entity @p[tag=!cullAll,x=488,y=97,z=39,dx=70,dy=142,dz=83] run function hp:entity_culling/hogwarts/owlery/owlery_set
execute if score owleryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=488,y=97,z=39,dx=70,dy=142,dz=83] run function hp:entity_culling/hogwarts/owlery/owlery_remove

# Patterned Floor Hallway
execute if score patternedFloorHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=746,y=49,z=76,dx=64,dy=25,dz=159] run function hp:entity_culling/hogwarts/patterned_floor_hallway/patterned_floor_hallway_set
execute if score patternedFloorHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=746,y=49,z=76,dx=64,dy=25,dz=159] run function hp:entity_culling/hogwarts/patterned_floor_hallway/patterned_floor_hallway_remove

# Potions
execute if score potionsIsCulled global matches 1 if entity @p[tag=!cullAll,x=738,y=33,z=166,dx=48,dy=17,dz=56] run function hp:entity_culling/hogwarts/potions/potions_set
execute if score potionsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=738,y=33,z=166,dx=48,dy=17,dz=56] run function hp:entity_culling/hogwarts/potions/potions_remove

# Potions 2
execute if score potions2IsCulled global matches 1 if entity @p[tag=!cullAll,x=712,y=35,z=126,dx=36,dy=14,dz=34] run function hp:entity_culling/hogwarts/potions2/potions2_set
execute if score potions2IsCulled global matches 0 unless entity @p[tag=!cullAll,x=712,y=35,z=126,dx=36,dy=14,dz=34] run function hp:entity_culling/hogwarts/potions2/potions2_remove

# Potions 3
execute if score potions3IsCulled global matches 1 if entity @p[tag=!cullAll,x=739,y=35,z=122,dx=60,dy=16,dz=20] run function hp:entity_culling/hogwarts/potions3/potions3_set
execute if score potions3IsCulled global matches 0 unless entity @p[tag=!cullAll,x=739,y=35,z=122,dx=60,dy=16,dz=20] run function hp:entity_culling/hogwarts/potions3/potions3_remove

# Поле для Квиддича
execute if score quidditchPitchIsCulled global matches 1 if entity @p[tag=!cullAll,x=206,y=0,z=-376,dx=337,dy=193,dz=191] run function hp:entity_culling/hogwarts/quidditch_pitch/quidditch_pitch_set
execute if score quidditchPitchIsCulled global matches 0 unless entity @p[tag=!cullAll,x=206,y=0,z=-376,dx=337,dy=193,dz=191] run function hp:entity_culling/hogwarts/quidditch_pitch/quidditch_pitch_remove

# Гостинная Когтеврана
execute if score ravenclawCommonRoomIsCulled global matches 1 if entity @p[tag=!cullAll,x=758,y=121,z=131,dx=37,dy=95,dz=37] run function hp:entity_culling/hogwarts/ravenclaw/ravenclaw_set
execute if score ravenclawCommonRoomIsCulled global matches 0 unless entity @p[tag=!cullAll,x=758,y=121,z=131,dx=37,dy=95,dz=37] run function hp:entity_culling/hogwarts/ravenclaw/ravenclaw_remove

# Red Wallpaper Hallway
execute if score redWallpaperHallwayIsCulled global matches 1 if entity @p[tag=!cullAll,x=625,y=71,z=208,dx=47,dy=21,dz=102] run function hp:entity_culling/hogwarts/red_wallpaper_hallway/red_wallpaper_hallway_set
execute if score redWallpaperHallwayIsCulled global matches 0 unless entity @p[tag=!cullAll,x=625,y=71,z=208,dx=47,dy=21,dz=102] run function hp:entity_culling/hogwarts/red_wallpaper_hallway/red_wallpaper_hallway_remove

# Road to Quidditch
execute if score roadToQuidditchIsCulled global matches 1 if entity @p[tag=!cullAll,x=311,y=9,z=-277,dx=426,dy=176,dz=254] run function hp:entity_culling/hogwarts/road_to_quidditch/road_to_quidditch_set
execute if score roadToQuidditchIsCulled global matches 0 unless entity @p[tag=!cullAll,x=311,y=9,z=-277,dx=426,dy=176,dz=254] run function hp:entity_culling/hogwarts/road_to_quidditch/road_to_quidditch_remove

# Slytherin Common Room
execute if score slytherinCommonRoomIsCulled global matches 1 if entity @p[tag=!cullAll,x=664,y=8,z=256,dx=73,dy=25,dz=60] run function hp:entity_culling/hogwarts/slytherin/slytherin_set
execute if score slytherinCommonRoomIsCulled global matches 0 unless entity @p[tag=!cullAll,x=664,y=8,z=256,dx=73,dy=25,dz=60] run function hp:entity_culling/hogwarts/slytherin/slytherin_remove

# Study Hall
execute if score studyHallIsCulled global matches 1 if entity @p[tag=!cullAll,x=695,y=65,z=50,dx=74,dy=6,dz=90] run function hp:entity_culling/hogwarts/study_hall/study_hall_set
execute if score studyHallIsCulled global matches 0 unless entity @p[tag=!cullAll,x=695,y=65,z=50,dx=74,dy=6,dz=90] run function hp:entity_culling/hogwarts/study_hall/study_hall_remove

# Suspension Bridge
execute if score suspensionBridgeIsCulled global matches 1 if entity @p[tag=!cullAll,x=650,y=60,z=148,dx=63,dy=31,dz=96] run function hp:entity_culling/hogwarts/suspension_bridge/suspension_bridge_set
execute if score suspensionBridgeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=650,y=60,z=148,dx=63,dy=31,dz=96] run function hp:entity_culling/hogwarts/suspension_bridge/suspension_bridge_remove

# Training Grounds
execute if score trainingGroundsIsCulled global matches 1 if entity @p[tag=!cullAll,x=530,y=13,z=-104,dx=191,dy=400,dz=253] run function hp:entity_culling/hogwarts/training_grounds/training_grounds_set
execute if score trainingGroundsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=530,y=13,z=-104,dx=721,dy=400,dz=253] run function hp:entity_culling/hogwarts/training_grounds/training_grounds_remove

# Training Grounds 2
execute if score trainingGrounds2IsCulled global matches 1 if entity @p[tag=!cullAll,x=561,y=41,z=-25,dx=120,dy=112,dz=216] run function hp:entity_culling/hogwarts/training_grounds_2/training_grounds_2_set
execute if score trainingGrounds2IsCulled global matches 0 unless entity @p[tag=!cullAll,x=561,y=41,z=-25,dx=120,dy=112,dz=216] run function hp:entity_culling/hogwarts/training_grounds_2/training_grounds_2_remove

# Training Grounds Hall
execute if score trainingGroundsHallIsCulled global matches 1 if entity @p[tag=!cullAll,x=628,y=49,z=23,dx=81,dy=55,dz=138] run function hp:entity_culling/hogwarts/training_grounds_hall/training_grounds_hall_set
execute if score trainingGroundsHallIsCulled global matches 0 unless entity @p[tag=!cullAll,x=628,y=49,z=23,dx=81,dy=55,dz=138] run function hp:entity_culling/hogwarts/training_grounds_hall/training_grounds_hall_remove

# Transfiguration
execute if score transfigurationIsCulled global matches 1 if entity @p[tag=!cullAll,x=702,y=64,z=129,dx=32,dy=47,dz=49] run function hp:entity_culling/hogwarts/transfiguration/transfiguration_set
execute if score transfigurationIsCulled global matches 0 unless entity @p[tag=!cullAll,x=702,y=64,z=129,dx=32,dy=47,dz=49] run function hp:entity_culling/hogwarts/transfiguration/transfiguration_remove

# Transfiguration Courtyard
execute if score transfigurationCourtyardIsCulled global matches 1 if entity @p[tag=!cullAll,x=659,y=63,z=56,dx=121,dy=125,dz=102] run function hp:entity_culling/hogwarts/transfiguration_courtyard/transfiguration_courtyard_set
execute if score transfigurationCourtyardIsCulled global matches 0 unless entity @p[tag=!cullAll,x=659,y=63,z=56,dx=121,dy=125,dz=102] run function hp:entity_culling/hogwarts/transfiguration_courtyard/transfiguration_courtyard_remove

# Trophy Room
execute if score trophyRoomIsCulled global matches 1 if entity @p[tag=!cullAll,x=703,y=26,z=337,dx=42,dy=20,dz=65] run function hp:entity_culling/hogwarts/trophy_room/trophy_room_set
execute if score trophyRoomIsCulled global matches 0 unless entity @p[tag=!cullAll,x=703,y=26,z=337,dx=42,dy=20,dz=65] run function hp:entity_culling/hogwarts/trophy_room/trophy_room_remove

# Винный Погреб
execute if score wineCellarIsCulled global matches 1 if entity @p[tag=!cullAll,x=779,y=21,z=69,dx=63,dy=30,dz=84] run function hp:entity_culling/hogwarts/wine_cellar/wine_cellar_set
execute if score wineCellarIsCulled global matches 0 unless entity @p[tag=!cullAll,x=779,y=21,z=69,dx=63,dy=30,dz=84] run function hp:entity_culling/hogwarts/wine_cellar/wine_cellar_remove

# Wooden Bridge
execute if score woodenBridgeIsCulled global matches 1 if entity @p[tag=!cullAll,x=350,y=24,z=215,dx=223,dy=89,dz=92] run function hp:entity_culling/hogwarts/wooden_bridge/wooden_bridge_set
execute if score woodenBridgeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=350,y=24,z=215,dx=223,dy=89,dz=92] run function hp:entity_culling/hogwarts/wooden_bridge/wooden_bridge_remove