# Make filch walk back to office after the player has taken the key
tag @s remove cutsceneStop
tag @s remove ignorePlayers
scoreboard players set undergroundLibraryResetFilch sharedQuests 0
tag @e[tag=filchFpActor,limit=1] add interactable