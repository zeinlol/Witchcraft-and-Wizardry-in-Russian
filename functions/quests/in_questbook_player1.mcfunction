# This function holds commands that are only triggered when the player has their inventory open.

execute store result score @s falling run data get entity 0-0-d-0-1 FallDistance 10

# enter animation
execute as @s[scores={animTest=1..}] run scoreboard players remove @s animTest 1
# Read Quests
execute as @s[scores={animTest=0..1,questMenu=1..3,playerID=1}] as 0-0-5-0-1 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,questMenu=1..3,playerID=2}] as 0-0-5-0-2 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,questMenu=1..3,playerID=3}] as 0-0-5-0-3 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,questMenu=1..3,playerID=4}] as 0-0-5-0-4 run function hp:quests/read_quests

##############################################
#               Scrolling                    #
##############################################
tag @s remove hasScrolled

# Scroll testers
execute as 0-0-d-0-1 at @s positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[questSelect,selectUp],UUIDMost:11,UUIDLeast:1}
execute as 0-0-d-0-1 at @s positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[questSelect,selectDown],UUIDMost:11,UUIDLeast:2}
execute as 0-0-d-0-1 at @s positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invLeft\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[questSelect,selectLeft],UUIDMost:11,UUIDLeast:3}
execute as 0-0-d-0-1 at @s positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invRight\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[questSelect,selectRight],UUIDMost:11,UUIDLeast:4}

# reset scroll indicators
tag 0-0-3-0-4 remove active
tag 0-0-3-0-5 remove active

# Scroll down
execute as @s[tag=hasChangedSlotDown,tag=!hasScrolled] run function hp:quests/quest_book_scroll_down
execute at 0-0-d-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=questSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:quests/quest_book_scroll_down

# Scroll up
execute as @s[tag=hasChangedSlotUp,tag=!hasScrolled] run function hp:quests/quest_book_scroll_up
execute at 0-0-d-0-1 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=questSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:quests/quest_book_scroll_up

# Indicators
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000004 InvItemNumber matches 5.. run tag 0-0-3-0-4 add active
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000006 InvItemNumber < @s convMaxView run tag 0-0-3-0-5 add active 

# slowness is just for zoom effect thing. Levitation is to prevent viewbobbing and general akwardness. Nightvision is so the item preview wont be affected by the lightlevel of where the player is standing.
effect give @s minecraft:slowness 100 2 true
effect give @s minecraft:levitation 100 255 true
tag @s add isLevitating
execute as @s[scores={animTest=0}] run effect give @s minecraft:night_vision 100 10 true

# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity 0-0-d-0-1 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-d-0-1 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-d-0-1 as @s[distance=0.001..] run tag @s add lookTP
execute as @s[tag=lookTP] run tp @s 0-0-d-0-1
tag @s[tag=lookTP] remove lookTP

##############################################
#               Functionality                #
##############################################

execute as @s[tag=hasPressedF] run function hp:quests/quest_book_press_f

# Read again if something has changed. This is kind of hacky and bad and obviously not great for performance, but I didn't have multiplayer in mind when I did this, and you get weird visual delays and all sorts of odd stuff happening without this fix.
execute as @s[scores={animTest=0..1,viewChanged=1..,playerID=1}] as 0-0-5-0-1 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,viewChanged=1..,playerID=2}] as 0-0-5-0-2 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,viewChanged=1..,playerID=3}] as 0-0-5-0-3 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1,viewChanged=1..,playerID=4}] as 0-0-5-0-4 run function hp:quests/read_quests
execute as @s[scores={animTest=0..1}] run function hp:quests/tellraw_questbook
scoreboard players set @s[scores={viewChanged=1..}] viewChanged 0

# When pressing shift
execute as @s[tag=isSneaking,scores={shiftTest=1,questMenu=0}] run tag @s add exitQuestBook
execute as @s[tag=isSneaking,scores={shiftTest=1,questMenu=1..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=isSneaking,scores={shiftTest=1,questMenu=1..}] run scoreboard players set @s questMenu 0



# Cleanup for next player
tag 0-0-1-0-1 remove isTrackedQuest
tag 0-0-1-0-2 remove isTrackedQuest
tag 0-0-1-0-3 remove isTrackedQuest
tag 0-0-1-0-4 remove isTrackedQuest
tag 0-0-1-0-5 remove isTrackedQuest
tag 0-0-1-0-6 remove isTrackedQuest
tag 0-0-2-0-1 remove isTrackedQuest
tag 0-0-2-0-2 remove isTrackedQuest
tag 0-0-2-0-3 remove isTrackedQuest
tag 0-0-2-0-4 remove isTrackedQuest
tag 0-0-2-0-5 remove isTrackedQuest
tag 0-0-2-0-6 remove isTrackedQuest

tag @s[tag=delayQuestBookOneTick] remove delayQuestBookOneTick

kill 0-0-b-0-1
kill 0-0-b-0-2
kill 0-0-b-0-3
kill 0-0-b-0-4