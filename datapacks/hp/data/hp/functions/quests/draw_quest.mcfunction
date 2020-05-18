# This function holds the commands that add nbt to the inventory armorstands such that the quests can be rendered in chat. It works based on the data that has been found in the read_quests function. Inventory armorstands are also used to store quest data

execute as 0-0-1-0-1 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-2 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-3 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-4 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-5 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-6 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-2-0-1 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-2 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-3 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-4 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-5 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-6 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon

execute as 0-0-1-0-1 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID
execute as 0-0-1-0-2 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID
execute as 0-0-1-0-3 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID
execute as 0-0-1-0-4 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID
execute as 0-0-1-0-5 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID
execute as 0-0-1-0-6 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] questID

execute as 0-0-1-0-1 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected
execute as 0-0-1-0-2 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected
execute as 0-0-1-0-3 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected
execute as 0-0-1-0-4 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected
execute as 0-0-1-0-5 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected
execute as 0-0-1-0-6 if entity @s[tag=focusInventoryOption,tag=selected] run tag @p[tag=activePlayer] add focusInventoryOptionIsSelected

scoreboard players operation @s[tag=focusInventoryOptionIsSelected] selectQuestID = @s questID

# Display tracked Quest in quest book
execute if score @s questID = @s trackedQuestID as 0-0-1-0-1 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-1-0-2 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-1-0-3 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-1-0-4 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-1-0-5 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-1-0-6 run tag @s[tag=focusInventoryOption] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-1 run tag @s[tag=focusInventoryIcon] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-2 run tag @s[tag=focusInventoryIcon] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-3 run tag @s[tag=focusInventoryIcon] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-4 run tag @s[tag=focusInventoryIcon] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-5 run tag @s[tag=focusInventoryIcon] add isTrackedQuest
execute if score @s questID = @s trackedQuestID as 0-0-2-0-6 run tag @s[tag=focusInventoryIcon] add isTrackedQuest

# Quests
execute if entity @s[scores={questID=1},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/the_letter_from_no_one/draw
execute if entity @s[scores={questID=1},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_letter_from_no_one/function"}

execute if entity @s[scores={questID=2},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/diagon_alley/draw
execute if entity @s[scores={questID=2},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/diagon_alley/function"}

execute if entity @s[scores={questID=3},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/gringotts_wizarding_bank/draw
execute if entity @s[scores={questID=3},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/gringotts_wizarding_bank/function"}

execute if entity @s[scores={questID=4},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/purchase_wand/draw
execute if entity @s[scores={questID=4},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/purchase_wand/function"}

execute if entity @s[scores={questID=5},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/purchase_books/draw
execute if entity @s[scores={questID=5},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/purchase_books/function"}

execute if entity @s[scores={questID=6},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/purchase_robes/draw
execute if entity @s[scores={questID=6},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/purchase_robes/function"}

execute if entity @s[scores={questID=7},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/platform_9_34/draw
execute if entity @s[scores={questID=7},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/platform_9_34/function"}

execute if entity @s[scores={questID=8},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/arrival_at_hogwarts/draw
execute if entity @s[scores={questID=8},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/arrival_at_hogwarts/function"}

execute if entity @s[scores={questID=9},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/talk_to_gryffindor_prefect/draw
execute if entity @s[scores={questID=9},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/talk_to_gryffindor_prefect/function"}

execute if entity @s[scores={questID=10},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/talk_to_ravenclaw_prefect/draw
execute if entity @s[scores={questID=10},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/talk_to_ravenclaw_prefect/function"}

execute if entity @s[scores={questID=11},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/talk_to_hufflepuff_prefect/draw
execute if entity @s[scores={questID=11},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/talk_to_hufflepuff_prefect/function"}

execute if entity @s[scores={questID=12},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/talk_to_slytherin_prefect/draw
execute if entity @s[scores={questID=12},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/talk_to_slytherin_prefect/function"}

execute if entity @s[scores={questID=13},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt/draw
execute if entity @s[scores={questID=13},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt/function_wrapper"}

execute if entity @s[scores={questID=14},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/lumos/draw
execute if entity @s[scores={questID=14},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/lumos/function_wrapper"}

execute if entity @s[scores={questID=15},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/stupefy/draw
execute if entity @s[scores={questID=15},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/stupefy/function_wrapper"}

execute if entity @s[scores={questID=16},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/brackium_emendo/draw
execute if entity @s[scores={questID=16},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/brackium_emendo/function_wrapper"}

execute if entity @s[scores={questID=17},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/alohomora/draw
execute if entity @s[scores={questID=17},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/alohomora/function_wrapper"}

execute if entity @s[scores={questID=18},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/wingardium_leviosa/draw
execute if entity @s[scores={questID=18},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/wingardium_leviosa/function_wrapper"}

execute if entity @s[scores={questID=19},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/bombarda_maxima/draw
execute if entity @s[scores={questID=19},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/bombarda_maxima/function_wrapper"}

execute if entity @s[scores={questID=20},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/vera_verto/draw
execute if entity @s[scores={questID=20},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/vera_verto/function_wrapper"}

execute if entity @s[scores={questID=21},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/expecto_patronum/draw
execute if entity @s[scores={questID=21},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/expecto_patronum/function_wrapper"}

execute if entity @s[scores={questID=22},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/apparition/draw
execute if entity @s[scores={questID=22},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/apparition/function_wrapper"}

execute if entity @s[scores={questID=23},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/golden_skull/draw
execute if entity @s[scores={questID=23},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/golden_skull/function_wrapper"}

execute if entity @s[scores={questID=24},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/underground_library/draw
execute if entity @s[scores={questID=24},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/underground_library/function_wrapper"}

execute if entity @s[scores={questID=25},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/one_mans_trash/draw
execute if entity @s[scores={questID=25},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/one_mans_trash/function_wrapper"}

execute if entity @s[scores={questID=26},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/flying_lesson/draw
execute if entity @s[scores={questID=26},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/flying_lesson/function"}

execute if entity @s[scores={questID=27},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/herbology/draw
execute if entity @s[scores={questID=27},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/herbology/function"}

execute if entity @s[scores={questID=28},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/potions/draw
execute if entity @s[scores={questID=28},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/potions/function"}

execute if entity @s[scores={questID=29},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/extracurricular_learning/draw
execute if entity @s[scores={questID=29},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/extracurricular_learning/function"}

execute if entity @s[scores={questID=30},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/flying/draw
execute if entity @s[scores={questID=30},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/flying/function"}

execute if entity @s[scores={questID=31},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/monster_book_of_monsters/draw
execute if entity @s[scores={questID=31},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/monster_book_of_monsters/function_wrapper"}

execute if entity @s[scores={questID=32},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/sewer_rats/draw
execute if entity @s[scores={questID=32},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/sewer_rats/function_wrapper"}

execute if entity @s[scores={questID=33},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/unfriendly_competition/draw
execute if entity @s[scores={questID=33},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/unfriendly_competition/function_wrapper"}

execute if entity @s[scores={questID=34},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/the_order_of_the_phoenix/draw
execute if entity @s[scores={questID=34},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_order_of_the_phoenix/function"}

execute if entity @s[scores={questID=35},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/azkaban/draw
execute if entity @s[scores={questID=35},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/azkaban/function"}

execute if entity @s[scores={questID=36},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/the_pensive/draw
execute if entity @s[scores={questID=36},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_pensive/function"}

execute if entity @s[scores={questID=37},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt_2/draw
execute if entity @s[scores={questID=37},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt_2/function_wrapper"}

execute if entity @s[scores={questID=38},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt_3/draw
execute if entity @s[scores={questID=38},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt_3/function_wrapper"}

execute if entity @s[scores={questID=39},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt_4/draw
execute if entity @s[scores={questID=39},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt_4/function_wrapper"}

execute if entity @s[scores={questID=40},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt_5/draw
execute if entity @s[scores={questID=40},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt_5/function_wrapper"}

execute if entity @s[scores={questID=41},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/toad_hunt_6/draw
execute if entity @s[scores={questID=41},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/toad_hunt_6/function_wrapper"}

execute if entity @s[scores={questID=42},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/chamber_of_secrets/draw
execute if entity @s[scores={questID=42},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/chamber_of_secrets/function_wrapper"}

execute if entity @s[scores={questID=43},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/challenge_chambers/draw
execute if entity @s[scores={questID=43},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/challenge_chambers/function_wrapper"}

execute if entity @s[scores={questID=44},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/the_room_of_requirement/draw
execute if entity @s[scores={questID=44},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_room_of_requirement/function_wrapper"}

execute if entity @s[scores={questID=45},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/hogsmeade_letter_delivery/draw
execute if entity @s[scores={questID=45},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/hogsmeade_letter_delivery/function_wrapper"}

execute if entity @s[scores={questID=46},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/burrow_infestation/draw
execute if entity @s[scores={questID=46},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/burrow_infestation/function_wrapper"}

execute if entity @s[scores={questID=47},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/training_ground_toads/draw
execute if entity @s[scores={questID=47},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/training_ground_toads/function_wrapper"}

execute if entity @s[scores={questID=48},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/follow_the_spiders/draw
execute if entity @s[scores={questID=48},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/follow_the_spiders/function_wrapper"}

execute if entity @s[scores={questID=49},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/london_letter_delivery/draw
execute if entity @s[scores={questID=49},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/london_letter_delivery/function_wrapper"}

execute if entity @s[scores={questID=50},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/delinquent_daily_prophet/draw
execute if entity @s[scores={questID=50},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/delinquent_daily_prophet/function_wrapper"}

execute if entity @s[scores={questID=51},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/antic_advertisement/draw
execute if entity @s[scores={questID=51},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/antic_advertisement/function_wrapper"}

execute if entity @s[scores={questID=52},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/postponed_postage/draw
execute if entity @s[scores={questID=52},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/postponed_postage/function_wrapper"}

execute if entity @s[scores={questID=53},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/snowman_supplies/draw
execute if entity @s[scores={questID=53},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/snowman_supplies/function_wrapper"}

execute if entity @s[scores={questID=54},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/the_most_haunted_place_in_britain/draw
execute if entity @s[scores={questID=54},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_most_haunted_place_in_britain/function_wrapper"}

execute if entity @s[scores={questID=55},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/curable_creature_consultation/draw
execute if entity @s[scores={questID=55},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/curable_creature_consultation/function_wrapper"}

execute if entity @s[scores={questID=56},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/snipe_hunt/draw
execute if entity @s[scores={questID=56},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/snipe_hunt/function_wrapper"}

execute if entity @s[scores={questID=57},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/riddle_riches/draw
execute if entity @s[scores={questID=57},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/riddle_riches/function_wrapper"}

execute if entity @s[scores={questID=58},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/dungeon_delving/draw
execute if entity @s[scores={questID=58},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/dungeon_delving/function_wrapper"}

execute if entity @s[scores={questID=59},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/hand_of_glory/draw
execute if entity @s[scores={questID=59},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/hand_of_glory/function_wrapper"}

execute if entity @s[scores={questID=60},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/parchment_poverty/draw
execute if entity @s[scores={questID=60},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/parchment_poverty/function_wrapper"}

execute if entity @s[scores={questID=61},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/submerged_shrub/draw
execute if entity @s[scores={questID=61},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/submerged_shrub/function_wrapper"}

execute if entity @s[scores={questID=62},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/quidditch_squabble/draw
execute if entity @s[scores={questID=62},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/quidditch_squabble/function_wrapper"}

execute if entity @s[scores={questID=63},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/kitchen_raid/draw
execute if entity @s[scores={questID=63},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/kitchen_raid/function_wrapper"}

execute if entity @s[scores={questID=64},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/dubious_divination/draw
execute if entity @s[scores={questID=64},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/dubious_divination/function_wrapper"}

execute if entity @s[scores={questID=65},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/frog_choir_quarrel/draw
execute if entity @s[scores={questID=65},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/frog_choir_quarrel/function_wrapper"}

execute if entity @s[scores={questID=66},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/quidditch_mischief/draw
execute if entity @s[scores={questID=66},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/quidditch_mischief/function_wrapper"}

execute if entity @s[scores={questID=67},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/just_business/draw
execute if entity @s[scores={questID=67},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/just_business/function_wrapper"}

execute if entity @s[scores={questID=68},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/bubotuber_burglary/draw
execute if entity @s[scores={questID=68},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/bubotuber_burglary/function_wrapper"}

execute if entity @s[scores={questID=69},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/demiguise_dodge/draw
execute if entity @s[scores={questID=69},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/demiguise_dodge/function_wrapper"}

execute if entity @s[scores={questID=71},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/a_lovely_letter/draw
execute if entity @s[scores={questID=71},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/a_lovely_letter/function_wrapper"}

execute if entity @s[scores={questID=72},tag=!setupQuests,tag=inQuestBook,tag=!-------------------------------------------------------------] run function hp:quests/quests/illegal_items/draw
execute if entity @s[scores={questID=72},tag=setupQuests] at 0-0-3-0-7 run data merge block ~ ~-1 ~ {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/illegal_items/function_wrapper"}

tag @s remove focusInventoryOptionIsSelected
scoreboard players set @s questID 0
tag 0-0-1-0-1 remove focusInventoryOption
tag 0-0-1-0-2 remove focusInventoryOption
tag 0-0-1-0-3 remove focusInventoryOption
tag 0-0-1-0-4 remove focusInventoryOption
tag 0-0-1-0-5 remove focusInventoryOption
tag 0-0-1-0-6 remove focusInventoryOption
tag 0-0-2-0-1 remove focusInventoryIcon
tag 0-0-2-0-2 remove focusInventoryIcon
tag 0-0-2-0-3 remove focusInventoryIcon
tag 0-0-2-0-4 remove focusInventoryIcon
tag 0-0-2-0-5 remove focusInventoryIcon
tag 0-0-2-0-6 remove focusInventoryIcon