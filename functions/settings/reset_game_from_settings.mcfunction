# Clear any player funkiness
execute as @s[tag=inConversation] run function hp:conversation/exit_conversation
execute as @s[tag=inInventory] run function hp:inventory/exit_inventory
execute as @s[tag=inMap] run function hp:map/exit_map
execute as @s[tag=inSettings] run function hp:settings/exit_settings
execute as @s[tag=inQuestBook] run function hp:quests/exit_questbook
execute as @s[tag=inBrewer] run function hp:potion_brewing/exit_brewer
execute as @s[tag=inPensive] run function hp:pensive/exit_pensive
execute as @s[tag=inLetter] run function hp:misc/read_hogwarts_letter/exit_read_hogwarts_letter
execute as @s[tag=inWingardium] run tag @s add wingardiumExit
execute as @s[tag=inAppiration] run tag @s add exitApparition
# Reset game
function hp:setup/reset_game