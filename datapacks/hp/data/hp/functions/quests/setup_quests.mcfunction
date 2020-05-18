tag 0-0-3-0-7 add resetQuests
tag 0-0-3-0-7 add firstCycle
# move quest setup with reset quest tag is a recursive function that resets all the quest command blocks
execute as @s[scores={playerID=1}] run tp 0-0-3-0-7 10010 66 12
execute as @s[scores={playerID=2}] run tp 0-0-3-0-7 10009 66 -8
execute as @s[scores={playerID=3}] run tp 0-0-3-0-7 10008 66 12
execute as @s[scores={playerID=4}] run tp 0-0-3-0-7 10007 66 -8
scoreboard players set 00000000-0000-0003-0000-000000000007 tmp 20
execute as 0-0-3-0-7 at @s run function hp:quests/move_quest_setup

execute as @s[scores={playerID=1}] run tp 0-0-3-0-7 10010 66 12
execute as @s[scores={playerID=2}] run tp 0-0-3-0-7 10009 66 -8
execute as @s[scores={playerID=3}] run tp 0-0-3-0-7 10008 66 12
execute as @s[scores={playerID=4}] run tp 0-0-3-0-7 10007 66 -8

tag @s add setupQuests
# To avoid having to duplicate the commands
scoreboard players set @s questMenu 1
execute if entity @s[scores={playerID=1}] as 0-0-5-0-1 run function hp:quests/read_quests
execute if entity @s[scores={playerID=2}] as 0-0-5-0-2 run function hp:quests/read_quests
execute if entity @s[scores={playerID=3}] as 0-0-5-0-3 run function hp:quests/read_quests
execute if entity @s[scores={playerID=4}] as 0-0-5-0-4 run function hp:quests/read_quests
scoreboard players set @s questMenu 0

# In rare cases something goes wrong and these commands can be overwritten. They are placed here to make sure they always exist
data merge block 10010 65 -8 {Command:"function hp:main/main_wrapper_player1"}
data merge block 10009 65 12 {Command:"function hp:main/main_wrapper_player2"}
data merge block 10008 65 -8 {Command:"function hp:main/main_wrapper_player3"}
data merge block 10007 65 12 {Command:"function hp:main/main_wrapper_player4"}