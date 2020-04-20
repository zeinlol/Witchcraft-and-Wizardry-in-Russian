summon chicken ~ ~ ~ {PersistenceRequired:1b,Team:"NPC",Tags:["creature","armorSuitDuck","armorSuitDuckIsBeingSpawned"]}
execute as @e[tag=armorSuitDuckIsBeingSpawned,limit=1,sort=nearest] run function hp:creatures/setup_health
execute store result entity @e[tag=armorSuitDuckIsBeingSpawned,limit=1] ArmorItems[3].tag.questID int 1 run scoreboard players operation @e[tag=armorSuitDuckIsBeingSpawned,limit=1] questID = @s questID
execute store result entity @e[tag=armorSuitDuckIsBeingSpawned,limit=1] ArmorItems[3].tag.questSession int 1 run scoreboard players operation @e[tag=armorSuitDuckIsBeingSpawned,limit=1] questSession = @s questSession
execute store result entity @e[tag=armorSuitDuckIsBeingSpawned,limit=1] ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @e[tag=armorSuitDuckIsBeingSpawned,limit=1] sessionID = @s sessionID
execute as @s[tag=keyBearer] as @e[tag=armorSuitDuckIsBeingSpawned,limit=1,sort=nearest] run tag @s add keyBearer
execute as @e[tag=armorSuitDuckIsBeingSpawned,limit=1,sort=nearest] run tag @s remove armorSuitDuckIsBeingSpawned
