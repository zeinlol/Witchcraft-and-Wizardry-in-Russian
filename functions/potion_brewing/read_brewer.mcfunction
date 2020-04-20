# Reset purchasing availability
tag @s[tag=canAffordItem] remove canAffordItem
tag @s[tag=ingredient1Available] remove ingredient1Available
tag @s[tag=ingredient2Available] remove ingredient2Available
tag @s[tag=ingredient3Available] remove ingredient3Available
tag @s[tag=ingredient4Available] remove ingredient4Available

#######################
#   Murtlap Essence   #
#######################
execute as @s[scores={selectCurrent=1}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfFluxweed.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MurtlapTentacle.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BonePowder.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedPowder.count"
execute as @s[tag=focus,scores={ingredient1=3..}] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=1..}] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..}] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=2..}] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

#########################
#   Potion of Magicka   #
#########################
execute as @s[scores={selectCurrent=2}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PearlDust.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePowder.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSugar.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PixieWings.count"
execute as @s[tag=focus,scores={ingredient1=1..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=2..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

############################
#      Elixir of life      #
############################
execute as @s[scores={selectCurrent=3}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfFluxweed.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonScale.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollToe.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollFat.count"
execute as @s[tag=focus,scores={ingredient1=3..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=1..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

############################
#      Strength Potion     #
############################
execute as @s[scores={selectCurrent=4}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfHair.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.JarOfLeeches.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonBlood.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.YellowPowder.count"
execute as @s[tag=focus,scores={ingredient1=2..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=2..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=2..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

############################
#   Invigoration Draught   #
############################
execute as @s[scores={selectCurrent=5}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenPowder.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSugar.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RatTail.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BonePowder.count"
execute as @s[tag=focus,scores={ingredient1=2..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=2..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

###########################
#   Essnce of Gillyweed   #
###########################
execute as @s[scores={selectCurrent=6}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Gillyweed.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.VialOfPuke.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePowder.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ToadBrain.count"
execute as @s[tag=focus,scores={ingredient1=1..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=1..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=3..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

tag @s remove focus

############################
#   Antidote to poisions   #
############################
execute as @s[scores={selectCurrent=7}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfFluxweed.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSalt.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.JarOfLeeches.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AcromantulaVenom.count"
execute as @s[tag=focus,scores={ingredient1=3..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=2..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=1..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus

############################
#   Invisibility Potion    #
############################
execute as @s[scores={selectCurrent=8}] run tag @s add focus
execute as @s[tag=focus] store result score @s ingredient1 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DemiguiseHair.count"
execute as @s[tag=focus] store result score @s ingredient2 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlobberwormMucus.count"
execute as @s[tag=focus] store result score @s ingredient3 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlackPowder.count"
execute as @s[tag=focus] store result score @s ingredient4 run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Eyeball.count"
execute as @s[tag=focus,scores={ingredient1=1..},tag=!potionBrewingLocked] run tag @s add ingredient1Available
execute as @s[tag=focus,scores={ingredient2=3..},tag=!potionBrewingLocked] run tag @s add ingredient2Available
execute as @s[tag=focus,scores={ingredient3=3..},tag=!potionBrewingLocked] run tag @s add ingredient3Available
execute as @s[tag=focus,scores={ingredient4=1..},tag=!potionBrewingLocked] run tag @s add ingredient4Available
execute as @s[tag=focus,tag=ingredient1Available,tag=ingredient2Available,tag=ingredient3Available,tag=ingredient4Available] run tag @s add canAffordItem
tag @s remove focus
