# Doors
function hp:quests/quests/chamber_of_secrets/door_1
function hp:quests/quests/chamber_of_secrets/door_2
function hp:quests/quests/chamber_of_secrets/chamber_of_secrets_entrance
function hp:quests/quests/chamber_of_secrets/magnet_pillar

# Reset magnetic object barriers if they have been overridden
execute unless block 6466 42 936 minecraft:barrier run fill 6466 42 934 6466 46 937 minecraft:barrier
execute unless block 6474 42 927 minecraft:barrier run fill 6476 42 927 6472 49 927 minecraft:barrier

execute positioned 6443 49 940 if entity @p[tag=play,distance=..4] run scoreboard players set chamberOfScecretsSecondSpawnPointUnlocked global 1

# Summon skeletons
execute if score chamberOfSecretsHasTriggeredSkeletons1 global matches 0 positioned 6515 59 870 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_1
execute if score chamberOfSecretsHasTriggeredSkeletons2 global matches 0 positioned 6531 52 860 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_2
execute if score chamberOfSecretsHasTriggeredSkeletons3 global matches 0 positioned 6568 52 860 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_3
execute if score chamberOfSecretsHasTriggeredSkeletons4 global matches 0 positioned 6569 52 892 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_4
execute if score chamberOfSecretsHasTriggeredSkeletons5 global matches 0 positioned 6546 52 900 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_5
execute if score chamberOfSecretsHasTriggeredSkeletons6 global matches 0 positioned 6460 46 889 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_6
execute if score chamberOfSecretsHasTriggeredSkeletons7 global matches 0 positioned 6437 46 940 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_7
execute if score chamberOfSecretsHasTriggeredSkeletons8 global matches 0 positioned 6511 45 950 if entity @p[distance=..13] run function hp:quests/quests/chamber_of_secrets/summon_skeletons_8