execute as @e[tag=keyCreature] run function hp:quests/quests/key_creature
execute unless score challengeChambersKeys global matches 1 if entity @p[x=1818,y=26,z=576,dx=119,dy=70,dz=164] run function hp:quests/quests/challenge_chambers/summon_flying_keys

# Fire resistance potion
execute as @a[scores={fireResistance=1..}] run scoreboard players operation @s fireResistance -= systick time

# Make fire deal more damage
execute as @a[x=1946,y=22,z=798,dx=25,dy=4,dz=2,tag=play] unless score @s fireResistance matches 1.. run effect give @s minecraft:instant_damage 1 2


# unlock second respawn point
execute if score challengeChambersSecondSpawnPointUnlocked global matches 0 positioned 1901 34 761 if entity @p[distance=..7] run scoreboard players set challengeChambersSecondSpawnPointUnlocked global 1

# Spawn troll
execute if score challengeChambersHasTriggeredTroll global matches 0 positioned 1901 34 761 as @p[distance=..10] run function hp:quests/quests/challenge_chambers/summon_troll

# Chess
function hp:quests/quests/challenge_chambers/door_1
function hp:quests/quests/challenge_chambers/magnet_block_1
function hp:quests/quests/challenge_chambers/magnet_block_2

scoreboard players set challengeChambersDoor1Direction global 0
execute positioned 1914 34 695 as 6d12bfce-9ee4-465f-88c5-4df31db322da if entity @s[distance=..1] positioned 1889 35 695 as 4480cae8-adce-4673-b868-7087eb752050 if entity @s[distance=..1] positioned 1914 35 720 as 96ac68cb-1036-46e0-aba7-86d403f3902c if entity @s[distance=..1] positioned 1889 34 720 as 6c0f5e05-7f69-443b-a018-6c8a841753f1 if entity @s[distance=..1] run scoreboard players set challengeChambersDoor1Direction global 1