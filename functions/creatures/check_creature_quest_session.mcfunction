# If the creature belongs to a certain quest but is behind one session remove it
execute as @s[scores={questID=15}] unless score @s questSession = stupefySpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=16}] unless score @s questSession = brackiumSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=17}] unless score @s questSession = alohomoraSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=18}] unless score @s questSession = wingardiumSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=19}] unless score @s questSession = bombardaMaximaSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=20}] unless score @s questSession = veraVertoSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=21}] unless score @s questSession = expectoPatronumSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=22}] unless score @s questSession = apparitionSpellChallengeID global run function hp:creatures/remove_creature
execute as @s[scores={questID=27}] unless score @s questSession = herbologyClassID global run function hp:creatures/remove_creature
execute as @s[scores={questID=42}] unless score @s questSession = chamberOfSecretsID global run function hp:creatures/remove_creature
execute as @s[scores={questID=43}] unless score @s questSession = challengeChambersID global run function hp:creatures/remove_creature
execute as @s[scores={questID=58}] unless score @s questSession = dungeonDelvingID global run function hp:creatures/remove_creature


# Puzzles
execute as @s[scores={questID=1001}] unless score @s questSession = puzzle15ID global run function hp:creatures/remove_creature
execute as @s[scores={questID=1002}] unless score @s questSession = puzzle17ID global run function hp:creatures/remove_creature
execute as @s[scores={questID=1003}] unless score @s questSession = puzzle18ID global run function hp:creatures/remove_creature
execute as @s[scores={questID=1004}] unless score @s questSession = puzzle19ID global run function hp:creatures/remove_creature