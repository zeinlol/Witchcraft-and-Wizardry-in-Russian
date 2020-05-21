function hp:misc/reset_player

tag @p[tag=activePlayer] add tmpDisabledActivePlayer
tag @p[tag=activePlayer] remove tmpDisabledActivePlayer
tag @s add activePlayer

scoreboard players set @s hotbar_stage 10
scoreboard players set @s money 100
scoreboard players set @s trackedQuestID 26
scoreboard players set @s respawnID 0
scoreboard players set @s levitationBug 0
scoreboard players set @s overrideRespawn 0
scoreboard players set @s spellCooldown1 0
scoreboard players set @s spellCooldown2 0
scoreboard players set @s spellCooldown3 0
execute as @s[scores={playerID=1}] run data merge entity @e[tag=player1Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.flyingLesson: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=2}] run data merge entity @e[tag=player2Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.flyingLesson: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=3}] run data merge entity @e[tag=player3Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.flyingLesson: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}
execute as @s[scores={playerID=4}] run data merge entity @e[tag=player4Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.flyingLesson: 1, invItem.MurtlapEssence.count: 3, invItem.PotionOfMagicka.count: 2, invItem.ElixirOfLife.count: 1, invItem.Apple.count: 5, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1, invItem.FantasticBeasts.count: 1, invItem.StandardBookOfSpells.count: 1, invItem.MagicalDraftsAndPotions.count: 1, invItem.TheDarkForces.count: 1, invItem.GuideToTransfiguration.count: 1}}]}

# Reset quest checking
function hp:quests/setup_quests

execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s remove showingTrackedQuest
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] run tag @s add showTrackedQuest

tag @s remove currentQuestIsPurchaseWand

tag @s remove hasNotUnlockedTrading
tag @s remove collectedWandBox1
tag @s remove collectedWandBox2
tag @s remove collectedWandBox3
tag @s remove unlockedSpells
tag @s add hasUnlockedWand
tag @s remove hoverLocked
tag @s remove invTutorial

tag @s remove greatHallFull
tag @s remove onlyCommonRoomIsUnlocked

scoreboard players set @s clothesSlot1ID 19
scoreboard players set @s clothesSlot2ID 18
scoreboard players set @s clothesSlot3ID 27

gamerule doDaylightCycle true

tag @s remove hasPurchasedBooks
tag @s remove hasPurchasedRobes
tag @s remove hasPurchasedWand

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

# big_ben
execute as @s[tag=!discovered_big_ben,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 33
execute as @s[tag=!discovered_big_ben,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_big_ben,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_big_ben,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_big_ben,tag=!inProperCutScene] run tag @s add discovered_big_ben

# kings_cross
execute as @s[tag=!discovered_kings_cross,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 31
execute as @s[tag=!discovered_kings_cross,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_kings_cross,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_kings_cross,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_kings_cross,tag=!inProperCutScene] run tag @s add discovered_kings_cross

# platform_9_3_4
execute as @s[tag=!discovered_platform_9_3_4,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 37
execute as @s[tag=!discovered_platform_9_3_4,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_platform_9_3_4,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_platform_9_3_4,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_platform_9_3_4,tag=!inProperCutScene] run tag @s add discovered_platform_9_3_4

# hogsmeade_station
execute as @s[tag=!discovered_hogsmeade_station,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 48
execute as @s[tag=!discovered_hogsmeade_station,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_hogsmeade_station,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_hogsmeade_station,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_hogsmeade_station,tag=!inProperCutScene] run tag @s add discovered_hogsmeade_station

# great_hall
execute as @s[tag=!discovered_great_hall] run scoreboard players set @s mapLocationID 1
execute as @s[tag=!discovered_great_hall] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_great_hall] discoverLocation 80
scoreboard players set @s[tag=discovered_great_hall] discoverLocation 50
execute as @s[tag=!discovered_great_hall] run tag @s add discovered_great_hall

# gryffindor_common_room
execute as @s[tag=!discovered_gryffindor_common_room,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 6
execute as @s[tag=!discovered_gryffindor_common_room,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_gryffindor_common_room,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_gryffindor_common_room,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_gryffindor_common_room,tag=!inProperCutScene] run tag @s add discovered_gryffindor_common_room

# ravenclaw_common_room
execute as @s[tag=!discovered_ravenclaw_common_room,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 8
execute as @s[tag=!discovered_ravenclaw_common_room,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_ravenclaw_common_room,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_ravenclaw_common_room,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_ravenclaw_common_room,tag=!inProperCutScene] run tag @s add discovered_ravenclaw_common_room

# hufflepuff_common_room
execute as @s[tag=!discovered_hufflepuff_common_room,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 7
execute as @s[tag=!discovered_hufflepuff_common_room,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_hufflepuff_common_room,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_hufflepuff_common_room,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_hufflepuff_common_room,tag=!inProperCutScene] run tag @s add discovered_hufflepuff_common_room

# slytherin_common_room
execute as @s[tag=!discovered_slytherin_common_room,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 9
execute as @s[tag=!discovered_slytherin_common_room,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_slytherin_common_room,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_slytherin_common_room,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_slytherin_common_room,tag=!inProperCutScene] run tag @s add discovered_slytherin_common_room

# charms_classroom
execute as @s[tag=!discovered_charms_classroom,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 5
execute as @s[tag=!discovered_charms_classroom,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_charms_classroom,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_charms_classroom,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_charms_classroom,tag=!inProperCutScene] run tag @s add discovered_charms_classroom

# defence_against_the_dark_arts_classroom
execute as @s[tag=!discovered_defence_against_the_dark_arts_classroom,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 4
execute as @s[tag=!discovered_defence_against_the_dark_arts_classroom,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_defence_against_the_dark_arts_classroom,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_defence_against_the_dark_arts_classroom,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_defence_against_the_dark_arts_classroom,tag=!inProperCutScene] run tag @s add discovered_defence_against_the_dark_arts_classroom

# potions_classroom
execute as @s[tag=!discovered_potions_classroom,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 3
execute as @s[tag=!discovered_potions_classroom,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_potions_classroom,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_potions_classroom,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_potions_classroom,tag=!inProperCutScene] run tag @s add discovered_potions_classroom

# road_to_hogsmeade
execute as @s[tag=!discovered_road_to_hogsmeade,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 49
execute as @s[tag=!discovered_road_to_hogsmeade,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_road_to_hogsmeade,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_road_to_hogsmeade,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_road_to_hogsmeade,tag=!inProperCutScene] run tag @s add discovered_road_to_hogsmeade

# road_to_hogwarts
execute as @s[tag=!discovered_road_to_hogwarts,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 22
execute as @s[tag=!discovered_road_to_hogwarts,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_road_to_hogwarts,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_road_to_hogwarts,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_road_to_hogwarts,tag=!inProperCutScene] run tag @s add discovered_road_to_hogwarts

# hogsmeade_entrance
execute as @s[tag=!discovered_hogsmeade_entrance] run scoreboard players set @s mapLocationID 50
execute as @s[tag=!discovered_hogsmeade_entrance] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_hogsmeade_entrance] discoverLocation 80
scoreboard players set @s[tag=discovered_hogsmeade_entrance] discoverLocation 50
execute as @s[tag=!discovered_hogsmeade_entrance] run tag @s add discovered_hogsmeade_entrance

# honeydukes
execute as @s[tag=!discovered_honeydukes] run scoreboard players set @s mapLocationID 51
execute as @s[tag=!discovered_honeydukes] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_honeydukes] discoverLocation 80
scoreboard players set @s[tag=discovered_honeydukes] discoverLocation 50
execute as @s[tag=!discovered_honeydukes] run tag @s add discovered_honeydukes

# library
execute as @s[tag=!discovered_library,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 2
execute as @s[tag=!discovered_library,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_library,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_library,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_library,tag=!inProperCutScene] run tag @s add discovered_library

##### Lumos
tag @s add unlockedSpells
scoreboard players set @s unlockedSpell 1
scoreboard players set @s selectedSpell 1
scoreboard players set @s currentSpell 1
scoreboard players set @s overrideRespawn 0
execute as @s[scores={playerID=1}] run scoreboard players set flitwick p1convOverride 1
execute as @s[scores={playerID=2}] run scoreboard players set flitwick p2convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set flitwick p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set flitwick p4convOverride 1
tag @s add hasLearnedLumos
gamerule doDaylightCycle true
tag @s remove maraudersMapLocked
tag @s remove lockTrackedQuest
execute unless entity @p[scores={trackedQuestID=14}] run scoreboard players set playerInLumosSpellChallenge global 0
function hp:quests/quests/challenge_chambers/open_trapdoor
execute as @s[scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0

##### Stupefy
tag @s add showingMana
tag @s add unlockedSpells
scoreboard players set @s unlockedSpell 2
tag 4d2ce650-af23-4f1c-84f0-e85fbde123a5 add disabled
scoreboard players set @s overrideRespawn 0
execute as @s[scores={playerID=1}] run scoreboard players set lupin p1convOverride 1
execute as @s[scores={playerID=2}] run scoreboard players set lupin p2convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set lupin p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set lupin p4convOverride 1
execute as @s[tag=gameLeader] run gamerule doDaylightCycle true
tag @s add hasLearnedStupefy
execute unless entity @p[scores={trackedQuestID=15}] run scoreboard players set playerInStupefySpellChallenge global 0

##### Potions
scoreboard players set @s InvItemID 3
scoreboard players set @s InvItemCount 1
function hp:inventory/give_player_item
scoreboard players set @s quickSlot1ID 3
scoreboard players set @s quickSlot2ID 0
tag @s remove preventPlacingMurtlapEssenceInQuickslot
tag @s remove potionStandLocked
execute as @s[scores={playerID=2}] run scoreboard players set snape p2convOverride 1
execute as @s[scores={playerID=1}] run scoreboard players set snape p1convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set snape p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set snape p4convOverride 1
tag @s remove collectedpotionSupplies1
tag @s remove collectedpotionSupplies2
tag @s remove collectedpotionSupplies3
tag @s remove collectedpotionSupplies4
tag @s remove collectedpotionSupplies5
tag @s remove collectedpotionSupplies6
tag @s remove hasSpokenToSnapeAfterAddingPotionToQuickSlot
tag @s remove preventConsumingMurtlapEssenceFromInventory

##### Brackium
tag @s add unlockedSpells
scoreboard players set @s unlockedSpell 3
execute as @s[scores={playerID=1}] run scoreboard players set flitwick p1convOverride 1
execute as @s[scores={playerID=2}] run scoreboard players set flitwick p2convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set flitwick p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set flitwick p4convOverride 1
tag @s remove hasSpokenToFlitwickAfterBrackiumLesson
execute as @s[tag=gameLeader] run gamerule doDaylightCycle true
tag @s remove maraudersMapLocked
tag @s remove lockTrackedQuest
tag @s add hasLearnedBrackiumEmendo
execute unless entity @p[scores={trackedQuestID=16}] run scoreboard players set playerInBrackiumEmendoSpellChallenge global 0

#### Hogsmeade
scoreboard players set extracurricularBoard1 sharedQuests 0
scoreboard players set extracurricularBoard2 sharedQuests 0
scoreboard players set extracurricularBoard3 sharedQuests 0
scoreboard players set extracurricularBoard4 sharedQuests 0
scoreboard players set hermione p1convOverride 13
scoreboard players set hermione p2convOverride 13
scoreboard players set hermione p3convOverride 13
scoreboard players set hermione p4convOverride 13

# Alohomora
tp @s 774.70 76.00 84.42 348.94 0.19
scoreboard players set @s unlockedSpell 4
scoreboard players set @s overrideRespawn 0
execute as @s[scores={playerID=1}] run scoreboard players set hermione p1convOverride 1
execute as @s[scores={playerID=2}] run scoreboard players set hermione p2convOverride 1
execute as @s[scores={playerID=3}] run scoreboard players set hermione p3convOverride 1
execute as @s[scores={playerID=4}] run scoreboard players set hermione p4convOverride 1
execute as @s[scores={playerID=1}] run scoreboard players set hooch p1convOverride 9
execute as @s[scores={playerID=2}] run scoreboard players set hooch p2convOverride 9
execute as @s[scores={playerID=3}] run scoreboard players set hooch p3convOverride 9
execute as @s[scores={playerID=4}] run scoreboard players set hooch p4convOverride 9
execute if score flyingClassIsSetUp global matches 0 run function hp:quests/quests/flying_lesson/setup_flying_lesson
execute as @s[tag=gameLeader] run gamerule doDaylightCycle true
tag @s add hasLearnedAlohomora
execute unless entity @p[scores={trackedQuestID=17}] run scoreboard players set playerInAlohomoraSpellChallenge global 0


tag @s remove activePlayer
tag @p[tag=tmpDisabledActivePlayer] add activePlayer
tag @p[tag=tmpDisabledActivePlayer] remove tmpDisabledActivePlayer