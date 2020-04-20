# Certain things are made easier by having a player serve as the host / leader and control certain things. This makes sure a leader is present at all times (if a player logs out assign a new leader, if two leaders reset the leader, etc.)
tag @a remove gameLeader
scoreboard players set gameLeader tmp 0
execute if score gameLeader tmp matches 0 store success score gameLeader tmp run tag @p[scores={playerID=1}] add gameLeader
execute if score gameLeader tmp matches 0 store success score gameLeader tmp run tag @p[scores={playerID=2}] add gameLeader
execute if score gameLeader tmp matches 0 store success score gameLeader tmp run tag @p[scores={playerID=3}] add gameLeader
execute if score gameLeader tmp matches 0 store success score gameLeader tmp run tag @p[scores={playerID=4}] add gameLeader