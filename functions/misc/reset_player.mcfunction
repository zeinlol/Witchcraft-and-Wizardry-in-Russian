tag @p[tag=activePlayer] add tmpDisabledActivePlayer
tag @p[tag=activePlayer] remove tmpDisabledActivePlayer
tag @s add activePlayer

scoreboard players set @s hotbar_stage 1
tag @s add invTutorial
scoreboard players set @s money 0
scoreboard players set @s snitches 0
scoreboard players set @s wizardCards 0
scoreboard players set @s trackedQuestID 1
scoreboard players set @s respawnID 0
scoreboard players set @s levitationBug 0
scoreboard players set @s overrideRespawn 0
scoreboard players set @s spellCooldown1 0
scoreboard players set @s spellCooldown2 0
scoreboard players set @s spellCooldown3 0
scoreboard players set @s invisCapeAnim 10

scoreboard players set @s discoveryTimer 0
scoreboard players set @s discoverLocation 0
scoreboard players set @s checkAmbience 0

execute as @s[scores={playerID=1}] run data merge entity 0-0-5-0-1 {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.theLetterFromNoOne: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=2}] run data merge entity 0-0-5-0-2 {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.theLetterFromNoOne: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=3}] run data merge entity 0-0-5-0-3 {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.theLetterFromNoOne: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=4}] run data merge entity 0-0-5-0-4 {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.theLetterFromNoOne: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}

advancement revoke @s everything

team join all @s

# Reset quest checking
function hp:quests/setup_quests

execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest

tag @s remove currentQuestIsPurchaseWand
tag @s add potionBrewingLocked
tag @s add hasNotUnlockedTrading
tag @s add potionStandLocked
tag @s add potionBrewingLocked
tag @s add earmuffsLocked
tag @s add pensiveLocked


tag @s remove collectedWandBox1
tag @s remove collectedWandBox2
tag @s remove collectedWandBox3
tag @s remove hasUnlockedWand
tag @s remove unlockedSpells
tag @s remove hasLearnedLumos
tag @s remove hasLearnedStupefy
tag @s remove hasLearnedBrackiumEmendo
tag @s remove hasPutUpSpewFlyers
tag @s remove hasLearnedAlohomora
tag @s remove hasLearnedWingardiumLeviosa
tag @s remove hasLearnedBombardaMaxima
tag @s remove hasLearnedVeraVerto
tag @s remove hasLearnedExpectoPatronum
tag @s remove hasLearnedApparition
tag @s remove hasBeenToAzkaban
tag @s remove hasLearnedToFly

tag @s remove hasJustBeenSorted
tag @s remove hasTravelledWithHogswartsExpress
tag @s remove hasSpokenToHagridAtHogsmeadePlatform
tag @s remove hasFollowedHagridToTheBoats
tag @s remove hasWalkedToTheCastleToBeSorted
tag @s remove hasCompletedSortingCeremony
tag @s remove hasBeenRemindedAboutQuestBook

scoreboard players set @s cloudInABottle 0
scoreboard players set @s fireworks 0
scoreboard players set @s veraVertoBossbar 0
scoreboard players set @s dungbomb 0
scoreboard players set @s placeBroomTimer 0

scoreboard players set @s darkSpiritStun 0
scoreboard players set @s darkSpiritDelay 0
scoreboard players set @s quickSlot 1

scoreboard players set @s triggerMusic 0

tag @s remove greatHallFull
tag @s add onlyCommonRoomIsUnlocked

scoreboard players set @s clothesSlot1ID 0
scoreboard players set @s clothesSlot2ID 0
scoreboard players set @s clothesSlot3ID 0

tag @s remove hasPurchasedBooks
tag @s remove hasPurchasedRobes
tag @s remove hasPurchasedWand

# tp @e[tag=boatWalkingHagrid,limit=3] -208 56 -595
# tag @e[tag=fpEngine,tag=boatWalkingHagrid,limit=1] add permStop

execute as @s[scores={playerID=1}] run scoreboard players reset * p1convOverride
execute as @s[scores={playerID=2}] run scoreboard players reset * p2convOverride
execute as @s[scores={playerID=3}] run scoreboard players reset * p3convOverride
execute as @s[scores={playerID=4}] run scoreboard players reset * p4convOverride
execute as @s[scores={playerID=1}] run scoreboard players set hagrid p1convOverride 15
execute as @s[scores={playerID=2}] run scoreboard players set hagrid p2convOverride 15
execute as @s[scores={playerID=3}] run scoreboard players set hagrid p3convOverride 15
execute as @s[scores={playerID=4}] run scoreboard players set hagrid p4convOverride 15
execute as @s[scores={playerID=1}] run scoreboard players set molly p1convOverride 3
execute as @s[scores={playerID=2}] run scoreboard players set molly p2convOverride 3
execute as @s[scores={playerID=3}] run scoreboard players set molly p3convOverride 3
execute as @s[scores={playerID=4}] run scoreboard players set molly p4convOverride 3
execute as @s[scores={playerID=1}] run scoreboard players set train_guard p1convOverride 0
execute as @s[scores={playerID=2}] run scoreboard players set train_guard p2convOverride 0
execute as @s[scores={playerID=3}] run scoreboard players set train_guard p3convOverride 0
execute as @s[scores={playerID=4}] run scoreboard players set train_guard p4convOverride 0
execute as @s[scores={playerID=1}] run scoreboard players set ollivander p1convOverride 18
execute as @s[scores={playerID=2}] run scoreboard players set ollivander p2convOverride 18
execute as @s[scores={playerID=3}] run scoreboard players set ollivander p3convOverride 18
execute as @s[scores={playerID=4}] run scoreboard players set ollivander p4convOverride 18
execute as @s[scores={playerID=1}] run scoreboard players set malkin p1convOverride 6
execute as @s[scores={playerID=2}] run scoreboard players set malkin p2convOverride 6
execute as @s[scores={playerID=3}] run scoreboard players set malkin p3convOverride 6
execute as @s[scores={playerID=4}] run scoreboard players set malkin p4convOverride 6
execute as @s[scores={playerID=1}] run scoreboard players set flourish_blotts p1convOverride 13
execute as @s[scores={playerID=2}] run scoreboard players set flourish_blotts p2convOverride 13
execute as @s[scores={playerID=3}] run scoreboard players set flourish_blotts p3convOverride 13
execute as @s[scores={playerID=4}] run scoreboard players set flourish_blotts p4convOverride 13
execute as @s[scores={playerID=1}] run scoreboard players set percy p1convOverride 7
execute as @s[scores={playerID=2}] run scoreboard players set percy p2convOverride 7
execute as @s[scores={playerID=3}] run scoreboard players set percy p3convOverride 7
execute as @s[scores={playerID=4}] run scoreboard players set percy p4convOverride 7
execute as @s[scores={playerID=1}] run scoreboard players set cedric p1convOverride 7
execute as @s[scores={playerID=2}] run scoreboard players set cedric p2convOverride 7
execute as @s[scores={playerID=3}] run scoreboard players set cedric p3convOverride 7
execute as @s[scores={playerID=4}] run scoreboard players set cedric p4convOverride 7
execute as @s[scores={playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 7
execute as @s[scores={playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 7
execute as @s[scores={playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 7
execute as @s[scores={playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 7
execute as @s[scores={playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 7
execute as @s[scores={playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 7
execute as @s[scores={playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 7
execute as @s[scores={playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 7
execute as @s[scores={playerID=1}] run scoreboard players set dumbledore p1convOverride 1
execute as @s[scores={playerID=2}] run scoreboard players set dumbledore p2convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set dumbledore p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set dumbledore p4convOverride 1
execute as @s[scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 24
execute as @s[scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 24
execute as @s[scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 24
execute as @s[scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 24


scoreboard players set @s broomPulse 1
scoreboard players set @s broomSpeed 1
scoreboard players set @s broomDelay -1
scoreboard players set @s dead 0
scoreboard players set @s relogTimer 0
scoreboard players set @s selectTest 0
scoreboard players reset @s ambiencePlaying
tag @s remove doNotPlayAmbience

scoreboard players set @s disLocations 0




tag @s add hoverLocked
tag @s add diagonAlleyNotUnlocked

tag @s add showConversationControls
function hp:discovery/reset_discovered_locations

scoreboard players set @s maxManaAmount 10000
scoreboard players set @s manaAmount 10000
scoreboard players set @s manaAnimation 1
scoreboard players set @s manaDelayDisplay
scoreboard players set @s pickUpTimer 0
scoreboard players set @s discoverLocation 0
scoreboard players set @s discoveryTimer 0
scoreboard players set @s house 0
scoreboard players set @s heartBeatLoop 1
scoreboard players set @s checkAmbience 0
scoreboard players set @s damageOverlay 0
scoreboard players set @s bannerTimer 0

scoreboard players set @s worldBarrier 0

scoreboard players set @s pressFDelay 0

tag @s remove hogwartsExpressUnlocked
tag @s remove knightBusUnlocked
scoreboard players set unlockedGrimmauldPlace sharedQuests 0
scoreboard players set unlockedBurrow sharedQuests 0
scoreboard players set unlockedLovegoodResidence sharedQuests 0
scoreboard players set unlockedMalfoyManor sharedQuests 0

function hp:misc/update_bossbars

function hp:misc/relog

# Discover Тисовая Улица
scoreboard players set @s mapLocationID 30
function hp:map/unlock_location


# Disable music controler (Music is handled by the quests for the first stretch)
tag @s remove musicController

tag @s remove activePlayer
tag @p[tag=tmpDisabledActivePlayer] add activePlayer
tag @p[tag=tmpDisabledActivePlayer] remove tmpDisabledActivePlayer