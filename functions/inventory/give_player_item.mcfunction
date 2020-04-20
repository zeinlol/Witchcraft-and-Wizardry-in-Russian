# First the number of the item being given that the player already has is stored in tmp score
# Number of given (or removed) items are added to the score
# The new tmp score is stored in invItem.(item).count

scoreboard players set @s tmp 0

# execute as @s[scores={InvItemID=1}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Coins.count"
# execute as @s[scores={InvItemID=1}] run scoreboard players operation @s tmp += @s InvItemCount
# execute as @s[scores={InvItemID=1}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Coins.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=1}] if entity @e[tag=inventory,tag=chest,limit=1] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Coins.count"
execute as @s[scores={InvItemID=1}] if entity @e[tag=inventory,tag=chest,limit=1] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=1}] if entity @e[tag=inventory,tag=chest,limit=1] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Coins.count" int 1 run scoreboard players get @s tmp
execute as @s[scores={InvItemID=1}] if entity @e[tag=inventory,tag=!chest,limit=1] run scoreboard players operation @s money += @s InvItemCount

execute as @s[scores={InvItemID=2}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Key.count"
execute as @s[scores={InvItemID=2}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=2}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=3}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MurtlapEssence.count"
execute as @s[scores={InvItemID=3}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=3}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MurtlapEssence.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=4}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PotionOfMagicka.count"
execute as @s[scores={InvItemID=4}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=4}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PotionOfMagicka.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=5}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ElixirOfLife.count"
execute as @s[scores={InvItemID=5}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=5}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ElixirOfLife.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=6}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StrengthPotion.count"
execute as @s[scores={InvItemID=6}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=6}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StrengthPotion.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=7}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvigorationDraught.count"
execute as @s[scores={InvItemID=7}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=7}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvigorationDraught.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=8}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AntidoteToPoisons.count"
execute as @s[scores={InvItemID=8}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=8}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AntidoteToPoisons.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=9}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.EssenceOfGillyweed.count"
execute as @s[scores={InvItemID=9}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=9}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.EssenceOfGillyweed.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=10}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvisibilityPotion.count"
execute as @s[scores={InvItemID=10}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=10}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvisibilityPotion.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=11}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Apple.count"
execute as @s[scores={InvItemID=11}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=11}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Apple.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=12}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Butterbeer.count"
execute as @s[scores={InvItemID=12}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=12}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Butterbeer.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=13}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cheese.count"
execute as @s[scores={InvItemID=13}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=13}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cheese.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=14}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cornbread.count"
execute as @s[scores={InvItemID=14}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=14}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cornbread.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=15}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlavourBeans.count"
execute as @s[scores={InvItemID=15}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=15}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlavourBeans.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=16}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ChocolateFrog.count"
execute as @s[scores={InvItemID=16}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=16}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ChocolateFrog.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=17}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PumpkinPie.count"
execute as @s[scores={InvItemID=17}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=17}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PumpkinPie.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=18}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HouseRobe.count"
execute as @s[scores={InvItemID=18}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=18}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HouseRobe.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=19}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HouseScarf.count"
execute as @s[scores={InvItemID=19}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=19}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HouseScarf.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=20}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsStudentHat.count"
execute as @s[scores={InvItemID=20}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=20}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsStudentHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=21}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BowlerHat.count"
execute as @s[scores={InvItemID=21}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=21}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BowlerHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=22}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TopHat.count"
execute as @s[scores={InvItemID=22}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=22}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TopHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=23}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StrawHat.count"
execute as @s[scores={InvItemID=23}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=23}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StrawHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=24}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Spectacles.count"
execute as @s[scores={InvItemID=24}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=24}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Spectacles.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=25}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SuspenderTrousers.count"
execute as @s[scores={InvItemID=25}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=25}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SuspenderTrousers.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=26}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrousersWithPullover.count"
execute as @s[scores={InvItemID=26}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=26}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrousersWithPullover.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=27}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrousersWithBelt.count"
execute as @s[scores={InvItemID=27}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=27}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrousersWithBelt.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=28}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorHelmet.count"
execute as @s[scores={InvItemID=28}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=28}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorHelmet.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=29}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorBreastplate.count"
execute as @s[scores={InvItemID=29}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=29}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorBreastplate.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=30}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorBases.count"
execute as @s[scores={InvItemID=30}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=30}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmorBases.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=31}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cloak.count"
execute as @s[scores={InvItemID=31}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=31}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Cloak.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=32}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueCoat.count"
execute as @s[scores={InvItemID=32}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=32}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueCoat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=33}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Jacket.count"
execute as @s[scores={InvItemID=33}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=33}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Jacket.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=34}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BasicBroom.count"
execute as @s[scores={InvItemID=34}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=34}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BasicBroom.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=35}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Nimbus2000.count"
execute as @s[scores={InvItemID=35}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=35}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Nimbus2000.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=36}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Nimbus2001.count"
execute as @s[scores={InvItemID=36}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=36}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Nimbus2001.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=37}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Firebolt.count"
execute as @s[scores={InvItemID=37}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=37}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Firebolt.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=38}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvisibilityCloak.count"
execute as @s[scores={InvItemID=38}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=38}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.InvisibilityCloak.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=39}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FantasticBeasts.count"
execute as @s[scores={InvItemID=39}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=39}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FantasticBeasts.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=40}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StandardBookOfSpells.count"
execute as @s[scores={InvItemID=40}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=40}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.StandardBookOfSpells.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=41}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalDraftsAndPotions.count"
execute as @s[scores={InvItemID=41}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=41}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalDraftsAndPotions.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=42}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheDarkForces.count"
execute as @s[scores={InvItemID=42}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=42}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheDarkForces.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=43}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GuideToTransfiguration.count"
execute as @s[scores={InvItemID=43}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=43}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GuideToTransfiguration.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=44}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TalesOfBeedleBard.count"
execute as @s[scores={InvItemID=44}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=44}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TalesOfBeedleBard.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=45}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Spectrespecs.count"
execute as @s[scores={InvItemID=45}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=45}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Spectrespecs.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=46}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfFluxweed.count"
execute as @s[scores={InvItemID=46}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=46}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfFluxweed.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=47}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Gillyweed.count"
execute as @s[scores={InvItemID=47}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=47}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Gillyweed.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=48}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSalt.count"
execute as @s[scores={InvItemID=48}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=48}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSalt.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=49}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSugar.count"
execute as @s[scores={InvItemID=49}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=49}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CupOfSugar.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=50}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfHair.count"
execute as @s[scores={InvItemID=50}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=50}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BundleOfHair.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=51}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DemiguiseHair.count"
execute as @s[scores={InvItemID=51}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=51}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DemiguiseHair.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=52}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Eyeball.count"
execute as @s[scores={InvItemID=52}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=52}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Eyeball.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=53}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ToadBrain.count"
execute as @s[scores={InvItemID=53}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=53}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ToadBrain.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=54}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.JarOfLeeches.count"
execute as @s[scores={InvItemID=54}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=54}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.JarOfLeeches.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=55}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BonePowder.count"
execute as @s[scores={InvItemID=55}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=55}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BonePowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=56}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlackPowder.count"
execute as @s[scores={InvItemID=56}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=56}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlackPowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=57}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenPowder.count"
execute as @s[scores={InvItemID=57}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=57}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenPowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=58}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedPowder.count"
execute as @s[scores={InvItemID=58}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=58}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedPowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=59}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.YellowPowder.count"
execute as @s[scores={InvItemID=59}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=59}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.YellowPowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=60}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePowder.count"
execute as @s[scores={InvItemID=60}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=60}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=61}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PearlDust.count"
execute as @s[scores={InvItemID=61}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=61}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PearlDust.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=62}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.VialOfPuke.count"
execute as @s[scores={InvItemID=62}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=62}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.VialOfPuke.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=63}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonBlood.count"
execute as @s[scores={InvItemID=63}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=63}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonBlood.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=64}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonScale.count"
execute as @s[scores={InvItemID=64}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=64}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DragonScale.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=65}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Flask.count"
execute as @s[scores={InvItemID=65}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=65}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Flask.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=66}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Vial.count"
execute as @s[scores={InvItemID=66}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=66}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Vial.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=67}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.String.count"
execute as @s[scores={InvItemID=67}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=67}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.String.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=68}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LinnenCloth.count"
execute as @s[scores={InvItemID=68}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=68}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LinnenCloth.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=69}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Parchment.count"
execute as @s[scores={InvItemID=69}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=69}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Parchment.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=70}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Remembrall.count"
execute as @s[scores={InvItemID=70}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=70}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Remembrall.count" int 1 run scoreboard players get @s tmp

# execute as @s[scores={InvItemID=71}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WizardCard.count"
# execute as @s[scores={InvItemID=71}] run scoreboard players operation @s tmp += @s InvItemCount
# execute as @s[scores={InvItemID=71}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WizardCard.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=71}] if entity @e[tag=inventory,tag=chest,limit=1] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WizardCard.count"
execute as @s[scores={InvItemID=71}] if entity @e[tag=inventory,tag=chest,limit=1] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=71}] if entity @e[tag=inventory,tag=chest,limit=1] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WizardCard.count" int 1 run scoreboard players get @s tmp
execute as @s[scores={InvItemID=71}] if entity @e[tag=inventory,tag=!chest,limit=1] run scoreboard players operation global wizardCards += @s InvItemCount
execute as @s[scores={InvItemID=71}] if entity @e[tag=inventory,tag=!chest,limit=1] at @s run playsound minecraft:custom.ui.learn.spell_learned master @s

execute as @s[scores={InvItemID=72}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenMagicGem.count"
execute as @s[scores={InvItemID=72}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=72}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenMagicGem.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=73}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueMagicGem.count"
execute as @s[scores={InvItemID=73}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=73}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueMagicGem.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=74}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedMagicGem.count"
execute as @s[scores={InvItemID=74}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=74}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedMagicGem.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=75}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SilverMug.count"
execute as @s[scores={InvItemID=75}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=75}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SilverMug.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=76}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Silverware.count"
execute as @s[scores={InvItemID=76}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=76}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Silverware.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=77}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SilverCandlestick.count"
execute as @s[scores={InvItemID=77}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=77}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SilverCandlestick.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=78}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Scissors.count"
execute as @s[scores={InvItemID=78}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=78}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Scissors.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=79}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsLetter.count"
execute as @s[scores={InvItemID=79}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=79}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsLetter.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=80}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsSupplies.count"
execute as @s[scores={InvItemID=80}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=80}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsSupplies.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=81}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsTicket.count"
execute as @s[scores={InvItemID=81}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=81}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.HogwartsTicket.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=82}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousCoin.count"
execute as @s[scores={InvItemID=82}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=82}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousCoin.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=83}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousPlans.count"
execute as @s[scores={InvItemID=83}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=83}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousPlans.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=84}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousPotato.count"
execute as @s[scores={InvItemID=84}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=84}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousPotato.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=85}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousRing.count"
execute as @s[scores={InvItemID=85}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=85}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousRing.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=86}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousSandal.count"
execute as @s[scores={InvItemID=86}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=86}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousSandal.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=87}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousLetter.count"
execute as @s[scores={InvItemID=87}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=87}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousLetter.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=88}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Fez.count"
execute as @s[scores={InvItemID=88}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=88}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Fez.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=89}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TinyRedFez.count"
execute as @s[scores={InvItemID=89}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=89}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TinyRedFez.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=90}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DeathEaterMask.count"
execute as @s[scores={InvItemID=90}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=90}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.DeathEaterMask.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=91}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreyHat.count"
execute as @s[scores={InvItemID=91}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=91}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreyHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=92}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PurpleHat.count"
execute as @s[scores={InvItemID=92}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=92}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PurpleHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=93}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenHat.count"
execute as @s[scores={InvItemID=93}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=93}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=94}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueHat.count"
execute as @s[scores={InvItemID=94}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=94}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BlueHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=95}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedHat.count"
execute as @s[scores={InvItemID=95}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=95}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=96}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreyPointedHat.count"
execute as @s[scores={InvItemID=96}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=96}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreyPointedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=97}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PurplePointedHat.count"
execute as @s[scores={InvItemID=97}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=97}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PurplePointedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=98}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenPointedHat.count"
execute as @s[scores={InvItemID=98}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=98}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GreenPointedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=99}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePointedHat.count"
execute as @s[scores={InvItemID=99}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=99}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BluePointedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=100}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedPointedHat.count"
execute as @s[scores={InvItemID=100}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=100}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RedPointedHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=101}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ConductorHat.count"
execute as @s[scores={InvItemID=101}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=101}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ConductorHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=102}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchGoggles.count"
execute as @s[scores={InvItemID=102}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=102}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchGoggles.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=103}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchGear.count"
execute as @s[scores={InvItemID=103}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=103}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchGear.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=104}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask1.count"
execute as @s[scores={InvItemID=104}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=104}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask1.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=105}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask2.count"
execute as @s[scores={InvItemID=105}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=105}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask2.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=106}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask3.count"
execute as @s[scores={InvItemID=106}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=106}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Mask3.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=107}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalEye.count"
execute as @s[scores={InvItemID=107}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=107}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalEye.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=108}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Diadem.count"
execute as @s[scores={InvItemID=108}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=108}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Diadem.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=109}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FakeMoustache.count"
execute as @s[scores={InvItemID=109}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=109}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FakeMoustache.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=110}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WeatherInABottle.count"
execute as @s[scores={InvItemID=110}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=110}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WeatherInABottle.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=111}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FireworksLauncher.count"
execute as @s[scores={InvItemID=111}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=111}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FireworksLauncher.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=112}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Omnioculars.count"
execute as @s[scores={InvItemID=112}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=112}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Omnioculars.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=113}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Dungbomb.count"
execute as @s[scores={InvItemID=113}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=113}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Dungbomb.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=114}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BeatersBat.count"
execute as @s[scores={InvItemID=114}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=114}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.BeatersBat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=115}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Axe.count"
execute as @s[scores={InvItemID=115}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=115}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Axe.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=116}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RustySword.count"
execute as @s[scores={InvItemID=116}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=116}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RustySword.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=117}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FancySword.count"
execute as @s[scores={InvItemID=117}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=117}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FancySword.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=118}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SwordOfGryffindor.count"
execute as @s[scores={InvItemID=118}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=118}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SwordOfGryffindor.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=119}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Sting.count"
execute as @s[scores={InvItemID=119}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=119}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Sting.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=120}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SelfShufflingPlayingCards.count"
execute as @s[scores={InvItemID=120}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=120}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SelfShufflingPlayingCards.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=121}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AntiCheatingQuill.count"
execute as @s[scores={InvItemID=121}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=121}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AntiCheatingQuill.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=122}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SpellCheckingQuill.count"
execute as @s[scores={InvItemID=122}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=122}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SpellCheckingQuill.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=123}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuickQuotesQuill.count"
execute as @s[scores={InvItemID=123}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=123}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuickQuotesQuill.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=124}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CrystalBall.count"
execute as @s[scores={InvItemID=124}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=124}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.CrystalBall.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=125}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlooPowder.count"
execute as @s[scores={InvItemID=125}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=125}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlooPowder.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=126}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count"
execute as @s[scores={InvItemID=126}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=126}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AdvancedRuneTranslation.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=127}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AHistoryOfMagic.count"
execute as @s[scores={InvItemID=127}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=127}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AHistoryOfMagic.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=128}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.UnfoggingTheFuture.count"
execute as @s[scores={InvItemID=128}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=128}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.UnfoggingTheFuture.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=129}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AncientRunesMadeEasy.count"
execute as @s[scores={InvItemID=129}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=129}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AncientRunesMadeEasy.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=130}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalTheory.count"
execute as @s[scores={InvItemID=130}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=130}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalTheory.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=131}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count"
execute as @s[scores={InvItemID=131}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=131}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SecretsOfTheDarkestArt.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=132}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheLadyOfTheLake.count"
execute as @s[scores={InvItemID=132}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=132}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheLadyOfTheLake.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=133}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LivingWithLegilimens.count"
execute as @s[scores={InvItemID=133}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=133}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LivingWithLegilimens.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=134}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count"
execute as @s[scores={InvItemID=134}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=134}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.SpellsAndEnchantmentsForTheHumanSpecies.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=135}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count"
execute as @s[scores={InvItemID=135}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=135}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.1000MagicalHerbsAndFungi.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=136}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count"
execute as @s[scores={InvItemID=136}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=136}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalWaterPlantsOfTheMediterranean.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=137}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchThroughTheAges.count"
execute as @s[scores={InvItemID=137}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=137}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.QuidditchThroughTheAges.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=138}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count"
execute as @s[scores={InvItemID=138}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=138}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.ArmandoDippetMasterOrMoron.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=139}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheWitchingHour.count"
execute as @s[scores={InvItemID=139}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=139}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheWitchingHour.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=140}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count"
execute as @s[scores={InvItemID=140}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=140}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FromTheEarthToTheMoon.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=141}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GilderoyLockhartsGuideToHouseholdPests.count"
execute as @s[scores={InvItemID=141}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=141}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.GilderoyLockhartsGuideToHouseholdPests.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=142}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PalmistryGuide.count"
execute as @s[scores={InvItemID=142}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=142}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PalmistryGuide.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=143}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count"
execute as @s[scores={InvItemID=143}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=143}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MudbloodsAndHowToSpotThem.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=144}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheFlapOfTheCape.count"
execute as @s[scores={InvItemID=144}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=144}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TheFlapOfTheCape.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=145}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WhenMugglesAttack.count"
execute as @s[scores={InvItemID=145}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=145}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WhenMugglesAttack.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=146}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalMe.count"
execute as @s[scores={InvItemID=146}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=146}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MagicalMe.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=147}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Bludger.count"
execute as @s[scores={InvItemID=147}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=147}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Bludger.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=148}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Quaffle.count"
execute as @s[scores={InvItemID=148}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=148}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Quaffle.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=149}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PixieWings.count"
execute as @s[scores={InvItemID=149}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=149}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.PixieWings.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=150}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RatTail.count"
execute as @s[scores={InvItemID=150}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=150}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.RatTail.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=151}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollToe.count"
execute as @s[scores={InvItemID=151}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=151}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollToe.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=152}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MurtlapTentacle.count"
execute as @s[scores={InvItemID=152}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=152}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MurtlapTentacle.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=153}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlobberwormMucus.count"
execute as @s[scores={InvItemID=153}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=153}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.FlobberwormMucus.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=154}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AcromantulaVenom.count"
execute as @s[scores={InvItemID=154}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=154}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.AcromantulaVenom.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=155}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousCoconut.count"
execute as @s[scores={InvItemID=155}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=155}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.MysteriousCoconut.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=156}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Skull.count"
execute as @s[scores={InvItemID=156}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=156}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Skull.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=157}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LimeGreenBowlerHat.count"
execute as @s[scores={InvItemID=157}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=157}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.LimeGreenBowlerHat.count" int 1 run scoreboard players get @s tmp

execute as @s[scores={InvItemID=158}] store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollFat.count"
execute as @s[scores={InvItemID=158}] run scoreboard players operation @s tmp += @s InvItemCount
execute as @s[scores={InvItemID=158}] store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.TrollFat.count" int 1 run scoreboard players get @s tmp