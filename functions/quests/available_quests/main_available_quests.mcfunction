# I hadn't really considered that I needed this, so it's implemented sort of akwardly. If I had had this in mind from the beginning I could've probably come up with a more elegant solution


# Wonky placement for adding the option to change your patronus after you've learned the patronus charm
execute as @s[tag=hasLearnedExpectoPatronum,tag=inConversation,scores={convState=1,conv=4}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"Мой Патронус должен выглядеть иначе\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 43
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Wonky placement for adding the option to enter площадь Гриммо
execute if score unlockedGrimmauldPlace sharedQuests matches 1 positioned 2456 60 -218 as @s[distance=..6,tag=inConversation,scores={convState=8,conv=220}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"Хочу посетить пл. Гриммо 12\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 25
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Burrow
execute if score unlockedBurrow sharedQuests matches 1 as @s[tag=inConversation,scores={convState=1,conv=13}] unless entity @s[x=5386,y=16,z=4527,dx=12,dy=8,dz=11] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"√ Хочу отправиться в Нору\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 18
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Дом Лавгудов
execute if score unlockedLovegoodResidence sharedQuests matches 1 as @s[tag=inConversation,scores={convState=1,conv=16}] unless score @s lastRegion matches 10 run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"√ Хочу отправиться в Дом Лавгудов\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 16
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Malfoy Manor
execute if score unlockedMalfoyManor sharedQuests matches 1 as @s[tag=inConversation,scores={convState=14,conv=17}] unless score @s lastRegion matches 11 run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"√ Хочу отправится в поместье Малфоев\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 30
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use






#############
# Охота за Жабой #
#############
execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt1 sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=nevillePlatform9_3_4,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=3016,y=58,z=-457,dx=15,dy=11,dz=11] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt1 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 23
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt2 sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=owleryNeville,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=663,y=52,z=53,dx=11,dy=10,dz=14] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt2 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt3 sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=quidditchNeville,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=433,y=11,z=-215,dx=11,dy=13,dz=14] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt3 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 9
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt4 sharedQuests matches 0 as @s[scores={npcQuestIcon=10},tag=hasLearnedVeraVerto] at @e[tag=greenhousesNeville,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=825,y=51,z=148,dx=10,dy=11,dz=11,tag=hasLearnedVeraVerto] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt4 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 11
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt5 sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=clockTowerNeville,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=586,y=62,z=270,dx=11,dy=9,dz=10] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt5 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 13
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt6 sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=postOfficeNeville,scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=5390,y=105,z=2468,dx=11,dy=11,dz=14] if score toadHuntIsGoing sharedQuests matches 0 if score toadHunt6 sharedQuests matches 0 as @s[tag=inConversation,scores={convState=6,conv=15}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу Вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use
#################
# Monster books #
#################
execute if score broderickMonsterBooks sharedQuests matches 0 as @s[scores={npcQuestIcon=10,hotbar_stage=5..}] at @e[scores={conv=67},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score broderickMonsterBooks sharedQuests matches 0 as @s[tag=inConversation,scores={convState=2,conv=67,hotbar_stage=5..}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Что находится внизу?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 3
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

##############
# Sewer Rats #
##############
execute if score elikElixersRats sharedQuests matches 0 as @s[scores={npcQuestIcon=10,hotbar_stage=5..}] at @e[scores={conv=57},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score elikElixersRats sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=57,hotbar_stage=5..}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Крысы?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#############################
# Hogsmeade Letter Delivery #
#############################
execute if score hogsmeadeLetterDelivery sharedQuests matches 0 as @s[scores={npcQuestIcon=10,hotbar_stage=5..}] at @e[scores={conv=58},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score hogsmeadeLetterDelivery sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=58,hotbar_stage=5..}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Косой переулок и Хогсмидт?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

######################
# Тайная Комната #
######################
execute if score chamberOfSecrets sharedQuests matches 0 as @s[scores={npcQuestIcon=10},tag=hasBeenToAzkaban] at @e[scores={conv=220},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score chamberOfSecrets sharedQuests matches 0 as @s[tag=inConversation,tag=hasBeenToAzkaban,scores={convState=8,conv=220}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Как я моуг помочть Ордену?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

################
# Golden Skull #
################
execute if score goldenSkull sharedQuests matches 0 as @s[x=702,y=53,z=32,dx=11,dy=3,dz=23] run function hp:quests/quests/golden_skull/give_golden_skull_quest

######################
# Underground Libary #
######################
execute if score undergroundLibraryResetFilch sharedQuests matches 1 as @e[tag=filchFpEngine,limit=1] if entity @s[tag=cutsceneStop] run function hp:quests/quests/underground_library/reset_filch

######################
# Зеркало Еиналеж   #
######################
execute if score mirrorOfErised sharedQuests matches 0 unless score undergroundLibrary sharedQuests matches 1.. as @s[scores={npcQuestIcon=10}] at @e[scores={conv=5},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score mirrorOfErised sharedQuests matches 0 unless score undergroundLibrary sharedQuests matches 1.. as @s[tag=inConversation,scores={convState=1,conv=5}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Я могу вам помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=hasLearnedVeraVerto] run scoreboard players set @s convState 14
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=!hasLearnedVeraVerto] run scoreboard players set @s convState 24
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#######################
# Room of Requirement #
#######################
execute unless entity @s[x=758,y=121,z=131,dx=37,dy=95,dz=37] unless score @s lastRegion matches 4 if score theRoomOfRequirement sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=16},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute unless entity @s[x=758,y=121,z=131,dx=37,dy=95,dz=37] unless score @s lastRegion matches 4 if score theRoomOfRequirement sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=16}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

###############
# Flying laps #
###############
execute as @s[tag=hasLearnedToFly,tag=!isInFlyingQuest,scores={npcQuestIcon=10}] at @e[scores={conv=37},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s


######################
# Burrow Infestation #
######################
execute if score burrowInfestation sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=13},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score burrowInfestation sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=13}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=hasLearnedStupefy] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=!hasLearnedStupefy] run scoreboard players set @s convState 19
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

###################
# One Man's Trash #
###################
execute if score oneMansTrash sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=39},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score oneMansTrash sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=39}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

################
# Kitchen Raid #
################
execute as @s[tag=hasCompletedSortingCeremony,scores={lastRegion=1}] if score kitchenRaid sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=18},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasCompletedSortingCeremony,scores={lastRegion=1}] if score kitchenRaid sharedQuests matches 0 as @s[tag=inConversation,scores={convState=11,conv=18}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

######################
# Dubious Divination #
######################
execute if score dubiousDivination sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=345},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

######################
# Frog Choir Quarrel #
######################
execute if score frogChoirQuarrel sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=415},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

##########################
# London Letter Delivery #
##########################
execute if score londonLetterDelivery sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=416},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

###################
# Submerged Shrub #
###################
execute if score submergedShrub sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=418},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

######################
# Quidditch Mischief #
######################
execute if score quidditchMischief sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=419},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#################
# Just Business #
#################
execute if score quidditchMischief sharedQuests matches -1 if score justBusiness sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=420},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

######################
# Follow the Spiders #
######################
execute if score followTheSpiders sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=421},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

######################
# Quidditch Squabble #
######################
execute if score quidditchSquabble sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=422},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#####################
# Parchment Poverty #
#####################
execute if score parchmentPoverty sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=424},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#######################
# Antic Advertisement #
#######################
execute if score anticAdvertisement sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=113},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score anticAdvertisement sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=113}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#################################
# Curable Creature Consultation #
#################################
execute if score curableCreatureConsultation sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=116},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score curableCreatureConsultation sharedQuests matches 0 as @s[tag=inConversation,scores={convState=0,conv=116}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#################
# Hand of Glory #
#################
execute if score handOfGlory sharedQuests matches 0 as @s[scores={npcQuestIcon=10,hotbar_stage=5..}] at @e[scores={conv=75},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score handOfGlory sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=75,hotbar_stage=5..}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 9
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

############################
# Delinquent Daily Prophet #
############################
execute if score delinquentDailyProphet sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=427},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#################
# Riddle Riches #
#################
execute if score riddleRiches sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=429},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#########################
# Training Ground Toads #
#########################
execute if score trainingGroundToads sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=436},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

###################
# Demiguise Dodge #
###################
execute as @s[tag=hasCompletedSortingCeremony,scores={lastRegion=1}] if score demiguiseDodge sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[tag=hagridLayer2] unless entity @e[tag=hagridLayer1,tag=inConversationNPC,limit=1,sort=nearest,distance=..2] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasCompletedSortingCeremony,scores={lastRegion=1}] if score demiguiseDodge sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 25
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

##############
# Snipe Hunt #
##############
execute if score theRoomOfRequirement sharedQuests matches -1 if score snipeHunt sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=16},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score theRoomOfRequirement sharedQuests matches -1 if score snipeHunt sharedQuests matches 0 as @s[tag=inConversation,scores={convState=1,conv=16}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Есть ли что-то еще, с чем я могу помочь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 13
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#####################
# Postponed Postage #
#####################
execute if score postponedPostage sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=218},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score postponedPostage sharedQuests matches 0 as @s[tag=inConversation,scores={convState=0,conv=218}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#####################################
# The Most Haunted Place in Britain #
#####################################
execute if score theMostHauntedPlaceInBritain sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=388},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score theMostHauntedPlaceInBritain sharedQuests matches 0 as @s[tag=inConversation,scores={convState=0,conv=388}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=hasLearnedStupefy] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer,tag=!hasLearnedStupefy] run scoreboard players set @s convState 6
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

###################
# Dungeon Delving #
###################
execute if score dungeonDelving sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=121},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if score dungeonDelving sharedQuests matches 0 as @s[tag=inConversation,scores={convState=0,conv=121}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


####################
# Snowman Supplies #
####################
execute if score snowmanSupplies sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=437},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

###################
# A lovely letter #
###################
execute if score aLovelyLetter sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=439},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s

#################
# Illegal Items #
#################
execute if entity @s[x=664,y=54,z=211,dx=34,dy=35,dz=30,tag=hasCompletedSortingCeremony] if score illegalItems sharedQuests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=17},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute if entity @s[x=664,y=54,z=211,dx=34,dy=35,dz=30,tag=hasCompletedSortingCeremony] if score illegalItems sharedQuests matches 0 as @s[tag=inConversation,scores={convState=14,conv=17}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужна помощь с чем-нибудь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 22
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

##########################
# A bit of light Reading #
##########################
execute as @s[tag=hasLearnedAlohomora,scores={playerID=1}] if score aBitOfLightReading p1Quests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasLearnedAlohomora,scores={playerID=2}] if score aBitOfLightReading p2Quests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasLearnedAlohomora,scores={playerID=3}] if score aBitOfLightReading p3Quests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasLearnedAlohomora,scores={playerID=4}] if score aBitOfLightReading p4Quests matches 0 as @s[scores={npcQuestIcon=10}] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:heart ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[tag=hasLearnedAlohomora,scores={playerID=1}] if score aBitOfLightReading p1Quests matches 0 as @s[tag=inConversation,scores={convState=1,conv=14}] run tag @s add use
execute as @s[tag=hasLearnedAlohomora,scores={playerID=2}] if score aBitOfLightReading p2Quests matches 0 as @s[tag=inConversation,scores={convState=1,conv=14}] run tag @s add use
execute as @s[tag=hasLearnedAlohomora,scores={playerID=3}] if score aBitOfLightReading p3Quests matches 0 as @s[tag=inConversation,scores={convState=1,conv=14}] run tag @s add use
execute as @s[tag=hasLearnedAlohomora,scores={playerID=4}] if score aBitOfLightReading p4Quests matches 0 as @s[tag=inConversation,scores={convState=1,conv=14}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"ⁿ Вам нужно ещё с чем-то помощь?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 21
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute as @s[tag=inConversation,scores={playerID=1,conv=14,convState=1}] if score aBitOfLightReading p1Quests matches 1 run function hp:quests/quests/a_bit_of_light_reading/check_rare_books
execute as @s[tag=inConversation,scores={playerID=2,conv=14,convState=1}] if score aBitOfLightReading p2Quests matches 1 run function hp:quests/quests/a_bit_of_light_reading/check_rare_books
execute as @s[tag=inConversation,scores={playerID=3,conv=14,convState=1}] if score aBitOfLightReading p3Quests matches 1 run function hp:quests/quests/a_bit_of_light_reading/check_rare_books
execute as @s[tag=inConversation,scores={playerID=4,conv=14,convState=1}] if score aBitOfLightReading p4Quests matches 1 run function hp:quests/quests/a_bit_of_light_reading/check_rare_books