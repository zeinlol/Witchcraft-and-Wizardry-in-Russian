# say relogged


scoreboard players set @s leave 0

# Health isn't stored properly >:I This means the system thinks the player is dead whenever they relog
# Instant health is given every tick while relogTimer decays. Also prevents the respawn system from believing you are dead.
scoreboard players set @s relogTimer 20

# Reset ambience
scoreboard players set @s ambientTime 0

# Update health bossbar
execute as @s[scores={playerID=1}] run function hp:health/health_changed_player1
execute as @s[scores={playerID=2}] run function hp:health/health_changed_player2
execute as @s[scores={playerID=3}] run function hp:health/health_changed_player3
execute as @s[scores={playerID=4}] run function hp:health/health_changed_player4

# Fix most things that might break
execute as @s[tag=inConversation] run function hp:conversation/exit_conversation
execute as @s[tag=inInventory] run function hp:inventory/exit_inventory
execute as @s[tag=inMap] run function hp:map/exit_map
execute as @s[tag=inSettings] run function hp:settings/exit_settings
execute as @s[tag=inQuestBook] run function hp:quests/exit_questbook
execute as @s[tag=inBrewer] run function hp:potion_brewing/exit_brewer
execute as @s[tag=inPensive] run function hp:pensive/exit_pensive
execute as @s[tag=inLetter] run function hp:misc/read_hogwarts_letter/exit_read_hogwarts_letter

function hp:misc/update_bossbars