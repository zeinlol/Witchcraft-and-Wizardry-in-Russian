# Executed as chest with tag "openedChest"

# Fix when player logs out while in chest
tag @s add focusChest
execute as @a if score @s playerID = @e[type=armor_stand,tag=focusChest,limit=1] playerID run tag @e[type=armor_stand,tag=focusChest,limit=1] add playerExists
tag @s remove focusChest
tag @s[tag=!playerExists] add closeChest
tag @s remove playerExists

# Test if the score is blank (minecraft has reset the scoreboard because it felt like it ughh) Unelegant but whatever.
execute unless score @s animTest matches -1000..1000 run scoreboard players set @s animTest 0

# Chest anination
execute if entity @s[tag=largeChest,tag=!closeChest,scores={animTest=..10}] run scoreboard players add @s animTest 1
execute if entity @s[tag=largeChest,tag=closeChest,scores={animTest=1..}] run scoreboard players remove @s animTest 1
execute if entity @s[tag=smallChest,tag=!closeChest,scores={animTest=0}] run scoreboard players set @s animTest 1
execute if entity @s[tag=smallChest,tag=closeChest,scores={animTest=1}] run scoreboard players set @s animTest 0
execute if entity @s[tag=smallChest,tag=closeChest,scores={animTest=0}] run tag @s remove openedChest

# Animation
execute as @s[tag=largeChest,scores={animTest=0}] run data merge entity @e[type=armor_stand,tag=inventory,limit=1,tag=playingOpenAnimation] {Pose:{Head:[90f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=0}] run tag @s remove closeChest
execute as @s[tag=largeChest,scores={animTest=0}] run tag @s remove openedChest

execute as @s[tag=largeChest,scores={animTest=1}] run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=2}] run data merge entity @s {Pose:{Head:[89f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=3}] run data merge entity @s {Pose:{Head:[88f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=4}] run data merge entity @s {Pose:{Head:[86f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=5}] run data merge entity @s {Pose:{Head:[83f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=6}] run data merge entity @s {Pose:{Head:[80f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=7}] run data merge entity @s {Pose:{Head:[77f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=8}] run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=9}] run data merge entity @s {Pose:{Head:[74f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=10}] run data merge entity @s {Pose:{Head:[73f,0f,0f]}}
execute as @s[tag=largeChest,scores={animTest=11}] run data merge entity @s {Pose:{Head:[72f,0f,0f]}}

execute as @s[tag=smallChest,scores={animTest=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 56
execute as @s[tag=smallChest,scores={animTest=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 55

# execute as @s[tag=smallChest,scores={animTest=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,Damage:607}}]}
# execute as @s[tag=smallChest,scores={animTest=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,Damage:608}}]}