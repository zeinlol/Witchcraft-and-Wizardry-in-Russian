# This function "reads" inventories that are stored on custom tags on items, and stores it in the inventory drawing related armorstands

# Since there are only 6 inventory option entities I think it's more performant to reference them individually than to use @e.

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

# Reset purchasing availability
tag 0-0-1-0-1 remove cantAffordItem
tag 0-0-1-0-2 remove cantAffordItem
tag 0-0-1-0-3 remove cantAffordItem
tag 0-0-1-0-4 remove cantAffordItem
tag 0-0-1-0-5 remove cantAffordItem
tag 0-0-1-0-6 remove cantAffordItem

scoreboard players set @p[tag=activePlayer] InvItemNumber 0

scoreboard players reset 00000000-0000-0001-0000-000000000001 InvItemCount
scoreboard players reset 00000000-0000-0001-0000-000000000002 InvItemCount
scoreboard players reset 00000000-0000-0001-0000-000000000003 InvItemCount
scoreboard players reset 00000000-0000-0001-0000-000000000004 InvItemCount
scoreboard players reset 00000000-0000-0001-0000-000000000005 InvItemCount
scoreboard players reset 00000000-0000-0001-0000-000000000006 InvItemCount

# Calculate scroll area
scoreboard players set @p[tag=activePlayer] convMaxView 0


# reset equipment availability
tag @p[tag=activePlayer] remove quickSlot1Available
tag @p[tag=activePlayer] remove quickSlot2Available
tag @p[tag=activePlayer] remove clothesSlot1Available
tag @p[tag=activePlayer] remove clothesSlot2Available
tag @p[tag=activePlayer] remove clothesSlot3Available
tag @p[tag=activePlayer] remove tutorialPurchase

# Check for if the player has a broom in their inventory to prevent them from starting flying quests they cant complete
execute as @s[tag=playerInventory] run tag @p[tag=activePlayer] remove broomInInventory

# Order used to be 1,2,3,4,etc..., but I ended up moving it around a bit to make more sense Current last ID is 146.

# Reset performance check
scoreboard players set @p[tag=activePlayer] invPerfCheck 0

#############
#   Coins   #
#############

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Coins.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 1
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

############
#   Keys   #
############
execute if entity @s[tag=playerInventory] store result score @p[tag=activePlayer] keys run data get entity @s ArmorItems[3].tag."invItem.Key.count"
execute if entity @p[tag=activePlayer,tag=!sell] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Key.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 2
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


###################
#   Wizard Card   #
###################
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.WizardCard.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 71
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

###################
#     Potions     #
###################

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MurtlapEssence.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 3
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PotionOfMagicka.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 4
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ElixirOfLife.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 5
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.StrengthPotion.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 6
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.InvigorationDraught.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 7
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AntidoteToPoisons.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 8
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.EssenceOfGillyweed.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 9
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.InvisibilityPotion.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 10
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

############
#   Food   #
############

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Apple.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 11
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Butterbeer.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 12
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Cheese.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 13
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Cornbread.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 14
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FlavourBeans.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 15
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ChocolateFrog.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 16
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PumpkinPie.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 17
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


#############
#   Tools   #
#############

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BeatersBat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 114
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Axe.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 115
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RustySword.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 116
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FancySword.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 117
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SwordOfGryffindor.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 118
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Sting.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 119
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Dungbomb.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 113
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BasicBroom.count"
execute as @s[tag=playerInventory] as @p[tag=activePlayer,scores={InvItemCount=1..}] run tag @p[tag=activePlayer] add broomInInventory
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 34
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Nimbus2000.count"
execute as @s[tag=playerInventory] as @p[tag=activePlayer,scores={InvItemCount=1..}] run tag @p[tag=activePlayer] add broomInInventory
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 35
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Nimbus2001.count"
execute as @s[tag=playerInventory] as @p[tag=activePlayer,scores={InvItemCount=1..}] run tag @p[tag=activePlayer] add broomInInventory
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 36
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Firebolt.count"
execute as @s[tag=playerInventory] as @p[tag=activePlayer,scores={InvItemCount=1..}] run tag @p[tag=activePlayer] add broomInInventory
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 37
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.InvisibilityCloak.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 38
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.WeatherInABottle.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 110
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FireworksLauncher.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 111
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Omnioculars.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 112
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


###############
#   Clothes   #
###############

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HouseRobe.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 18
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HouseScarf.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 19
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HogwartsStudentHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 20
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SuspenderTrousers.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 25
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TrousersWithPullover.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 26
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TrousersWithBelt.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 27
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BowlerHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 21
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.LimeGreenBowlerHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 157
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TopHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 22
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.StrawHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 23
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Spectacles.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 24
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Spectrespecs.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 45
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FakeMoustache.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 109
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Fez.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 88
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TinyRedFez.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 89
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.QuidditchGoggles.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 102
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ConductorHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 101
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Mask1.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 104
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Mask2.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 105
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Mask3.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 106
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Diadem.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 108
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreyHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 91
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PurpleHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 92
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreenHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 93
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BlueHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 94
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 95
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreyPointedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 96
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PurplePointedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 97
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreenPointedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 98
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BluePointedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 99
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RedPointedHat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 100
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MagicalEye.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 107
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Skull.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 156
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.DeathEaterMask.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 90
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BlueCoat.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 32
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Jacket.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 33
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Cloak.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 31
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.QuidditchGear.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 103
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ArmorHelmet.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 28
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ArmorBreastplate.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 29
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ArmorBases.count"
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 30
execute as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


# The items above need to be read every regardless of whether they are on screen, since they can be equipped or placed in the quickslot, and if they are no longer in the inventory, they need to be removed those places too. 
# The items below can't do that, so I only read them if one of those are in view
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] run function hp:inventory/read_inventory_junk

# Store InvItemID for selected item in InvSelectItemID
execute as 0-0-1-0-1 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID
execute as 0-0-1-0-2 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID
execute as 0-0-1-0-3 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID
execute as 0-0-1-0-4 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID
execute as 0-0-1-0-5 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID
execute as 0-0-1-0-6 if entity @s[tag=selected] run scoreboard players operation @p[tag=activePlayer] InvSelectItemID = @s InvItemID

execute as @p[tag=activePlayer] run function hp:inventory/correction_spaces

# Check equipment availability
execute if entity @s[tag=playerInventory] as @p[tag=activePlayer,tag=!quickSlot1Available] run scoreboard players set @s quickSlot1ID 0
execute if entity @s[tag=playerInventory] as @p[tag=activePlayer,tag=!quickSlot2Available] run scoreboard players set @s quickSlot2ID 0
# Remove clothes if no longer in inventory
execute if entity @s[tag=playerInventory] as @p[tag=activePlayer,tag=!clothesSlot1Available] run scoreboard players set @s clothesSlot1ID 0
execute if entity @s[tag=playerInventory] as @p[tag=activePlayer,tag=!clothesSlot2Available] run scoreboard players set @s clothesSlot2ID 0
execute if entity @s[tag=playerInventory] as @p[tag=activePlayer,tag=!clothesSlot3Available] run scoreboard players set @s clothesSlot3ID 0