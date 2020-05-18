scoreboard players operation @s money += @s rareBooksMoney
scoreboard players set @s rareBooksMoney 0
scoreboard players set @s rareBooks 0

execute at @s run playsound minecraft:custom.ui.inventory.coin master @a

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.MagicalTheory.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.MagicalTheory.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.MagicalTheory.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.MagicalTheory.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.LivingWithLegilimens.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.LivingWithLegilimens.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.LivingWithLegilimens.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.LivingWithLegilimens.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count" int 1 run scoreboard players set tmp tmp 0

execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count" int 1 run scoreboard players set tmp tmp 0


execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count" int 1 run scoreboard players set tmp tmp 0


execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.TheWitchingHour.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.TheWitchingHour.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.TheWitchingHour.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.TheWitchingHour.count" int 1 run scoreboard players set tmp tmp 0


execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count" int 1 run scoreboard players set tmp tmp 0


execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count" int 1 run scoreboard players set tmp tmp 0


execute as @s[scores={playerID=1}] store result entity 0-0-5-0-1 ArmorItems[3].tag."invItem.TheFlapOfTheCape.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=2}] store result entity 0-0-5-0-2 ArmorItems[3].tag."invItem.TheFlapOfTheCape.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=3}] store result entity 0-0-5-0-3 ArmorItems[3].tag."invItem.TheFlapOfTheCape.count" int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={playerID=4}] store result entity 0-0-5-0-4 ArmorItems[3].tag."invItem.TheFlapOfTheCape.count" int 1 run scoreboard players set tmp tmp 0
