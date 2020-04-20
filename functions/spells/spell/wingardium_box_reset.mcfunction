# This checks if the SCSessionID (spell challenge session id) for the cube's SCSession matches the global variable. If not the cube is outdated and gets removed.
execute if score @s SCSession matches 1 unless score @s SCSessionID = wingardiumSpellChallengeID global run function hp:spells/spell/wingardium_remove
execute if score @s SCSession matches 2 unless score @s SCSessionID = bombardaMaximaSpellChallengeID global run function hp:spells/spell/wingardium_remove
execute if score @s SCSession matches 3 unless score @s SCSessionID = apparitionSpellChallengeID global run function hp:spells/spell/wingardium_remove
execute if score @s SCSession matches 4 unless score @s SCSessionID = undergoundLibraryID global run function hp:spells/spell/wingardium_remove
execute if score @s SCSession matches 5 unless score @s SCSessionID = chamberOfSecretsID global run function hp:spells/spell/wingardium_remove
execute if score @s SCSession matches 6 unless score @s SCSessionID = dungeonDelvingID global run function hp:spells/spell/wingardium_remove