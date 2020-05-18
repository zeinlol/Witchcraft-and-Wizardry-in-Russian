scoreboard players set @s[tag=specatePlayer1] playerID 1
scoreboard players set @s[tag=specatePlayer2] playerID 2
scoreboard players set @s[tag=specatePlayer3] playerID 3
scoreboard players set @s[tag=specatePlayer4] playerID 4

tag @s remove specatePlayer1
tag @s remove specatePlayer2
tag @s remove specatePlayer3
tag @s remove specatePlayer4

tag @s add inGame
tag @s add play

tag @s remove spectate
tag @s remove exploreMode

gamemode adventure