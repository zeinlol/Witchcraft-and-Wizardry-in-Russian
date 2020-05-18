function hp:misc/reset_player

tag @p[tag=activePlayer] add tmpDisabledActivePlayer
tag @p[tag=activePlayer] remove tmpDisabledActivePlayer
tag @s add activePlayer

scoreboard players set @s hotbar_stage 10
scoreboard players set @s money 500
scoreboard players set @s trackedQuestID 14
scoreboard players set @s respawnID 0
scoreboard players set @s levitationBug 0
scoreboard players set @s overrideRespawn 0
scoreboard players set @s spellCooldown1 0
scoreboard players set @s spellCooldown2 0
scoreboard players set @s spellCooldown3 0
execute as @s[scores={playerID=1}] run data merge entity @e[tag=player1Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.lumos: 1, invItem.MurtlapEssence.count: 10, invItem.PotionOfMagicka.count: 10, invItem.ElixirOfLife.count: 10, invItem.Apple.count: 10, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=2}] run data merge entity @e[tag=player2Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.lumos: 1, invItem.MurtlapEssence.count: 10, invItem.PotionOfMagicka.count: 10, invItem.ElixirOfLife.count: 10, invItem.Apple.count: 10, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=3}] run data merge entity @e[tag=player3Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.lumos: 1, invItem.MurtlapEssence.count: 10, invItem.PotionOfMagicka.count: 10, invItem.ElixirOfLife.count: 10, invItem.Apple.count: 10, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}
execute as @s[scores={playerID=4}] run data merge entity @e[tag=player4Inventory,limit=1] {ArmorItems: [{}, {}, {}, {id: "minecraft:redstone", Count: 1b, tag: {quests.lumos: 1, invItem.MurtlapEssence.count: 10, invItem.PotionOfMagicka.count: 10, invItem.ElixirOfLife.count: 10, invItem.Apple.count: 10, invItem.HouseRobe.count: 1, invItem.HouseScarf.count: 1, invItem.TrousersWithBelt.count: 1, invItem.HogwartsLetter.count: 1, invItem.HogwartsSupplies.count: 1, invItem.HogwartsTicket.count: 1}}]}

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
tag @s remove hoverLocked

tag @s remove greatHallFull
tag @s remove onlyCommonRoomIsUnlocked

scoreboard players set @s clothesSlot1ID 19
scoreboard players set @s clothesSlot2ID 18
scoreboard players set @s clothesSlot3ID 27

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






# Quests
execute as @s[scores={playerID=1}] run scoreboard players set toadHunt1 p1Quests 0
execute as @s[scores={playerID=2}] run scoreboard players set toadHunt1 p2Quests 0
execute as @s[scores={playerID=3}] run scoreboard players set toadHunt1 p3Quests 0
execute as @s[scores={playerID=4}] run scoreboard players set toadHunt1 p4Quests 0

# function hp:discovery/reset_discovered_locations

tag @s add showingMana
scoreboard players set @s maxManaAmount 10000
scoreboard players set @s manaAmount 10000
scoreboard players set @s manaAnimation 1
scoreboard players set @s manaDelayDisplay
scoreboard players set @s pickUpTimer 0
scoreboard players set @s discoverLocation 0
scoreboard players set @s discoveryTimer 0
scoreboard players set @s house 2
scoreboard players set @s heartBeatLoop 1
scoreboard players set @s checkAmbience 0
scoreboard players set @s damageOverlay 0

function hp:misc/update_bossbars

tag @s remove activePlayer
tag @p[tag=tmpDisabledActivePlayer] add activePlayer
tag @p[tag=tmpDisabledActivePlayer] remove tmpDisabledActivePlayer