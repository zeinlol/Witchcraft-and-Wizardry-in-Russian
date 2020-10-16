################################
# Used to simplify multiplayer #
################################
execute as @p[tag=activePlayer,tag=inGame] run function hp:main/main
tag @p[scores={playerID=3}] add activePlayer


# If the player is in conversation read the conversation to allow for injection of conversation options that relate to quests.
execute as @p[tag=activePlayer,tag=inConversation] run function hp:conversation/in_conversation_test

# Find available quests
execute as @p[tag=activePlayer] run function hp:quests/available_quests/main_available_quests

# Akward but simple fix because I didn't properly consider multiplayer when first doing the inventory system
execute as @e[type=!item_frame,tag=inventory,limit=1] run function hp:main/wrapper_performance/main_p2_inventory
execute as @e[type=!item_frame,tag=disabledPlayer3Inventory,limit=1] run function hp:main/wrapper_performance/main_p2_disabled_inventory


# Hover
# execute as @e[type=!item_frame,tag=hover,limit=1] run tag @s add previousPlayerHover

# Map
tag 0-0-5-0-2 remove map
tag 0-0-5-0-3 add map
# Quests
tag 0-0-5-0-2 remove questHolder
tag 0-0-5-0-3 add questHolder

# Creature target
execute as @e[type=!item_frame,tag=bossBarCreatureFocus,limit=1] run function hp:main/wrapper_performance/main_p2_creature_focus
execute as @e[type=!item_frame,tag=disabledPlayer3bossBarCreatureFocus,limit=1] run function hp:main/wrapper_performance/main_p2_disabled_creature_focus