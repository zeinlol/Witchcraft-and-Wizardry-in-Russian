execute at @s if score global Random matches 1..5 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Растопырникˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Eyeball.count:1,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 6..10 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Растопырникˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Eyeball.count:1,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 11..15 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Растопырникˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Eyeball.count:1,Unbreakable:1b,Damage:59}}]}
execute as @e[tag=creatureDropIsBeingSpawned,limit=1] store result entity @s ArmorItems[3].tag.idle int 1 run scoreboard players set @s idle 2000
execute as @e[tag=creatureDropIsBeingSpawned,limit=1] run tag @s remove creatureDropIsBeingSpawned
function hp:misc/random_number

# Grant mana on kill
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] manaAmount 250
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] manaAmount 250
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] manaAmount 250
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] manaAmount 250

# Quest Hook
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] murtlapsK 1
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] murtlapsK 1
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] murtlapsK 1
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] murtlapsK 1

kill @s