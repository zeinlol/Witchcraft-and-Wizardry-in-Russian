function hp:misc/reset_player

tag @p[tag=activePlayer] add tmpDisabledActivePlayer
tag @p[tag=activePlayer] remove tmpDisabledActivePlayer
tag @s add activePlayer

scoreboard players set @s hotbar_stage 8
scoreboard players set @s money 100
scoreboard players set @s trackedQuestID 7
scoreboard players set @s respawnID 0
scoreboard players set @s levitationBug 0
scoreboard players set @s overrideRespawn 0
scoreboard players set @s spellCooldown1 0
scoreboard players set @s spellCooldown2 0
scoreboard players set @s spellCooldown3 0
execute as @s[scores={playerID=1}] run data merge entity @e[tag=player1Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.platform934: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=2}] run data merge entity @e[tag=player2Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.platform934: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=3}] run data merge entity @e[tag=player3Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.platform934: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=4}] run data merge entity @e[tag=player4Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.platform934: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}

# Reset quest checking
function hp:quests/setup_quests

execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest

tag @s remove currentQuestIsPurchaseWand

tag @s remove hasNotUnlockedTrading
tag @s remove collectedWandBox1
tag @s remove collectedWandBox2
tag @s remove collectedWandBox3
tag @s add hasUnlockedWand
tag @s remove hoverLocked
tag @s remove invTutorial

tag @s remove greatHallFull
tag @s remove onlyCommonRoomIsUnlocked

scoreboard players set @s clothesSlot1ID 19
scoreboard players set @s clothesSlot2ID 18
scoreboard players set @s clothesSlot3ID 27

gamerule doDaylightCycle false
time set day

tag @s remove hasPurchasedBooks
tag @s remove hasPurchasedRobes
tag @s remove hasPurchasedWand

tag @s add musicController

execute as @s[scores={playerID=1}] run scoreboard players reset * p1convOverride
execute as @s[scores={playerID=2}] run scoreboard players reset * p2convOverride
execute as @s[scores={playerID=3}] run scoreboard players reset * p3convOverride
execute as @s[scores={playerID=4}] run scoreboard players reset * p4convOverride
execute as @s[scores={playerID=1}] run scoreboard players set hagrid p1convOverride 24
execute as @s[scores={playerID=2}] run scoreboard players set hagrid p2convOverride 24
execute as @s[scores={playerID=3}] run scoreboard players set hagrid p3convOverride 24
execute as @s[scores={playerID=4}] run scoreboard players set hagrid p4convOverride 24

# function hp:discovery/reset_discovered_locations

tag @s add showingMana
scoreboard players set @s maxManaAmount 10000
scoreboard players set @s manaAmount 10000
scoreboard players set @s manaAnimation 1
scoreboard players set @s manaDelayDisplay
scoreboard players set @s pickUpTimer 0
scoreboard players set @s discoverLocation 0
scoreboard players set @s discoveryTimer 0
scoreboard players set @s house 1
scoreboard players set @s heartBeatLoop 1
scoreboard players set @s checkAmbience 0
scoreboard players set @s damageOverlay 0

# TP
tp @s 2850.49 56.00 808.45 178.61 3.87

function hp:misc/update_bossbars

#############
# Discovery #
#############

# leaky_cauldron
execute as @s[tag=!discovered_leaky_cauldron,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 39
execute as @s[tag=!discovered_leaky_cauldron,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_leaky_cauldron,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_leaky_cauldron,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_leaky_cauldron,tag=!inProperCutScene] run tag @s add discovered_leaky_cauldron

# privet_drive
execute as @s[tag=!discovered_privet_drive,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 30
execute as @s[tag=!discovered_privet_drive,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_privet_drive,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_privet_drive,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_privet_drive,tag=!inProperCutScene] run tag @s add discovered_privet_drive

# diagon_alley
execute as @s[tag=!discovered_diagon_alley,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 38
execute as @s[tag=!discovered_diagon_alley,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_diagon_alley,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_diagon_alley,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_diagon_alley,tag=!inProperCutScene] run tag @s add discovered_diagon_alley

# gringotts
execute as @s[tag=!discovered_gringotts,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 40
execute as @s[tag=!discovered_gringotts,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_gringotts,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_gringotts,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_gringotts,tag=!inProperCutScene] run tag @s add discovered_gringotts

# ollivanders
execute as @s[tag=!discovered_ollivanders,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 41
execute as @s[tag=!discovered_ollivanders,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_ollivanders,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_ollivanders,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_ollivanders,tag=!inProperCutScene] run tag @s add discovered_ollivanders

# madam_malkins
execute as @s[tag=!discovered_madam_malkins,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 42
execute as @s[tag=!discovered_madam_malkins,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_madam_malkins,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_madam_malkins,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_madam_malkins,tag=!inProperCutScene] run tag @s add discovered_madam_malkins

# flourish_blotts
execute as @s[tag=!discovered_flourish_blotts,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 60
execute as @s[tag=!discovered_flourish_blotts,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_flourish_blotts,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_flourish_blotts,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_flourish_blotts,tag=!inProperCutScene] run tag @s add discovered_flourish_blotts



tag @s remove activePlayer
tag @p[tag=tmpDisabledActivePlayer] add activePlayer
tag @p[tag=tmpDisabledActivePlayer] remove tmpDisabledActivePlayer