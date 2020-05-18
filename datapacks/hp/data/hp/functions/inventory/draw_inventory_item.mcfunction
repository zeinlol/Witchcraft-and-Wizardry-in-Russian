# This function holds the commands that add nbt to the inventory armorstands such that the inventory can be rendered in chat. It works based on the data that has been found in the read_inventory function

execute as 0-0-1-0-1 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-2 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-3 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-4 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-5 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-1-0-6 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryOption
execute as 0-0-2-0-1 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-2 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-3 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-4 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-5 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon
execute as 0-0-2-0-6 if score @s InvItemNumber = @p[tag=activePlayer] InvItemNumber run tag @s add focusInventoryIcon

execute as 0-0-1-0-1 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-2 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-3 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-4 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-5 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-6 run scoreboard players operation @s[tag=focusInventoryOption] InvItemCount = @p[tag=activePlayer] InvItemCount
execute as 0-0-1-0-1 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-2 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-3 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-4 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-5 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID
execute as 0-0-1-0-6 run scoreboard players operation @s[tag=focusInventoryOption] InvItemID = @p[tag=activePlayer] InvItemID

# Has not unlocked Trading Yet
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-1 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-2 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-3 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-4 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-5 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=hasNotUnlockedTrading,tag=buy] as 0-0-1-0-6 run tag @s[tag=focusInventoryOption] add cantAffordItem

# Has Not Unlocked Broom Yet
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-1 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-2 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-3 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-4 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-5 run tag @s[tag=focusInventoryOption] add cantAffordItem
execute if entity @s[tag=!hasLearnedToFly,scores={InvItemID=34..37},tag=buy] as 0-0-1-0-6 run tag @s[tag=focusInventoryOption] add cantAffordItem
##########
# Items  #
##########
# At first all of this was in this single function, but it was moved to seperate functions for optimisation reasons. That's generally a pretty good way to optimise, and I should probably do it more places than I actually do.
# if I were to remake this system I'd attempt to collect all the functionality (reading, giving, drawing, writing in chat) in a single function file to make it easier to add new items.
# I further optimized it by splitting it into a tree structure so I only need to check for 1/4 of the options
execute if entity @s[scores={InvItemID=1..75}] run function hp:inventory/performance/split1
execute if entity @s[scores={InvItemID=76..158}] run function hp:inventory/performance/split2

tag 0-0-1-0-1 remove focusInventoryOption
tag 0-0-1-0-2 remove focusInventoryOption
tag 0-0-1-0-3 remove focusInventoryOption
tag 0-0-1-0-4 remove focusInventoryOption
tag 0-0-1-0-5 remove focusInventoryOption
tag 0-0-1-0-6 remove focusInventoryOption
tag 0-0-2-0-1 remove focusInventoryIcon
tag 0-0-2-0-2 remove focusInventoryIcon
tag 0-0-2-0-3 remove focusInventoryIcon
tag 0-0-2-0-4 remove focusInventoryIcon
tag 0-0-2-0-5 remove focusInventoryIcon
tag 0-0-2-0-6 remove focusInventoryIcon