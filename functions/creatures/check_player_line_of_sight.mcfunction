tag @s add clearLineOfSight
tag @s remove clearLineOfSightToTarget

execute if entity @s[tag=clearLineOfSight] as @s at @s run summon armor_stand ~ ~ ~ {Tags:[lineOfSightChecker],Invulnerable:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=play]
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] as @e[tag=lineOfSightChecker,limit=1] at @s run tp @s ^ ^ ^0.25
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] unless block ~ ~ ~ #hp:passthrough run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[tag=!play] run tag @s remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] positioned ~ -1 ~ if entity @e[tag=creature,distance=..1] run tag @s[tag=!clearLineOfSightToTarget] remove clearLineOfSight
execute if entity @s[tag=clearLineOfSight] at @e[tag=lineOfSightChecker,limit=1] if entity @p[distance=..1,tag=play] run tag @s add clearLineOfSightToTarget


execute at @s if entity @p[distance=20..] run tag @s remove clearLineOfSight
execute at @s if entity @s[nbt={OnGround:0b}] run tag @s remove clearLineOfSight


kill @e[tag=lineOfSightChecker]