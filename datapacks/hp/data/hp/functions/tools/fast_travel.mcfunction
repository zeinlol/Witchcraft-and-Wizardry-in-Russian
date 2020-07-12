

scoreboard players remove @s[scores={fastTravelTimer=1..}] fastTravelTimer 1

# stopsound @s[scores={fastTravelTimer=1..}] ambient
# stopsound @s[scores={fastTravelTimer=1..}] block
# stopsound @s[scores={fastTravelTimer=1..}] hostile
# stopsound @s[scores={fastTravelTimer=1..}] master
# stopsound @s[scores={fastTravelTimer=1..}] music
# stopsound @s[scores={fastTravelTimer=1..}] neutral
# stopsound @s[scores={fastTravelTimer=1..}] player
# stopsound @s[scores={fastTravelTimer=1..}] record
# stopsound @s[scores={fastTravelTimer=1..}] voice
execute as @s[scores={fastTravelTimer=69}] run function hp:tools/fast_travel_move_player_to_new_transform
execute as @s[scores={fastTravelTimer=69}] run function hp:misc/update_bossbars

execute as @s[scores={fastTravelTimer=85}] run title @s times 20 35 20
execute as @s[scores={fastTravelTimer=85}] run function hp:tools/fast_travel_name
execute as @s[scores={fastTravelTimer=85}] run title @s title {"text":"Отправление","color":"gray"}

# im too lazy to add seperate tags and change all the reference. these refer to map and conversation, and have nothing to do with inventory.
tag @s[tag=inMap,scores={fastTravelTimer=1}] add exitInventory
tag @s[tag=inConversation,scores={fastTravelTimer=1}] add exitConversation


tag @s[scores={fastTravelTimer=1}] remove isFastTravelling

tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={fastTravelTimer=2,trackedQuestID=1..}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={fastTravelTimer=2,trackedQuestID=1..}] add showTrackedQuest