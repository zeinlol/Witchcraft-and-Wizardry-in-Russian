scoreboard players add global sessionID 1

# Reset hogwarts arrival dressing
function hp:quests/quests/arrival_at_hogwarts/clear_great_hall_doors
function hp:quests/quests/arrival_at_hogwarts/set_great_hall_doors

tag @a remove inGame
tag @a remove activePlayer
scoreboard players reset @a playerID
tag @a remove mainMenu
tag @a remove inMainMenu
tag @a remove setupSingleplayer
tag @a remove showMainMenuControls
tag @a remove playerIsJoined
tag @a remove lockTrackedQuest
tag @a remove maraudersMapLocked
scoreboard players set @a menuPlayerID 0
scoreboard players set @a mainMenuState 0
scoreboard players set global mainMenuState 0
scoreboard players set global snitches 0
scoreboard players set global wizardCards 0
scoreboard players set global sqCompleted 0
tag @a remove exitMainMenu
gamerule doDaylightCycle false
time set day
scoreboard players set global mainMenuState 0

scoreboard players set @s sortedPlayers 0

execute as @a run scoreboard players set @s animTest 40
execute as @a run scoreboard players set @s selectCurrent 0
execute as @a run scoreboard players set @s mainMenuState 0
execute as @a run bossbar set minecraft:setup_gui name ["",{"text":"ˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ","color":"white"}]
execute as @a run bossbar set minecraft:player1discover visible false
execute as @a run bossbar set minecraft:player1empty visible false
execute as @a run bossbar set minecraft:player1enemy visible false
execute as @a run bossbar set minecraft:player1health visible false
execute as @a run bossbar set minecraft:player1info visible false
execute as @a run bossbar set minecraft:player1quest visible false

execute as @a run bossbar set minecraft:player2discover visible false
execute as @a run bossbar set minecraft:player2empty visible false
execute as @a run bossbar set minecraft:player2enemy visible false
execute as @a run bossbar set minecraft:player2health visible false
execute as @a run bossbar set minecraft:player2info visible false
execute as @a run bossbar set minecraft:player2quest visible false

execute as @a run bossbar set minecraft:player3discover visible false
execute as @a run bossbar set minecraft:player3empty visible false
execute as @a run bossbar set minecraft:player3enemy visible false
execute as @a run bossbar set minecraft:player3health visible false
execute as @a run bossbar set minecraft:player3info visible false
execute as @a run bossbar set minecraft:player3quest visible false

execute as @a run bossbar set minecraft:player4discover visible false
execute as @a run bossbar set minecraft:player4empty visible false
execute as @a run bossbar set minecraft:player4enemy visible false
execute as @a run bossbar set minecraft:player4health visible false
execute as @a run bossbar set minecraft:player4info visible false
execute as @a run bossbar set minecraft:player4quest visible false
execute as @p unless entity @p[scores={menuPlayerID=1}] unless entity @p[scores={menuPlayerID=2}] unless entity @p[scores={menuPlayerID=3}] unless entity @p[scores={menuPlayerID=4}] run scoreboard players set @s menuPlayerID 1
tag @a remove seenMainMenu


# Quests
# Quest reset chunk loader
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Spell challenges
scoreboard players add collectedLumosStars sharedQuests 0

# Охота за Жабой
scoreboard players set toadHunt1 sharedQuests 0
scoreboard players set toadHunt2 sharedQuests 0
scoreboard players set toadHunt3 sharedQuests 0
scoreboard players set toadHunt4 sharedQuests 0
scoreboard players set toadHunt5 sharedQuests 0
scoreboard players set toadHunt6 sharedQuests 0
scoreboard players set toadHuntIsGoing sharedQuests 0

# Monster Book of Monsters
scoreboard players set broderickMonsterBooks sharedQuests 0
scoreboard players set secondHandBroomCellarIsEmpty global 1
scoreboard players set secondHandBooksChainProgress global 1

# Sewer Rats
scoreboard players set elikElixersRats sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2824 952 1 1 false @s
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.MurtlapEssence.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.PotionOfMagicka.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.ElixirOfLife.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.StrengthPotion.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.InvigorationDraught.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.AntidoteToPoisons.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.EssenceOfGillyweed.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.MurtlapEssence.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.PotionOfMagicka.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.ElixirOfLife.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.StrengthPotion.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.InvigorationDraught.count" int 1 run scoreboard players set tmp tmp 1
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.AntidoteToPoisons.count" int 1 run scoreboard players set tmp tmp 0
execute store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.EssenceOfGillyweed.count" int 1 run scoreboard players set tmp tmp 0

# Golden skull
scoreboard players set goldenSkull sharedQuests -1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 56 1 1 false @s
execute as d89859a6-1c58-4146-878c-f9a54cfc377c run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}

# Underground Libarary
scoreboard players set undergroundLibrary sharedQuests -1

# Тайная Комната
scoreboard players set chamberOfSecrets sharedQuests 0

# Зеркало Еиналеж
scoreboard players set mirrorOfErised sharedQuests 0
scoreboard players set mirrorOfErised sharedQuests 0

# Room of Requirement
scoreboard players set theRoomOfRequirement sharedQuests 0

# Hogsmeade Letter Delivery
scoreboard players set hogsmeadeLetterDelivery sharedQuests 0

# Burrow Infestation
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5400 4568 1 1 false @s
tag 4d2ce650-af23-4f1c-84f0-e85fbde123a5 remove disable
scoreboard players set burrowInfestation sharedQuests 0
scoreboard players set burrowInfestationKills sharedQuests 0

# Kitchen Raid
scoreboard players set kitchenRaid sharedQuests 0

# Dubious Divination
scoreboard players set dubiousDivination sharedQuests 0

# Frog Choir Quarrel
scoreboard players set frogChoirQuarrel sharedQuests 0
scoreboard players set frogChoirBoard1 sharedQuests 0
scoreboard players set frogChoirBoard2 sharedQuests 0
scoreboard players set frogChoirBoard3 sharedQuests 0
scoreboard players set frogChoirPapersPutUp sharedQuests 0

# London Letter Delivery
scoreboard players set londonLetterDelivery sharedQuests 0

# Submerged Shrub
scoreboard players set submergedShrub sharedQuests 0

# Quidditch Mischief
scoreboard players set quidditchMischief sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 408 -232 1 1 false @s
function hp:quests/quests/quidditch_mischief/reset_banners

# Just Business
scoreboard players set justBusiness sharedQuests 0

# Follow the Spiders
scoreboard players set followTheSpiders sharedQuests 0

# Quidditch Squabble
scoreboard players set quidditchSquabble sharedQuests 0

# parchemnt Poverty
scoreboard players set parchmentPoverty sharedQuests 0

# Hand of Glory
scoreboard players set handOfGlory sharedQuests 0

# Delinquent 'Ежедневный Пророк'
scoreboard players set delinquentDailyProphet sharedQuests 0

# Riddle Riches
scoreboard players set riddleRiches sharedQuests 0

# Training Ground Toads
scoreboard players set trainingGroundToads sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 -40 1 1 false @s
tag 9d645cf9-a09f-48cd-89fd-9256b9a2ee7c remove disable

# Demiguise Dodge
scoreboard players set demiguiseDodge sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 328 360 1 1 false @s
tag 3590c6d9-cad7-4c06-bbab-2ae7ab139288 remove visible
execute as 3590c6d9-cad7-4c06-bbab-2ae7ab139288 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1308

# Antic Advertisement
scoreboard players set anticAdvertisement sharedQuests 0

# Snipe Hunt
scoreboard players set snipeHunt sharedQuests 0

# One Man's Trash
scoreboard players set oneMansTrash sharedQuests 0

# The Most Haunted Place in Britain
scoreboard players set theMostHauntedPlaceInBritain sharedQuests 0
scoreboard players set shriekingShackPoltergeistKills sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5432 2792 1 1 false @s
tag 692ffc30-3f23-47c5-b043-9b9b6d4cc29a remove disable

# Postponed Postage
scoreboard players set postponedPostage sharedQuests 0

# Curable Creature Consultation
scoreboard players set curableCreatureConsultation sharedQuests 0

# Snowman Supplies
scoreboard players set snowmanSupplies sharedQuests 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5416 2424 1 1 false @s
data merge entity 39351a87-4f95-466c-a262-e02a4dc176ee {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1298}}]}

# A bit of light reading
scoreboard players set aBitOfLightReading sharedQuests 0
scoreboard players set aBitOfLightReading p1Quests 0
scoreboard players set aBitOfLightReading p2Quests 0
scoreboard players set aBitOfLightReading p3Quests 0
scoreboard players set aBitOfLightReading p4Quests 0

# A lovely letter
scoreboard players set aLovelyLetter sharedQuests 0
scoreboard players set aLovelyLetterEnding sharedQuests 0

# IllegalItems
scoreboard players set illegalItems sharedQuests 0

# Dungeon Delving
scoreboard players set dungeonDelving sharedQuests 0

# Hogwarts boats because no matter what I do one of them doesn't reset if I just do it in the cutscene
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1272 -1624 1 1 false @s
execute as 14028b3e-4272-4b27-b00e-e4154beba424 run tp @s 1267.81 33.89 -1626.96 -90 0
execute as c9176e8a-348b-46b3-9010-33402784b2e4 run tp @s 1267.51 33.89 -1626.76 -90 0
execute as e489d3ca-b7bc-47ee-aee7-7d4da3d0f5cd run tp @s 1267.49 33.89 -1627.16 -90 0
execute as 6b26d4f0-81eb-4196-8d77-d7a428e803d7 run tp @s 1267.10 33.89 -1626.45 -90 0
execute as 1a1a00da-0001-4951-82d7-d0725067ce77 run tp @s 1267.16 33.89 -1626.95 -90 0 
execute as aef7fe88-f0f1-4979-bf9a-02f0e39f5239 run tp @s 1267.11 33.89 -1627.46 -90 0

kill @e[tag=chunkLoader]



# Reset flying highscore (Just set it to something very high so it always gets overwritten)
scoreboard players set timer flyingHighscore 999999999
scoreboard players set seconds flyingHighscore 0
scoreboard players set minutes flyingHighscore 0

function hp:quests/timer/reset_pensive_timer

scoreboard players set lumosBestTime global 999999999
scoreboard players set stupefyBestTime global 999999999
scoreboard players set brackiumEmendoBestTime global 999999999
scoreboard players set alohomoraBestTime global 999999999
scoreboard players set wingardiumLeviosaBestTime global 999999999
scoreboard players set bombardaMaximaBestTime global 999999999
scoreboard players set veraVertoBestTime global 999999999
scoreboard players set expectoPatronumBestTime global 999999999
scoreboard players set apparitionBestTime global 999999999

function hp:pensive/write_result_trophy_room


# Events
scoreboard players set bigBenChime global 0
scoreboard players set grimmauldPlaceCutsceneIsGoing global 0







scoreboard players set playerInLumosSpellChallenge global 0
scoreboard players set playerInStupefySpellChallenge global 0
scoreboard players set playerInBrackiumEmendoSpellChallenge global 0
scoreboard players set playerInAlohomoraSpellChallenge global 0
scoreboard players set playerInWingardiumSpellChallenge global 0
scoreboard players set playerInBombardaSpellChallenge global 0
scoreboard players set playerInPatronusSpellChallenge global 0
scoreboard players set playerInVeraVertoSpellChallenge global 0
scoreboard players set playerInApparitionSpellChallenge global 0

scoreboard players set boatWalkingHagridExists global 0
scoreboard players set patronumClassIsSetUp global 0
scoreboard players set herbologyClassIsSetUp global 0
scoreboard players set herbologyStarsSetup global 0
scoreboard players set flyingClassIsSetUp global 0


scoreboard players set reset resetTimer 25


