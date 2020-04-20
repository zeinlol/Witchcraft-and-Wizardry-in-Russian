# Hack to fix "wait for everyone" being delayed 1 tick even if the criteria is met immediately which causes the text to flash up for 1 tick in singleplayer for example
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState

# Store quest state in quest holder
execute as @s[scores={questID=1}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theLetterFromNoOne" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=2}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.diagonAlley" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=3}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.gringottsWizardingBank" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=4}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseWand" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=5}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseBooks" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=6}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseRobes" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=7}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.platform934" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=8}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.arrivalAtHogwarts" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=9}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToGryffindorPrefect" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=10}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToRavenclawPrefect" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=11}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToHufflepuffPrefect" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=12}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToSlytherinPrefect" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=13}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=14}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.lumos" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=15}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.stupefy" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=16}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.brackiumEmmendo" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=17}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.alohomora" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=18}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.wingardiumLeviosa" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=19}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.bombardaMaxima" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=20}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.veraVerto" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=21}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.expectoPatronum" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=22}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.apparition" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=23}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.goldenSkull" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=24}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.undergroundLibrary" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=25}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.oneMansTrash" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=26}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.flyingLesson" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=27}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.herbology" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=28}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.potions" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=29}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.extracurricularLearning" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=30}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.flying" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=31}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.monsterBookOfMonsters" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=32}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.sewerRats" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=33}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.unfriendlyCompetition" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=34}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theOrderOfThePhoenix" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=35}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.azkaban" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=36}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.thePensive" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=37}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt2" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=38}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt3" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=39}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt4" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=40}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt5" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=41}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.toadHunt6" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=42}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.chamberOfSecrets" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=43}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.mirrorOfErised" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=44}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theRoomOfRequirement" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=45}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.hogsmeadeLetterDelivery" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=46}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.burrowInfestation" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=47}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.trainingGroundToads" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=48}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.followTheSpiders" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=49}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.londonLetterDelivery" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=50}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.delinquentDailyProphet" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=51}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.anticAdvertisement" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=52}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.postponedPostage" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=53}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.snowmanSupplies" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=54}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theMostHauntedPlaceInBritain" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=55}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.curableCreatureConsultation" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=56}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.snipeHunt" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=57}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.riddleRiches" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=58}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.dungeonDelving" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=59}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.handOfGlory" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=60}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.parchmentPoverty" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=61}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.submergedShrub" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=62}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.quidditchSquabble" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=63}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.kitchenRaid" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=64}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.dubiousDivination" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=65}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.frogChoirQuarrel" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=66}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.quidditchMischief" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=67}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.justBusiness" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=68}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.bubotuberBurglary" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=69}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.demiguiseDodge" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=70}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.aBitOfLightReading" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=71}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.aLovelyLetter" int 1 run scoreboard players get @s questState
execute as @s[scores={questID=72}] store result entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.illegalItems" int 1 run scoreboard players get @s questState


# Fix for weird issue where the quest state isn't always updated and needs a double check
execute if entity @e[tag=questHolder,limit=1] run tag @s remove goToNextQuestState

# Setup quest command blocks
function hp:quests/setup_quests