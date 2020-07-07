# I tried a lot of different things, but armorstands seem to be the only entities that work with elytra where you can control both axis of rotation, and 
# stacking them all would make it too tall and akward, so I ended up teleporting, which is also kind of akward.

execute as @s[scores={lastRegion=1},tag=!playerIsOutside] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=2}] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=3},tag=!playerIsOutside] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=4},tag=!playerIsOutside] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=5}] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=6}] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=8}] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=9}] run tag @s add notAllowedToFly
execute as @s[scores={lastRegion=11}] run tag @s add notAllowedToFly


execute as @s[tag=summonBasicBroom,tag=!notAllowedToFly] at @s run summon armor_stand ~ ~ ~ {Team:"questNPC",Silent:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["broomVisual","interactable","glowable","restorable","broomVisualBeingSpawned"],Passengers:[{id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Saddle:1b,Tags:["broomSaddle","broomSaddleBeingSpawned"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:36}}]}
execute as @s[tag=summonNimbus2000,tag=!notAllowedToFly] at @s run summon armor_stand ~ ~ ~ {Team:"questNPC",Silent:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["broomVisual","interactable","glowable","restorable","broomVisualBeingSpawned"],Passengers:[{id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Saddle:1b,Tags:["broomSaddle","broomSaddleBeingSpawned"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:35}}]}
execute as @s[tag=summonNimbus2001,tag=!notAllowedToFly] at @s run summon armor_stand ~ ~ ~ {Team:"questNPC",Silent:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["broomVisual","interactable","glowable","restorable","broomVisualBeingSpawned"],Passengers:[{id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Saddle:1b,Tags:["broomSaddle","broomSaddleBeingSpawned"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:34}}]}
execute as @s[tag=summonFirebolt,tag=!notAllowedToFly] at @s run summon armor_stand ~ ~ ~ {Team:"questNPC",Silent:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["broomVisual","interactable","glowable","restorable","broomVisualBeingSpawned"],Passengers:[{id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Saddle:1b,Tags:["broomSaddle","broomSaddleBeingSpawned"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:33}}]}
execute as @s[tag=!notAllowedToFly] at @s run summon armor_stand ~ ~ ~ {Tags:["spellEntity","broomElytra","broomElytraBeingSpawned"],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{}],Invisible:1b,Silent:1b}
execute as @s[tag=!notAllowedToFly] run scoreboard players operation @e[tag=broomElytraBeingSpawned] broomID = global broomID
execute as @s[tag=!notAllowedToFly] run scoreboard players operation @e[tag=broomVisualBeingSpawned] broomID = global broomID
execute as @s[tag=!notAllowedToFly] run scoreboard players operation @e[tag=broomSaddleBeingSpawned] broomID = global broomID
execute as @s[tag=!notAllowedToFly] run scoreboard players operation @s broomID = global broomID

execute as @s[tag=summonBasicBroom,tag=!notAllowedToFly] at @s run scoreboard players set @e[tag=broomElytraBeingSpawned] broomType 1
execute as @s[tag=summonNimbus2000,tag=!notAllowedToFly] at @s run scoreboard players set @e[tag=broomElytraBeingSpawned] broomType 2
execute as @s[tag=summonNimbus2001,tag=!notAllowedToFly] at @s run scoreboard players set @e[tag=broomElytraBeingSpawned] broomType 3
execute as @s[tag=summonFirebolt,tag=!notAllowedToFly] at @s run scoreboard players set @e[tag=broomElytraBeingSpawned] broomType 4

execute as @s[tag=!notAllowedToFly] run scoreboard players add global broomID 1
execute as @s[tag=!notAllowedToFly] run tag @e[tag=broomVisualBeingSpawned] remove broomVisualBeingSpawned
execute as @s[tag=!notAllowedToFly] run tag @e[tag=broomElytraBeingSpawned] remove broomElytraBeingSpawned
execute as @s[tag=!notAllowedToFly] run tag @e[tag=broomSaddleBeingSpawned] remove broomSaddleBeingSpawned

tag @s remove summonBasicBroom
tag @s remove summonNimbus2000
tag @s remove summonNimbus2001
tag @s remove summonFirebolt

execute as @s[tag=notAllowedToFly] run title @s times 5 20 5
execute as @s[tag=notAllowedToFly] run title @s title {"text":" "}
execute as @s[tag=notAllowedToFly,scores={lastRegion=2}] run title @s subtitle {"text":"Вы не можете летать в этой области","bold":false,"color":"red"}
execute as @s[tag=notAllowedToFly,scores={lastRegion=5..6}] run title @s subtitle {"text":"Вы не можете летать в этой области","bold":false,"color":"red"}
execute as @s[tag=notAllowedToFly,scores={lastRegion=8..9}] run title @s subtitle {"text":"Вы не можете летать в этой области","bold":false,"color":"red"}
execute as @s[tag=notAllowedToFly,scores={lastRegion=11}] run title @s subtitle {"text":"Вы не можете летать в этой области","bold":false,"color":"red"}

execute as @s[tag=notAllowedToFly,tag=!playerIsOutside,scores={lastRegion=1}] run title @s subtitle {"text":"You can't fly inside","bold":false,"color":"red"}
execute as @s[tag=notAllowedToFly,tag=!playerIsOutside,scores={lastRegion=3}] run title @s subtitle {"text":"You can't fly inside","bold":false,"color":"red"}
execute as @s[tag=notAllowedToFly,tag=!playerIsOutside,scores={lastRegion=4}] run title @s subtitle {"text":"You can't fly inside","bold":false,"color":"red"}

scoreboard players set @s placeBroomTimer 15


tag @s remove notAllowedToFly