# Conv stuff

execute as @s[tag=!confirmConvOption] unless entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run scoreboard players operation @s selectCurrent = @s questConvOffset
execute as @s[tag=!confirmConvOption] unless entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run scoreboard players operation @s convScroll = @s questConvOffset
execute as @s[tag=!confirmConvOption] unless entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run scoreboard players remove @s convScroll 1
execute as @s[tag=!confirmConvOption] unless entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run tag @e[tag=confirmingOption] remove confirmingOption

# Face animation
execute as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!wednesdayFrog,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run scoreboard players set @s expression 7
execute as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!wednesdayFrog,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run function hp:npc/update_npc_head_expression

# Sound
execute as @s[scores={npcVoice=0}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~
execute as @s[scores={npcVoice=1}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice2 master @a ~ ~ ~
execute as @s[scores={npcVoice=2}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice3 master @a ~ ~ ~
execute as @s[scores={npcVoice=3}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~
execute as @s[scores={npcVoice=4}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice5 master @a ~ ~ ~
execute as @s[scores={npcVoice=5}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~
execute as @s[scores={npcVoice=6}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1 0.85
execute as @s[scores={npcVoice=7}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1 1.15
execute as @s[scores={npcVoice=8}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.75
execute as @s[scores={npcVoice=9}] as @e[tag=inConversationNPC,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 1.25
execute as @e[tag=inConversationNPC,tag=sortingHat] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1 1
execute as @e[tag=inConversationNPC,tag=suitOfArmor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1 1
execute as @e[tag=inConversationNPC,tag=riddleLockedDoor] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1 1
execute as @e[tag=inConversationNPC,tag=scroll] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:custom.inventory.pickup.paper master @a ~ ~ ~ 1 1 1
execute as @e[tag=inConversationNPC,tag=clue] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1 1
scoreboard players operation @s oldConvState = @s convState
