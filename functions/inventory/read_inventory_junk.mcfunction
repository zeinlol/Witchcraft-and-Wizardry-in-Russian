# These are items that don't need to be read unless they are on screen. Things like clothes and quickslot items need to be read so I can make sure they still exist, and remove them if they dont.

#################
#     Books     #
#################
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FantasticBeasts.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 39
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.StandardBookOfSpells.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 40
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MagicalDraftsAndPotions.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 41
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TheDarkForces.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 42
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GuideToTransfiguration.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 43
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TalesOfBeedleBard.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 44
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 126
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AHistoryOfMagic.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 127
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.UnfoggingTheFuture.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 128
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AncientRunesMadeEasy.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 129
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MagicalTheory.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 130
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 131
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TheLadyOfTheLake.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 132
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.LivingWithLegilimens.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 133
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 134
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 135
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 136
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.QuidditchThroughTheAges.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 137
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 138
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TheWitchingHour.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 139
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 140
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GilderoyLockhartsGuideToHouseholdPests.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 141
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PalmistryGuide.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 142
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 143
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TheFlapOfTheCape.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 144
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.WhenMugglesAttack.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 145
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MagicalMe.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 146
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

###################
#   Ingredients   #
###################

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BundleOfFluxweed.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 46
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Gillyweed.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 47
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.CupOfSalt.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 48
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.CupOfSugar.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 49
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BundleOfHair.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 50
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.DemiguiseHair.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 51
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Eyeball.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 52
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.ToadBrain.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 53
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.JarOfLeeches.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 54
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BonePowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 55
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BlackPowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 56
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreenPowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 57
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RedPowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 58
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.YellowPowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 59
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BluePowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 60
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PearlDust.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 61
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.VialOfPuke.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 62
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.DragonBlood.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 63
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.DragonScale.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 64
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.PixieWings.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 149
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RatTail.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 150
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TrollToe.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 151
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.TrollFat.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 158
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MurtlapTentacle.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 152
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FlobberwormMucus.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 153
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AcromantulaVenom.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 154
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


############
#   Junk   #
############

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Flask.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 65
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Vial.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 66
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.String.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 67
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.LinnenCloth.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 68
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Parchment.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 69
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Remembrall.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 70
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.GreenMagicGem.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 72
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.BlueMagicGem.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 73
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.RedMagicGem.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 74
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SilverMug.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 75
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Silverware.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 76
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SilverCandlestick.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 77
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Scissors.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 78
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SelfShufflingPlayingCards.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 120
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.AntiCheatingQuill.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 121
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.SpellCheckingQuill.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 122
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.QuickQuotesQuill.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 123
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.CrystalBall.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 124
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.FlooPowder.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 125
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Bludger.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 147
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.Quaffle.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 148
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper


############
#   Misc   #
############

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HogwartsLetter.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 79
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HogwartsSupplies.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 80
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.HogwartsTicket.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 81
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

###############
#   Secrets   #
###############

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousCoin.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 82
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousPlans.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 83
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousPotato.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 84
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousRing.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 85
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousLetter.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 87
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] InvItemCount run data get entity @s ArmorItems[3].tag."invItem.MysteriousCoconut.count"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run scoreboard players set @p[tag=activePlayer] InvItemID 155
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={InvItemCount=1..}] run function hp:inventory/draw_inventory_item_wrapper