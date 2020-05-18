execute positioned 5999 96 6 run function hp:creatures/troll/summon_troll
execute as @e[tag=trollCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumTrollWaitingToBeTeleported
execute as @e[tag=trollCreatureIsBeingSummoned,sort=nearest] run tag @s remove trollCreatureIsBeingSummoned