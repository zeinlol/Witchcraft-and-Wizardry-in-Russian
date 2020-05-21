##############################################
# Underground Library
##############################################
scoreboard players set @s questID 24
scoreboard players operation @s questState = undergroundLibrary sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Speak to Батильда Бэгшот in Hogsmeade

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1488,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] at @s unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2878 54 746
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3047 60 -462
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 834.49 49.00 -1731.57
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5122.86 80.38 2094.01
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6790 36 3255
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=35},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,convState=1,conv=35}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Lupin sent me. He said you could use my help?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest,tag=hasTalkedToBathildaBagshotAboutTheScroll] run scoreboard players set undergroundLibrary sharedQuests 2

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set bathildaBagshot p1convOverride 11
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set bathildaBagshot p2convOverride 11
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set bathildaBagshot p3convOverride 11
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set bathildaBagshot p4convOverride 11
execute as @s[tag=newState] run tag @s remove hasTalkedToBathildaBagshotAboutTheScroll
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Ask Professor Binns about the underground library

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1487,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=2,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=2,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 670 44 231
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63
execute as @s[scores={questState=2,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] at @s unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 62 -5
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=2,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850 36 3101
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=385},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=1,conv=385}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Do you know about an underground library?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 5
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



### Trigger ###
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasAskedProfessorBinnsAboutTheUndergroundLibrary] run scoreboard players set undergroundLibrary sharedQuests 3

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasAskedProfessorBinnsAboutTheUndergroundLibrary
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Get permission to the restricted section from the librarian, Irma Pence.

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1486,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 778 75 71
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] at @s unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 62 -5
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850 36 3101
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=36},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=1,conv=36}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Мне нужен доступ к закрытой секции\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Function ###


### Trigger ###
# Bribe (boring :P)
execute as @s[scores={questState=3},tag=!isFastTravelling,tag=!playingQuestAnim,tag=!inConversation,tag=bribeIrmaPinceForTheKey] run scoreboard players set undergroundLibrary sharedQuests 7

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasAskedAboutPermissionToTheRestrictedSectionOfTheLibrary
execute as @s[tag=newState] run tag @s remove bribeIrmaPinceForTheKey
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState

# Steal key
execute as @s[scores={questState=3},tag=!isFastTravelling,tag=!playingQuestAnim,tag=!inConversation,tag=willStealKeyFromFilch] run scoreboard players set undergroundLibrary sharedQuests 4

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s questTextTimer 150
execute as @s[tag=newState,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":"Может быть ключ для запретной секции есть в кабинете Аргуса Филча","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":"Может быть ключ для запретной секции есть в кабинете Аргуса Филча","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":"Может быть ключ для запретной секции есть в кабинете Аргуса Филча","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":"Может быть ключ для запретной секции есть в кабинете Аргуса Филча","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set officeFilch p1convOverride 3
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set officeFilch p2convOverride 3
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set officeFilch p3convOverride 3
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set officeFilch p4convOverride 3
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set filch p1convOverride 1
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set filch p2convOverride 1
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set filch p3convOverride 1
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set filch p4convOverride 1
execute as @s[tag=newState] run tag @s remove willStealKeyFromFilch
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Locate the caretakers office

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1485,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 772 64 145
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Trigger ###
execute positioned as @s[x=770,y=64,z=142,dx=4,dy=5,dz=6,scores={questState=4},tag=inNormalState] run scoreboard players set undergroundLibrary sharedQuests 5

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set officeFilch p1convOverride 3
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set officeFilch p2convOverride 3
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set officeFilch p3convOverride 3
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set officeFilch p4convOverride 3
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set filch p1convOverride 1
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set filch p2convOverride 1
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set filch p3convOverride 1
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set filch p4convOverride 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Find a way to get rid of Аргус Филч

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1484,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 772.17 65.00 145.59
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=5},tag=npc,tag=!inConversationNPC,tag=filchFpActor] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Trigger ###
execute as @s[scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=!inConversation,tag=hasDistractedFilchToStealKeyToRestrictedSection] run scoreboard players set undergroundLibrary sharedQuests 6

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run tag @e[tag=filchFpActor,limit=1] remove interactable
execute as @s[tag=newState] run tag @e[tag=filchFpEngine,limit=1] remove cutsceneStop
execute as @s[tag=newState] run tag @e[tag=filchFpEngine,limit=1] add ignorePlayers
execute as @s[tag=newState] run tag @e[tag=filchFpEngine,limit=1] remove interrupt
execute as @s[tag=newState] run tag @e[tag=filchFpEngine,limit=1] remove stop
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasDistractedFilchToStealKeyToRestrictedSection
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set officeFilch p1convOverride 1
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set officeFilch p2convOverride 1
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set officeFilch p3convOverride 1
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set officeFilch p4convOverride 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set filch p1convOverride 1
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set filch p2convOverride 1
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set filch p3convOverride 1
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set filch p4convOverride 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Steal the key

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1483,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 773 65 145
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute as @s[scores={questState=6}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=restrictedSectionKey] add questHover
execute as @s[scores={questState=6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch



### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=restrictedSectionKey] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=restrictedSectionKey] at @s run playsound minecraft:custom.ui.inventory.game_inventory.key.picked_up_key master @a ~ ~ ~ 2 1
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=restrictedSectionKey] run tag @s add hasPickedUpFilchKey


execute as @s[scores={questState=6},tag=isTrackedQuest,tag=hasPickedUpFilchKey] run scoreboard players set undergroundLibraryResetFilch sharedQuests 1
execute as @s[scores={questState=6},tag=isTrackedQuest,tag=hasPickedUpFilchKey] run scoreboard players set undergroundLibrary sharedQuests 7

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 7 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasPickedUpFilchKey
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Go to the restricted Section

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1482,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 788 75 90
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute as @s[scores={questState=7}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=restrictedSectionLock] add questHover
# execute as @s[scores={questState=7}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=restrictedSectionLock] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=restrictedSectionLock] at @s run playsound minecraft:custom.spell.alohomora.lock master @a
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=restrictedSectionLock] run tag @s add hasGainedAccesToTheRestrictedSection

execute as @s[scores={questState=7},tag=isTrackedQuest,tag=hasGainedAccesToTheRestrictedSection] run scoreboard players set undergroundLibrary sharedQuests 8

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 8 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasGainedAccesToTheRestrictedSection
execute as @s[tag=newState,tag=gameLeader] run scoreboard players set restricedSectionDoorDirection global 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 8 ###########################################################################################
#############
# learn the location of the library

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1481,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2850.30 55.50 813.59
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute as @s[scores={questState=8}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=undergroundLibraryMap] add questHover
execute as @s[scores={questState=8}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=undergroundLibraryMap] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=undergroundLibraryMap] at @s run playsound minecraft:custom.inventory.pickup.paper master @a
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=undergroundLibraryMap] run tag @s add hasLearnedTheLocationOfTheUndergroundLibrary


### Trigger ###
execute as @s[scores={questState=8},tag=isTrackedQuest,tag=hasLearnedTheLocationOfTheUndergroundLibrary] run scoreboard players set undergroundLibrary sharedQuests 9

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 9 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s questTextTimer 200
execute as @s[tag=newState,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":"That's it! The map to the underground Library. There's an entrance in the Forbidden Forest.","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":"That's it! The map to the underground Library. There's an entrance in the Forbidden Forest.","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":"That's it! The map to the underground Library. There's an entrance in the Forbidden Forest.","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":"That's it! The map to the underground Library. There's an entrance in the Forbidden Forest.","bold":false,"color":"gold"}
execute as @s[tag=newState] run tag @s remove hasLearnedTheLocationOfTheUndergroundLibrary
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 9 ###########################################################################################
#############
# Отправиться в the underground library

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1480,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9,lastRegion=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9,lastRegion=1},tag=isTrackedQuest] unless entity @s[x=46,y=0,z=-21,dx=44,dy=13,dz=41] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 57 16 -11
execute as @s[scores={questState=9,lastRegion=1},tag=isTrackedQuest] if entity @s[x=46,y=0,z=-21,dx=44,dy=13,dz=41] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 66 1 8
execute as @s[scores={questState=9,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=9,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


# Special selection
execute as @s[scores={questState=9}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=undergroundLibraryEntrance] add questHover
execute as @s[scores={questState=9}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=undergroundLibraryEntrance] run scoreboard players set undergroundLibraryEntranceDirection global 1

### Trigger ###
execute positioned 6989 56 4999 as @s[distance=..10,scores={questState=9},tag=inNormalState] run scoreboard players set undergroundLibrary sharedQuests 10

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 10 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 10 ###########################################################################################
#############
# Collect the scroll

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1479,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 7025 56 4999
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# Special selection
execute as @s[scores={questState=10}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=undergroundLibraryScroll] add questHover
execute as @s[scores={questState=10}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=undergroundLibraryScroll] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=undergroundLibraryScroll] at @s run playsound minecraft:custom.inventory.pickup.paper master @a
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=undergroundLibraryScroll] run tag @s add hasCollectedTheUndergroundLibraryScroll

### Trigger ###
execute as @s[scores={questState=10},tag=isTrackedQuest,tag=hasCollectedTheUndergroundLibraryScroll] run scoreboard players set undergroundLibrary sharedQuests 11

execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches 11 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set bathildaBagshot p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set bathildaBagshot p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set bathildaBagshot p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set bathildaBagshot p4convOverride 12
execute as @s[tag=newState] run tag @s remove hasCollectedTheUndergroundLibraryScroll
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 11 ###########################################################################################
#############
# Deliver the scroll to Батильда Бэгшот

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1478,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=11,lastRegion=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6936 71 4912
execute as @s[scores={questState=11,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=11,lastRegion=1},tag=isTrackedQuest] unless entity @s[x=46,y=0,z=-21,dx=44,dy=13,dz=41] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=11,lastRegion=1},tag=isTrackedQuest] if entity @s[x=46,y=0,z=-21,dx=44,dy=13,dz=41] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 57 16 -11
execute as @s[scores={questState=11,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=11,lastRegion=2},tag=isTrackedQuest] at @s unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2878 54 746
execute as @s[scores={questState=11,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3047 60 -462
execute as @s[scores={questState=11,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=11,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 834.49 49.00 -1731.57
execute as @s[scores={questState=11,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=11,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=11,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5122.86 80.38 2094.01
execute as @s[scores={questState=11,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=11,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=11,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=11,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=11,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=11,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6790 36 3255

execute as @s[scores={questState=11,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=35},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


execute as @s[scores={questState=11},tag=inNormalState,tag=hasCompletedUndergroundLibraryQuest] run scoreboard players set undergroundLibrary sharedQuests -1
execute as @s[scores={playerID=1}] unless score undergroundLibrary p1Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score undergroundLibrary p2Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score undergroundLibrary p3Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score undergroundLibrary p4Quests = undergroundLibrary sharedQuests if score undergroundLibrary sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players add @s money 400
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary sharedQuests -1
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set bathildaBagshot p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set bathildaBagshot p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set bathildaBagshot p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set bathildaBagshot p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasCompletedUndergroundLibraryQuest
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation undergroundLibrary p1Quests = undergroundLibrary sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation undergroundLibrary p2Quests = undergroundLibrary sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation undergroundLibrary p3Quests = undergroundLibrary sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation undergroundLibrary p4Quests = undergroundLibrary sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest