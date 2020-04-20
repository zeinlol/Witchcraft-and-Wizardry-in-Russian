# In case the player in conversation with the NPC disconnects or for some other reason stops interacting with the NPC without that being communicated to the NPC the NPC should be reset so it can interact with other players
tag @s add focusNPC
execute as @a if score @s playerID = @e[tag=focusNPC,limit=1] playerID run tag @e[tag=focusNPC,limit=1] add playerExists
tag @s remove focusNPC
tag @s[tag=!playerExists] remove noHover
tag @s[tag=!playerExists] remove inConversationNPC
tag @s[tag=!playerExists,tag=fpActor] remove inConversationEngine
tag @s remove playerExists