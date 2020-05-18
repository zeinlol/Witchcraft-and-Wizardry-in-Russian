# This is the second version of this and is built on top of the inventory system like some kind of Frankenstein's monster thing. The first one was built on the normal conversation system, but this is better and it was easier to implement the preview which is suddenly really wanted to do. It's still horrible and messy though.
# It even just uses the inventory option armorstands to save on entities

execute as @s[tag=enterSettings] run function hp:settings/init_settings
execute as @s[tag=inSettings,scores={playerID=1}] run function hp:settings/in_settings_player1
execute as @s[tag=inSettings,scores={playerID=2}] run function hp:settings/in_settings_player2
execute as @s[tag=inSettings,scores={playerID=3}] run function hp:settings/in_settings_player3
execute as @s[tag=inSettings,scores={playerID=4}] run function hp:settings/in_settings_player4
execute as @s[tag=exitSettings] run function hp:settings/exit_settings