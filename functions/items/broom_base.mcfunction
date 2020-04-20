tag @s add activeBroomElytra

# Check if broom is still valid (if a new broom was placed while it was in unloaded chunks) and delete it if it is not
execute if entity @s[tag=!spellChallengeBroom] unless score @s tmp2 matches 1.. as @a at @s if score @s broomID = @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] broomID run tag @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] add ownerExists
execute if entity @s[tag=!spellChallengeBroom] unless score @s tmp2 matches 1.. as @s[tag=!ownerExists] run scoreboard players set @s tmp2 2

execute if entity @s[tag=spellChallengeBroom] unless score @s tmp2 matches 1.. unless score @s broomQuestID = challengeChambersID global run scoreboard players set @s tmp2 2
tag @s remove ownerExists

execute as @a[tag=flyingBroom,tag=inGame] at @s if score @s flyingBroomID = @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] broomID run tag @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] add isBeingRidden

# Elytra
data merge entity @s[tag=!isBeingRidden] {ArmorItems:[{},{},{},{}],Marker:1b}
data merge entity @s[tag=isBeingRidden] {ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}],Marker:0b}
data merge entity @s {FallFlying:1b}

# See if the broom is being flown and prevent interaction from other players
execute as @s[tag=isBeingRidden] at @s run tag @e[tag=broomVisual,limit=1,sort=nearest] remove interactable
execute as @s[tag=!isBeingRidden] at @s run tag @e[tag=broomVisual,limit=1,sort=nearest] add interactable

tag @s remove isBeingRidden


execute unless score tpCheck global matches 1 at @s run tp @e[tag=broomVisual,limit=1,sort=nearest] @e[tag=broomElytra,limit=1,sort=nearest]
execute if score tpCheck global matches 1 at @s as @e[tag=broomVisual] if score @s broomID = @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] broomID run tp @s ~ ~ ~ ~ ~
data merge entity @s {FallDistance:0f}

# Destroy over a couple of ticks so I can prevent the death cloud from the pig and so it doesn't blnk white for a second
execute as @s[scores={tmp2=2}] at @s run tag @e[tag=broomVisual,limit=1,sort=nearest] remove interactable
execute as @s[scores={tmp2=2}] at @s run data merge entity @e[tag=broomVisual,limit=1,sort=nearest] {Glowing:0b,ArmorItems:[{},{},{},{}],Marker:1b}
execute as @s[scores={tmp2=2}] at @s positioned ~ ~0.5 ~ as @p[distance=..1.5] at @s run tp @p ~ ~ ~
execute as @s[scores={tmp2=2}] at @s run tp @e[tag=broomVisual,limit=1,sort=nearest] ~ ~-10 ~
execute as @s[scores={tmp2=2}] at @s run tp @e[tag=broomSaddle,limit=1,sort=nearest] ~ ~-10 ~
execute as @s[scores={tmp2=2}] at @s run tp @s ~ ~-10 ~
execute as @s[scores={tmp2=1}] at @s run kill @e[tag=broomVisual,limit=1,sort=nearest]
execute as @s[scores={tmp2=1}] at @s run kill @e[tag=broomSaddle,limit=1,sort=nearest]
execute as @s[scores={tmp2=1}] at @s run kill @s
execute as @s[scores={tmp2=2..}] run scoreboard players remove @s tmp2 1

 
# If the pig somehow stops riding the armorstand (which sometimes happens when it touches water)
scoreboard players set @s tmp 0
execute unless score @s tmp2 matches 1.. at @s store success score @s tmp run data get entity @e[tag=broomVisual,limit=1,sort=nearest] Passengers[0]
execute unless score @s tmp2 matches 1.. as @s[scores={tmp=0}] at @s as @p[tag=jumpedOffBroomThisTick,tag=inGame] run tp @s
execute unless score @s tmp2 matches 1.. as @s[scores={tmp=0}] at @s run scoreboard players set @s tmp2 2
tag @a[tag=jumpedOffBroomThisTick] remove jumpedOffBroomThisTick

tag @s remove activeBroomElytra