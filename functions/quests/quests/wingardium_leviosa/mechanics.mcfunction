# This hold area specific functions for the wingardium spell challenge

execute as @e[tag=wingardium,scores={wingardiumBox=1}] unless score @s wingardiumBoxID = wingardiumBox1ID global run function hp:spells/spell/wingardium_dissolve
execute as @e[tag=wingardium,scores={wingardiumBox=2}] unless score @s wingardiumBoxID = wingardiumBox2ID global run function hp:spells/spell/wingardium_dissolve
execute as @e[tag=wingardium,scores={wingardiumBox=3}] unless score @s wingardiumBoxID = wingardiumBox3ID global run function hp:spells/spell/wingardium_dissolve
execute as @e[tag=wingardium,scores={wingardiumBox=4}] unless score @s wingardiumBoxID = wingardiumBox4ID global run function hp:spells/spell/wingardium_dissolve
execute as @e[tag=wingardium,scores={wingardiumBox=5}] unless score @s wingardiumBoxID = wingardiumBox5ID global run function hp:spells/spell/wingardium_dissolve

function hp:quests/quests/wingardium_leviosa/stair_1
function hp:quests/quests/wingardium_leviosa/stair_2
function hp:quests/quests/wingardium_leviosa/stair_3
function hp:quests/quests/wingardium_leviosa/stair_4

function hp:quests/quests/wingardium_leviosa/big_door

function hp:quests/quests/wingardium_leviosa/drop_bridge

execute as 8b7ab45d-a052-4e50-bb28-3b15b00cc5a4 run function hp:quests/quests/wingardium_leviosa/rotating_pillar
function hp:quests/quests/wingardium_leviosa/door_1
function hp:quests/quests/wingardium_leviosa/door_2
function hp:quests/quests/wingardium_leviosa/door_3
function hp:quests/quests/wingardium_leviosa/door_4

function hp:quests/quests/wingardium_leviosa/pillar_1
function hp:quests/quests/wingardium_leviosa/pillar_2
function hp:quests/quests/wingardium_leviosa/pillar_3
function hp:quests/quests/wingardium_leviosa/pillar_4
function hp:quests/quests/wingardium_leviosa/pillar_5


execute as @e[tag=wingardiumBox,x=7121,y=48,z=-8,dx=22,dy=9,dz=7] run tag @s add wingardiumGlitchFix1

# Hack to keep the box inside the glass if it glitches out
execute as @e[tag=wingardium,tag=!wingardiumInSwitch,x=7016,y=0,z=-9,dx=60,dy=39,dz=9] at @s run tp @s ~ ~1 ~
execute as @e[tag=wingardium,tag=!wingardiumInSwitch,tag=wingardiumGlitchFix1,x=7016,y=0,z=-24,dx=128,dy=93,dz=15] at @s run tp @s ~ ~ ~0.5
execute as @e[tag=wingardium,tag=!wingardiumInSwitch,tag=wingardiumGlitchFix1,x=7117,y=51,z=-10,dx=3,dy=3,dz=3] at @s run tp @s ~0.25 ~ ~
execute as @e[tag=wingardium,tag=!wingardiumInSwitch,x=7077,y=0,z=-9,dx=23,dy=42,dz=8] at @s run tp @s ~ ~1 ~
execute as @e[tag=wingardium,tag=!wingardiumInSwitch,x=7119,y=0,z=-11,dx=26,dy=47,dz=11] at @s run tp @s ~ ~1 ~





# Spawn monster books when moving wingardium block
execute if score wingardiumHasTriggeredMonsterBook global matches 0 if entity @e[tag=monsterBookTriggerBox,tag=wingardiumBoxPickedUp] run function hp:quests/quests/wingardium_leviosa/summon_monster_books

# First room cube
execute as @e[tag=firstRoomWingardiumCube,limit=1] unless entity @s[x=6914,y=31,z=-46,dx=25,dy=23,dz=25] run function hp:quests/quests/wingardium_leviosa/summon_first_room_cube

# Second room cube spawn to prevent other players being locked behind if a cube is moved into the next room
execute as @e[tag=secondRoomWingardiumCube] at @s if entity @s[x=7009,y=35,z=-36,dx=50,dy=40,dz=36] run function hp:quests/quests/wingardium_leviosa/summon_second_room_cube