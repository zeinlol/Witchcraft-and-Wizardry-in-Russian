# This function "reads" what locations are unlocked, whic is stored in custom tags on items, and stores it in the map drawing related armorstands

# Since there are only 6 inventory option entities I think it's more performant to reference them individually than to use @e.

# Reset scrolling:
scoreboard players set 00000000-0000-0001-0000-000000000001 InvItemNumber 1
scoreboard players set 00000000-0000-0001-0000-000000000002 InvItemNumber 2
scoreboard players set 00000000-0000-0001-0000-000000000003 InvItemNumber 3
scoreboard players set 00000000-0000-0001-0000-000000000004 InvItemNumber 4
scoreboard players set 00000000-0000-0001-0000-000000000005 InvItemNumber 5
scoreboard players set 00000000-0000-0001-0000-000000000006 InvItemNumber 6

# Scroll offset:
scoreboard players operation 00000000-0000-0001-0000-000000000001 InvItemNumber += @p[tag=activePlayer] mapScroll
scoreboard players operation 00000000-0000-0001-0000-000000000002 InvItemNumber += @p[tag=activePlayer] mapScroll
scoreboard players operation 00000000-0000-0001-0000-000000000003 InvItemNumber += @p[tag=activePlayer] mapScroll
scoreboard players operation 00000000-0000-0001-0000-000000000004 InvItemNumber += @p[tag=activePlayer] mapScroll
scoreboard players operation 00000000-0000-0001-0000-000000000005 InvItemNumber += @p[tag=activePlayer] mapScroll
scoreboard players operation 00000000-0000-0001-0000-000000000006 InvItemNumber += @p[tag=activePlayer] mapScroll

# Reset names:
data merge entity 0-0-1-0-1 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-2 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-3 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-4 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-5 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}
data merge entity 0-0-1-0-6 {CustomName:"{\"text\":\"\",\"color\":\"white\"}",Tags:["inventoryOption"]}

# Set active
execute as 0-0-1-0-1 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-2 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-3 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-4 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-5 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected
execute as 0-0-1-0-6 if score @s InvItemNumber = @p[tag=activePlayer] selectCurrent run tag @s add selected


scoreboard players set @p[tag=activePlayer] InvItemNumber 0

# Calculate scroll area
scoreboard players set @p[tag=activePlayer] convMaxView 0

#################################
#         Categories            #
#################################
# Reset performance check
scoreboard players set @p[tag=activePlayer] invPerfCheck 0


# Reading is split into functions for performance
execute if entity @p[tag=activePlayer,scores={convState=0}] run function hp:map/read_convstate_0
execute if entity @p[tag=activePlayer,scores={convState=1}] run function hp:map/read_convstate_1
execute if entity @p[tag=activePlayer,scores={convState=2}] run function hp:map/read_convstate_2
execute if entity @p[tag=activePlayer,scores={convState=3}] run function hp:map/read_convstate_3
execute if entity @p[tag=activePlayer,scores={convState=4}] run function hp:map/read_convstate_4
execute if entity @p[tag=activePlayer,scores={convState=5}] run function hp:map/read_convstate_5

execute store result score @p[tag=activePlayer,scores={convState=1..},tag=!invInspectItem] InvSelectItemID run scoreboard players get @e[type=armor_stand,tag=inventoryOption,tag=selected,limit=1] InvItemID
scoreboard players set @p[tag=activePlayer,scores={convState=0}] InvSelectItemID 0