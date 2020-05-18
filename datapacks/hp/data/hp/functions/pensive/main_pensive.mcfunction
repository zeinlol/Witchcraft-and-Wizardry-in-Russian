# Like everything else this is based on the inventory system.
execute as @s[tag=enterPensive] run function hp:pensive/init_pensive
execute as @s[tag=inPensive,scores={playerID=1}] run function hp:pensive/in_pensive_player1
execute as @s[tag=inPensive,scores={playerID=2}] run function hp:pensive/in_pensive_player2
execute as @s[tag=inPensive,scores={playerID=3}] run function hp:pensive/in_pensive_player3
execute as @s[tag=inPensive,scores={playerID=4}] run function hp:pensive/in_pensive_player4
execute as @s[tag=exitPensive] run function hp:pensive/exit_pensive