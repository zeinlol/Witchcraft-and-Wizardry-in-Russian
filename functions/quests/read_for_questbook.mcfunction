# Reset scrolling:
scoreboard players set 00000000-0000-0001-0000-000000000001 InvItemNumber 1
scoreboard players set 00000000-0000-0001-0000-000000000002 InvItemNumber 2
scoreboard players set 00000000-0000-0001-0000-000000000003 InvItemNumber 3
scoreboard players set 00000000-0000-0001-0000-000000000004 InvItemNumber 4
scoreboard players set 00000000-0000-0001-0000-000000000005 InvItemNumber 5
scoreboard players set 00000000-0000-0001-0000-000000000006 InvItemNumber 6
scoreboard players set 00000000-0000-0002-0000-000000000001 InvItemNumber 1
scoreboard players set 00000000-0000-0002-0000-000000000002 InvItemNumber 2
scoreboard players set 00000000-0000-0002-0000-000000000003 InvItemNumber 3
scoreboard players set 00000000-0000-0002-0000-000000000004 InvItemNumber 4
scoreboard players set 00000000-0000-0002-0000-000000000005 InvItemNumber 5
scoreboard players set 00000000-0000-0002-0000-000000000006 InvItemNumber 6
# Scroll offset:
scoreboard players operation 00000000-0000-0001-0000-000000000001 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0001-0000-000000000002 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0001-0000-000000000003 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0001-0000-000000000004 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0001-0000-000000000005 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0001-0000-000000000006 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000001 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000002 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000003 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000004 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000005 InvItemNumber += @p[tag=activePlayer] InvScroll
scoreboard players operation 00000000-0000-0002-0000-000000000006 InvItemNumber += @p[tag=activePlayer] InvScroll

# Set active
tag 0-0-1-0-1 remove selected
tag 0-0-1-0-2 remove selected
tag 0-0-1-0-3 remove selected
tag 0-0-1-0-4 remove selected
tag 0-0-1-0-5 remove selected
tag 0-0-1-0-6 remove selected

execute as 0-0-1-0-1 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-2 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-3 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-4 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-5 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-6 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected

# Reset names:
data merge entity 0-0-1-0-1 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-1-0-2 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-1-0-3 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-1-0-4 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-1-0-5 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-1-0-6 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-1 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-2 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-3 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-4 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-5 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
data merge entity 0-0-2-0-6 {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}

scoreboard players set @p[tag=activePlayer] InvItemNumber 0
scoreboard players reset 0-0-1-0-1 questState
scoreboard players reset 0-0-1-0-2 questState
scoreboard players reset 0-0-1-0-3 questState
scoreboard players reset 0-0-1-0-4 questState
scoreboard players reset 0-0-1-0-5 questState
scoreboard players reset 0-0-1-0-6 questState
# Calculate scroll area
scoreboard players set @p[tag=activePlayer] convMaxView 0