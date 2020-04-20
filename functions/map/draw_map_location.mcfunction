
execute as 0-0-1-0-1 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-2 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-3 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-4 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-5 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-6 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption

execute as 0-0-1-0-1 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-2 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-3 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-4 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-5 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-6 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID

execute as 0-0-1-0-1 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked
execute as 0-0-1-0-2 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked
execute as 0-0-1-0-3 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked
execute as 0-0-1-0-4 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked
execute as 0-0-1-0-5 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked
execute as 0-0-1-0-6 if entity @s[tag=focusInventoryOption,tag=selected] as @p[tag=activePlayer,scores={mapUnlocked=0}] run tag @s add selectedDestinationLocked


# Locations
#################################
#         Categories            #
#################################

#  Close Карта Мародёров
execute if entity @s[scores={InvItemID=-1}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Закрыть Карту Мародёров\",\"color\":\"dark_gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-1}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Закрыть Карту Мародёров\",\"color\":\"gray\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Hogwarts
execute if entity @s[scores={InvItemID=-2}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Хогвартс\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-2}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Хогвартс\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  The Muggle World
execute if entity @s[scores={InvItemID=-3}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Мир Маглов\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-3}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Мир Маглов\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  The Wizarding World
execute if entity @s[scores={InvItemID=-4}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Мир Магов\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-4}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Мир Магов\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Hogsmeade
execute if entity @s[scores={InvItemID=-5}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Хогсмид\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-5}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Хогсмид\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}

#  Secrets
execute if entity @s[scores={InvItemID=-6}] as @e[type=armor_stand,tag=focusInventoryOption,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ     \",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"dark_gray\"},{\"text\":\"Секреты\",\"color\":\"gray\"},{\"text\":\"] ˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}]"}
execute if entity @s[scores={InvItemID=-6}] as @e[type=armor_stand,tag=focusInventoryOption,tag=selected,limit=1] run data merge entity @s {CustomName:"[\"\",{\"text\":\"  ˈˈˈˈˈˈˈˈˈ  ˈˈ\"},{\"text\":\">>\",\"color\":\"gray\"},{\"text\":\" [\",\"color\":\"gray\"},{\"text\":\"Секреты\",\"color\":\"white\",\"underlined\":true},{\"text\":\"] \",\"color\":\"gray\"},{\"text\":\"<<\",\"color\":\"gray\"}]"}


##################################
#            HOGWARTS            #
##################################
execute if entity @s[scores={InvItemID=1}] run function hp:map/locations/great_hall
execute if entity @s[scores={InvItemID=2}] run function hp:map/locations/the_library
execute if entity @s[scores={InvItemID=3}] run function hp:map/locations/potions_classroom
execute if entity @s[scores={InvItemID=4}] run function hp:map/locations/defence_against_the_dark_arts
execute if entity @s[scores={InvItemID=5}] run function hp:map/locations/charms_classroom
execute if entity @s[scores={InvItemID=6}] run function hp:map/locations/gryffindor_common_room
execute if entity @s[scores={InvItemID=7}] run function hp:map/locations/hufflepuff_common_room
execute if entity @s[scores={InvItemID=8}] run function hp:map/locations/ravenclaw_common_room
execute if entity @s[scores={InvItemID=9}] run function hp:map/locations/slytherin_common_room
execute if entity @s[scores={InvItemID=10}] run function hp:map/locations/hospital_wing
execute if entity @s[scores={InvItemID=11}] run function hp:map/locations/wooden_bridge
execute if entity @s[scores={InvItemID=12}] run function hp:map/locations/greenhouses
execute if entity @s[scores={InvItemID=13}] run function hp:map/locations/owlery
execute if entity @s[scores={InvItemID=14}] run function hp:map/locations/boat_house
execute if entity @s[scores={InvItemID=15}] run function hp:map/locations/entrance_gates
execute if entity @s[scores={InvItemID=16}] run function hp:map/locations/forbidden_forest
execute if entity @s[scores={InvItemID=17}] run function hp:map/locations/quidditch_pitch
execute if entity @s[scores={InvItemID=18}] run function hp:map/locations/attic
execute if entity @s[scores={InvItemID=19}] run function hp:map/locations/moaning_myrtles_bathroom
execute if entity @s[scores={InvItemID=20}] run function hp:map/locations/headmasters_office
execute if entity @s[scores={InvItemID=21}] run function hp:map/locations/whomping_willow
execute if entity @s[scores={InvItemID=22}] run function hp:map/locations/road_to_hogwarts
execute if entity @s[scores={InvItemID=23}] run function hp:map/locations/training_grounds
execute if entity @s[scores={InvItemID=24}] run function hp:map/locations/clock_tower_courtyard
execute if entity @s[scores={InvItemID=25}] run function hp:map/locations/dungeon_hall
execute if entity @s[scores={InvItemID=26}] run function hp:map/locations/history_of_magic
execute if entity @s[scores={InvItemID=27}] run function hp:map/locations/divination
execute if entity @s[scores={InvItemID=28}] run function hp:map/locations/hogwarts_kitchens
execute if entity @s[scores={InvItemID=29}] run function hp:map/locations/hogwarts_laundry
execute if entity @s[scores={InvItemID=30}] run function hp:map/locations/privet_drive
execute if entity @s[scores={InvItemID=31}] run function hp:map/locations/kings_cross_station
execute if entity @s[scores={InvItemID=32}] run function hp:map/locations/st_pancras_station
execute if entity @s[scores={InvItemID=33}] run function hp:map/locations/big_ben
execute if entity @s[scores={InvItemID=34}] run function hp:map/locations/london_eye
execute if entity @s[scores={InvItemID=35}] run function hp:map/locations/grimmauld_place
execute if entity @s[scores={InvItemID=36}] run function hp:map/locations/godrics_hollow
execute if entity @s[scores={InvItemID=37}] run function hp:map/locations/platform_9_3_4
execute if entity @s[scores={InvItemID=38}] run function hp:map/locations/diagon_alley
execute if entity @s[scores={InvItemID=39}] run function hp:map/locations/the_leaky_cauldron
execute if entity @s[scores={InvItemID=40}] run function hp:map/locations/gringotts
execute if entity @s[scores={InvItemID=41}] run function hp:map/locations/ollivanders
execute if entity @s[scores={InvItemID=42}] run function hp:map/locations/madam_malkins
execute if entity @s[scores={InvItemID=43}] run function hp:map/locations/ministry_of_magic
execute if entity @s[scores={InvItemID=44}] run function hp:map/locations/the_burrow
execute if entity @s[scores={InvItemID=45}] run function hp:map/locations/malfoy_manor
execute if entity @s[scores={InvItemID=46}] run function hp:map/locations/lovegood_residence
execute if entity @s[scores={InvItemID=47}] run function hp:map/locations/durmstrang_ship
execute if entity @s[scores={InvItemID=48}] run function hp:map/locations/hogsmeade_platform
execute if entity @s[scores={InvItemID=49}] run function hp:map/locations/road_to_hogsmeade
execute if entity @s[scores={InvItemID=50}] run function hp:map/locations/hogsmeade_entrance
execute if entity @s[scores={InvItemID=51}] run function hp:map/locations/honeydukes
execute if entity @s[scores={InvItemID=52}] run function hp:map/locations/three_broomsticks_inn
execute if entity @s[scores={InvItemID=53}] run function hp:map/locations/hogs_head_inn
execute if entity @s[scores={InvItemID=54}] run function hp:map/locations/the_shrieking_shack
execute if entity @s[scores={InvItemID=55}] run function hp:map/locations/mirror_of_erised
execute if entity @s[scores={InvItemID=56}] run function hp:map/locations/chamber_of_secrets
execute if entity @s[scores={InvItemID=57}] run function hp:map/locations/honeydukes_passage
execute if entity @s[scores={InvItemID=58}] run function hp:map/locations/whomping_willow_passage
execute if entity @s[scores={InvItemID=59}] run function hp:map/locations/room_of_requirement
execute if entity @s[scores={InvItemID=60}] run function hp:map/locations/flourish_and_blotts
execute if entity @s[scores={InvItemID=61}] run function hp:map/locations/azkaban
execute if entity @s[scores={InvItemID=62}] run function hp:map/locations/the_grand_staircase
execute if entity @s[scores={InvItemID=63}] run function hp:map/locations/transfiguration_classroom
execute if entity @s[scores={InvItemID=64}] run function hp:map/locations/astronomy_tower
execute if entity @s[scores={InvItemID=65}] run function hp:map/locations/transfiguration_courtyard
execute if entity @s[scores={InvItemID=66}] run function hp:map/locations/third_floor_corridor
execute if entity @s[scores={InvItemID=67}] run function hp:map/locations/toad_swamp
execute if entity @s[scores={InvItemID=68}] run function hp:map/locations/hagrids_hut
execute if entity @s[scores={InvItemID=69}] run function hp:map/locations/clock_tower
execute if entity @s[scores={InvItemID=70}] run function hp:map/locations/caretakers_office
execute if entity @s[scores={InvItemID=71}] run function hp:map/locations/knockturn_alley
execute if entity @s[scores={InvItemID=72}] run function hp:map/locations/borgin_and_burkes
execute if entity @s[scores={InvItemID=73}] run function hp:map/locations/spider_lair
execute if entity @s[scores={InvItemID=74}] run function hp:map/locations/sewers
execute if entity @s[scores={InvItemID=75}] run function hp:map/locations/trophy_room

tag 0-0-1-0-1 remove focusInventoryOption
tag 0-0-1-0-2 remove focusInventoryOption
tag 0-0-1-0-3 remove focusInventoryOption
tag 0-0-1-0-4 remove focusInventoryOption
tag 0-0-1-0-5 remove focusInventoryOption
tag 0-0-1-0-6 remove focusInventoryOption