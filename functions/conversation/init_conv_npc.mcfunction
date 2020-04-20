# Init npc
data merge entity @s {CustomNameVisible:0b,Glowing:0b}
tag @s add inConversationNPC
tag @s add noHover
tag @s remove glowing

# If is follow path npc
execute if entity @s[tag=fpActor] run tag @s add focusConversationNPC
execute if entity @s[tag=fpActor] as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=focusConversationNPC,limit=1] fpNPCID run tag @s add inConversationEngine

# Face animation
scoreboard players set @s[tag=!sortingHat,tag=!clue,tag=!wednesdayFrog,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] expression 7
# Conv state is set to -2 so it always updates when you enter conversation
scoreboard players set @s convState -2


# Pair the NPC to the player interacting with it
scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
scoreboard players operation @s npcLookPlayerID = @p[tag=activePlayer] playerID
execute as @s[tag=NPCisLooking] run tag @s remove NPCisLooking

execute if entity @s[tag=fpActor] as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=focusConversationNPC,limit=1] fpNPCID run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
execute if entity @s[tag=fpActor] as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=focusConversationNPC,limit=1] fpNPCID run scoreboard players operation @s npcLookPlayerID = @p[tag=activePlayer] playerID
execute if entity @s[tag=fpActor] as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=focusConversationNPC,limit=1] fpNPCID as @s[tag=NPCisLooking] run tag @s remove NPCisLooking
execute if entity @s[tag=fpActor] run tag @s remove focusConversationNPC

# Load score from NBT in case the kraken of minecraft scoreboards has decided to reset it
execute store result score @s conv run data get entity @s ArmorItems[3].tag.conv 1