# Sound
execute at @s run playsound minecraft:custom.creatures.monster_book.die master @a ~ ~ ~ 1
execute at @s run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.05 10 force

# Drop
execute at @s if score global Random matches 1..3 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Книга Монстровˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Parchment.count:3,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 4..7 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Книга Монстровˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Parchment.count:2,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 8 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Книга Монстровˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.MagicalDraftsAndPotions.count:1,invItem.Parchment.count:1,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 9 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Книга Монстровˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.MagicalTheory.count:1,invItem.Parchment.count:1,Unbreakable:1b,Damage:59}}]}
execute at @s if score global Random matches 10 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Книга Монстровˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","creatureDrop","isDroppedItem","creatureDropIsBeingSpawned","doNotCheckHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.PalmistryGuide.count:1,invItem.Parchment.count:1,Unbreakable:1b,Damage:59}}]}
execute as @e[tag=creatureDropIsBeingSpawned,limit=1] store result entity @s ArmorItems[3].tag.idle int 1 run scoreboard players set @s idle 2000
execute as @e[tag=creatureDropIsBeingSpawned,limit=1] run tag @s remove creatureDropIsBeingSpawned
function hp:misc/random_number

# Grant mana on kill
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] manaAmount 200
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] manaAmount 200
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] manaAmount 200
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] manaAmount 200

# Quest Hook
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] monsterBooksK 1
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] monsterBooksK 1
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] monsterBooksK 1
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] monsterBooksK 1

execute at @s run kill @e[tag=monsterBookVisual,limit=1,sort=nearest,distance=..2]
kill @s
