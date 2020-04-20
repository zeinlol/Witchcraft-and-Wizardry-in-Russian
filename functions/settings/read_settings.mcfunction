# Reset scrolling:
scoreboard players set 00000000-0000-0001-0000-000000000001 InvItemNumber 1
scoreboard players set 00000000-0000-0001-0000-000000000002 InvItemNumber 2
scoreboard players set 00000000-0000-0001-0000-000000000003 InvItemNumber 3
scoreboard players set 00000000-0000-0001-0000-000000000004 InvItemNumber 4
scoreboard players set 00000000-0000-0001-0000-000000000005 InvItemNumber 5
scoreboard players set 00000000-0000-0001-0000-000000000006 InvItemNumber 6

# Scroll offset:
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000001 InvItemNumber += @p[tag=activePlayer] settingsScroll
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000002 InvItemNumber += @p[tag=activePlayer] settingsScroll
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000003 InvItemNumber += @p[tag=activePlayer] settingsScroll
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000004 InvItemNumber += @p[tag=activePlayer] settingsScroll
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000005 InvItemNumber += @p[tag=activePlayer] settingsScroll
execute unless score @s convState matches 1 run scoreboard players operation 00000000-0000-0001-0000-000000000006 InvItemNumber += @p[tag=activePlayer] settingsScroll

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



scoreboard players set @s InvItemNumber 0
# Calculate scroll area
execute if score @s convState matches 1 run scoreboard players set @s convMaxView 185
execute unless score @s convState matches 1 run scoreboard players set @s convMaxView 0

#################################
#         Categories            #
#################################

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -1
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -2
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -3
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -4
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -5
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -6
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -7
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

execute as @s[scores={convState=0}] run scoreboard players set @s InvItemID -8
execute as @s[scores={convState=0}] run function hp:settings/draw_setting

################################
#         credits              #
################################
# Kind of an akward way to do this but oh well. It supports scrolling easily

# Reset performance check
scoreboard players set @s invPerfCheck 1
scoreboard players operation @s invPerfCheck -= @s settingsScroll

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 1
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 2
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 3
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 4
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 5
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 6
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 7
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 8
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 9
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 10
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 11
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 12
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 13
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 14
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 15
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 16
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 17
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 18
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 19
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 20
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 21
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 22
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 23
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 24
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 25
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 26
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 27
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 28
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 29
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 30
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 31
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 32
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 33
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 34
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 35
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 36
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 37
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 38
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 39
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 40
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 41
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 42
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 43
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 44
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 45
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 46
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 47
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 48
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 49
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 50
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 51
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 52
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 53
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 54
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 55
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 56
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 57
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 58
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 59
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 60
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 61
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 62
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 63
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 64
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 65
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 66
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 67
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 68
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 69
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 70
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 71
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 72
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 73
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 74
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 75
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 76
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 77
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 78
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 79
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 80
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 81
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 82
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 83
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 84
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 85
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 86
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 87
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 88
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 89
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 90
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 91
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 92
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 93
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 94
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 95
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 96
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 97
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 98
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 99
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 100
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 101
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 102
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 103
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 104
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 105
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 106
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 107
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 108
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 109
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 110
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 111
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 112
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 113
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 114
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 115
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 116
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 117
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 118
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 119
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 120
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 121
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 122
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 123
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 124
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 125
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 126
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 127
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 128
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 129
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 130
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 131
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 132
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 133
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 134
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 135
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 136
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 137
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 138
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 139
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 140
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 141
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 142
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 143
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 144
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 145
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 146
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 147
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 148
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 149
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 150
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 151
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 152
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 153
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 154
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 155
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 156
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 157
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 158
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 159
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 160
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 161
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 162
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 163
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 164
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 165
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 166
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 167
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 168
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 169
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 170
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 171
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 172
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 173
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 174
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 175
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 176
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 177
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 178
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 179
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 180
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 181
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 182
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 183
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 184
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute as @s[scores={convState=1,invPerfCheck=1..6}] run scoreboard players set @s InvItemID 185
execute as @s[scores={convState=1,invPerfCheck=1..6}] run function hp:settings/draw_setting
scoreboard players add @s invPerfCheck 1

execute store result score @s[scores={convState=1..},tag=!invInspectItem] InvSelectItemID run scoreboard players get @e[tag=inventoryOption,tag=selected,limit=1] InvItemID
scoreboard players set @s[scores={convState=0}] InvSelectItemID 0