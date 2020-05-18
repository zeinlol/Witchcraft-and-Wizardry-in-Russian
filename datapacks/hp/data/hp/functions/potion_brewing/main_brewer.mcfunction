# Like everything else this is based on the inventory system.
execute as @s[tag=enterBrewer] run function hp:potion_brewing/init_brewer
execute as @s[tag=inBrewer,scores={playerID=1}] run function hp:potion_brewing/in_brewer_player1
execute as @s[tag=inBrewer,scores={playerID=2}] run function hp:potion_brewing/in_brewer_player2
execute as @s[tag=inBrewer,scores={playerID=3}] run function hp:potion_brewing/in_brewer_player3
execute as @s[tag=inBrewer,scores={playerID=4}] run function hp:potion_brewing/in_brewer_player4
execute as @s[tag=exitBrewer] run function hp:potion_brewing/exit_brewer