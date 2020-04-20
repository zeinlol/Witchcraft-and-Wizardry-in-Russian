# Certain things are made easier by having a player serve as the host / leader and control certain things. This makes sure a leader is present at all times (if a player logs out assign a new leader, if two leaders reset the leader, etc.)
scoreboard players set gameLeader tmp 0
execute as @a[tag=gameLeader] run scoreboard players add gameLeader tmp 1
execute unless score gameLeader tmp matches 1 run function hp:main/assign_new_game_leader