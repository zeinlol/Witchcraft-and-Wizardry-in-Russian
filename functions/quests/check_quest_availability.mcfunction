# Sometimes for reasons I don't quite understand the quest system will end up quing the current quest for the Tracked Quest ID even when it is completed so you end up tracking a quest that doesn't exist.
# This is a check to see if the quest that is currently tracked exists

# Store quest state in quest holder
execute as @s[scores={trackedQuestID=1}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theLetterFromNoOne"
execute as @s[scores={trackedQuestID=2}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.diagonAlley"
execute as @s[scores={trackedQuestID=3}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.gringottsWizardingBank"
execute as @s[scores={trackedQuestID=4}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseWand"
execute as @s[scores={trackedQuestID=5}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseBooks"
execute as @s[scores={trackedQuestID=6}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseRobes"
execute as @s[scores={trackedQuestID=7}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.platform934"
execute as @s[scores={trackedQuestID=8}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.arrivalAtHogwarts"
execute as @s[scores={trackedQuestID=9}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToGryffindorPrefect"
execute as @s[scores={trackedQuestID=10}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToRavenclawPrefect"
execute as @s[scores={trackedQuestID=11}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToHufflepuffPrefect"
execute as @s[scores={trackedQuestID=12}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToSlytherinPrefect"
execute as @s[scores={trackedQuestID=13}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt"
execute as @s[scores={trackedQuestID=14}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.lumos"
execute as @s[scores={trackedQuestID=15}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.stupefy"
execute as @s[scores={trackedQuestID=16}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.brackiumEmmendo"
execute as @s[scores={trackedQuestID=17}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.alohomora"
execute as @s[scores={trackedQuestID=18}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.wingardiumLeviosa"
execute as @s[scores={trackedQuestID=19}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.bombardaMaxima"
execute as @s[scores={trackedQuestID=20}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.veraVerto"
execute as @s[scores={trackedQuestID=21}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.expectoPatronum"
execute as @s[scores={trackedQuestID=22}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.apparition"
execute as @s[scores={trackedQuestID=23}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.goldenSkull"
execute as @s[scores={trackedQuestID=24}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.undergroundLibrary"
execute as @s[scores={trackedQuestID=25}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.oneMansTrash"
execute as @s[scores={trackedQuestID=26}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.flyingLesson"
execute as @s[scores={trackedQuestID=27}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.herbology"
execute as @s[scores={trackedQuestID=28}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.potions"
execute as @s[scores={trackedQuestID=29}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.extracurricularLearning"
execute as @s[scores={trackedQuestID=30}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.flying"
execute as @s[scores={trackedQuestID=31}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.monsterBookOfMonsters"
execute as @s[scores={trackedQuestID=32}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.sewerRats"
execute as @s[scores={trackedQuestID=33}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.unfriendlyCompetition"
execute as @s[scores={trackedQuestID=34}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theOrderOfThePhoenix"
execute as @s[scores={trackedQuestID=35}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.azkaban"
execute as @s[scores={trackedQuestID=36}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.thePensive"
execute as @s[scores={trackedQuestID=37}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt2"
execute as @s[scores={trackedQuestID=38}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt3"
execute as @s[scores={trackedQuestID=39}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt4"
execute as @s[scores={trackedQuestID=40}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt5"
execute as @s[scores={trackedQuestID=41}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt6"
execute as @s[scores={trackedQuestID=42}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.chamberOfSecrets"
execute as @s[scores={trackedQuestID=43}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.mirrorOfErised"
execute as @s[scores={trackedQuestID=44}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theRoomOfRequirement"
execute as @s[scores={trackedQuestID=45}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.hogsmeadeLetterDelivery"
execute as @s[scores={trackedQuestID=46}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.burrowInfestation"
execute as @s[scores={trackedQuestID=47}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.trainingGroundToads"
execute as @s[scores={trackedQuestID=48}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.followTheSpiders"
execute as @s[scores={trackedQuestID=49}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.londonLetterDelivery"
execute as @s[scores={trackedQuestID=50}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.delinquentDailyProphet"
execute as @s[scores={trackedQuestID=51}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.anticAdvertisement"
execute as @s[scores={trackedQuestID=52}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.postponedPostage"
execute as @s[scores={trackedQuestID=53}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.snowmanSupplies"
execute as @s[scores={trackedQuestID=54}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theMostHauntedPlaceInBritain"
execute as @s[scores={trackedQuestID=55}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.curableCreatureConsultation"
execute as @s[scores={trackedQuestID=56}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.snipeHunt"
execute as @s[scores={trackedQuestID=57}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.riddleRiches"
execute as @s[scores={trackedQuestID=58}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.dungeonDelving"
execute as @s[scores={trackedQuestID=59}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.handOfGlory"
execute as @s[scores={trackedQuestID=60}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.parchmentPoverty"
execute as @s[scores={trackedQuestID=61}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.submergedShrub"
execute as @s[scores={trackedQuestID=62}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.quidditchSquabble"
execute as @s[scores={trackedQuestID=63}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.kitchenRaid"
execute as @s[scores={trackedQuestID=64}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.dubiousDivination"
execute as @s[scores={trackedQuestID=65}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.frogChoirQuarrel"
execute as @s[scores={trackedQuestID=66}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.quidditchMischief"
execute as @s[scores={trackedQuestID=67}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.justBusiness"
execute as @s[scores={trackedQuestID=68}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.bubotuberBurglary"
execute as @s[scores={trackedQuestID=69}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.demiguiseDodge"
execute as @s[scores={trackedQuestID=70}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.aBitOfLightReading"
execute as @s[scores={trackedQuestID=71}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.aLovelyLetter"
execute as @s[scores={trackedQuestID=72}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.illegalItems"

execute if score @s tmp matches ..0 run scoreboard players set @s trackedQuestID 0