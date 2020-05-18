# This is the second version of this and is built on top of the inventory system like some kind of Frankenstein's monster thing. The first one was built on the normal conversation system, but this is better and it was easier to implement the preview which is suddenly really wanted to do. It's still horrible and messy though.
# It even just uses the inventory option armorstands to save on entities

execute as @s[tag=openMap] run function hp:map/init_map
execute as @s[tag=inMap,scores={playerID=1}] run function hp:map/in_map_player1
execute as @s[tag=inMap,scores={playerID=2}] run function hp:map/in_map_player2
execute as @s[tag=inMap,scores={playerID=3}] run function hp:map/in_map_player3
execute as @s[tag=inMap,scores={playerID=4}] run function hp:map/in_map_player4
execute as @s[tag=exitInventory] run function hp:map/exit_map
