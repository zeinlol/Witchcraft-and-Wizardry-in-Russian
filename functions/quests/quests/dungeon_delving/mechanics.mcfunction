function hp:quests/quests/dungeon_delving/arrow_trap_1
function hp:quests/quests/dungeon_delving/arrow_trap_2
function hp:quests/quests/dungeon_delving/arrow_trap_3
function hp:quests/quests/dungeon_delving/arrow_trap_4
function hp:quests/quests/dungeon_delving/arrow_trap_5
function hp:quests/quests/dungeon_delving/arrow_trap_6

function hp:quests/quests/dungeon_delving/door_1
function hp:quests/quests/dungeon_delving/door_2
function hp:quests/quests/dungeon_delving/door_3

execute if score dungeonDelvingWaterTick global matches 1.. run scoreboard players remove dungeonDelvingWaterTick global 1
execute if score dungeonDelvingWaterTick global matches 0 run function hp:quests/quests/dungeon_delving/rising_water
execute if score dungeonDelvingWaterTick global matches 0 run scoreboard players set dungeonDelvingWaterTick global 5


execute if score dungeonDelving2Direction global matches 1 unless score 85c0b965-75f0-40e2-841c-6afa0cdedab5 pillarState matches 4 run scoreboard players set dungeonDelving2Direction global 0
execute if score dungeonDelving2Direction global matches 1 unless score bbf7bd73-7d1a-4fed-952b-7e59851237ef pillarState matches 4 run scoreboard players set dungeonDelving2Direction global 0
execute if score dungeonDelving2Direction global matches 0 if score 85c0b965-75f0-40e2-841c-6afa0cdedab5 pillarState matches 4 if score bbf7bd73-7d1a-4fed-952b-7e59851237ef pillarState matches 4 run scoreboard players set dungeonDelving2Direction global 1

execute if score dungeonDelving3Direction global matches 1 unless score 081d3209-57d8-4c93-aff2-591a7f2219d3 pillarState matches 4 run scoreboard players set dungeonDelving3Direction global 0
execute if score dungeonDelving3Direction global matches 0 if score 081d3209-57d8-4c93-aff2-591a7f2219d3 pillarState matches 4 run scoreboard players set dungeonDelving3Direction global 1


execute positioned 1807.09 86.00 885.36 if entity @p[tag=play,distance=..7] run scoreboard players set dungeonDelvingSecondSpawnPointUnlocked global 1
execute positioned 1778.36 52.00 859.81 if entity @p[tag=play,distance=..7] run scoreboard players set dungeonDelvingThirdSpawnPointUnlocked global 1
execute positioned 1664.60 48.00 841.83 if entity @p[tag=play,distance=..7] run scoreboard players set dungeonDelvingFourthSpawnPointUnlocked global 1
execute positioned 1732.61 51.00 883.49 if entity @p[tag=play,distance=..7] run scoreboard players set dungeonDelvingFifthSpawnPointUnlocked global 1



# Summon enemies
execute if score dungeonDelvingHasTriggeredEnemies1 global matches 0 positioned 1835 95 926 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_1
execute if score dungeonDelvingHasTriggeredEnemies2 global matches 0 positioned 1863 98 922 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_2
execute if score dungeonDelvingHasTriggeredEnemies3 global matches 0 positioned 1838 96 914 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_3
execute if score dungeonDelvingHasTriggeredEnemies4 global matches 0 positioned 1817 85 900 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_4
execute if score dungeonDelvingHasTriggeredEnemies5 global matches 0 positioned 1799 82 885 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_5
execute if score dungeonDelvingHasTriggeredEnemies6 global matches 0 positioned 1791 79 885 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_6
execute if score dungeonDelvingHasTriggeredEnemies7 global matches 0 positioned 1767 52 863 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_7
execute if score dungeonDelvingHasTriggeredEnemies8 global matches 0 positioned 1731 50 806 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_8
execute if score dungeonDelvingHasTriggeredEnemies9 global matches 0 positioned 1664 50 855 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_9
execute if score dungeonDelvingHasTriggeredEnemies10 global matches 0 positioned 1701 49 878 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_10
execute if score dungeonDelvingHasTriggeredEnemies11 global matches 0 positioned 1701 49 878 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_11
execute if score dungeonDelvingHasTriggeredEnemies12 global matches 0 positioned 1745 37 894 if entity @p[distance=..13] run function hp:quests/quests/dungeon_delving/summon_enemies_12
execute if score dungeonDelvingHasTriggeredEnemies13 global matches 0 positioned 1807 85 884 if entity @p[distance=..8.5] run function hp:quests/quests/dungeon_delving/summon_enemies_13