execute as @e[tag=spawnNPC,tag=spawnStudentWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:1,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useVillagerScaleOnHead","editInteractable","restorable","npc","student","studentWithRobe","genericStudent","MaleStudentWithRobeBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MaleStudentWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=MaleStudentWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=MaleStudentWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=MaleStudentWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MaleStudentWithRobeBeingSpawned] run tag @s remove MaleStudentWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMaleStudentWithoutRobe] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:124}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:125}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","student","studentWithoutRobe","genericStudent","MaleStudentWithoutRobeBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=MaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=MaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=MaleStudentWithoutRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MaleStudentWithoutRobeBeingSpawned] run tag @s remove MaleStudentWithoutRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnFemaleStudentWithoutRobe] at @s run summon drowned ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:124}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:125}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","student","studentWithoutRobe","genericStudent","FemaleStudentWithoutRobeBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=FemaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=FemaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=FemaleStudentWithoutRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 46
execute as @e[tag=FemaleStudentWithoutRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=FemaleStudentWithoutRobeBeingSpawned] run tag @s remove FemaleStudentWithoutRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnWizard] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useVillagerScaleOnHead","editInteractable","restorable","npc","wizard","genericAdult","WizardBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=WizardBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=WizardBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=WizardBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=WizardBeingSpawned] run tag @s remove WizardBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnWitch] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useVillagerScaleOnHead","editInteractable","restorable","npc","witch","genericAdult","WitchBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=WitchBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=WitchBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 45
execute as @e[tag=WitchBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=WitchBeingSpawned] run tag @s remove WitchBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnWitchWithHat] at @s run summon witch ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","witchWithHat"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}

execute as @e[tag=spawnNPC,tag=spawnDumbledore] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,Team:"NPC",Profession:1,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:89}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:89}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:131}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","dumbledore","dumbledoreIsBeingSpawned","headLocked","uncommonHead"],Offers:{}}
execute as @e[tag=dumbledoreIsBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 2
execute as @e[tag=dumbledoreIsBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 100
execute as @e[tag=dumbledoreIsBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=dumbledoreIsBeingSpawned] run tag @s remove dumbledoreIsBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnFilch] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,Team:"NPC",Profession:5,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:91}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:91}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:88}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","filch","filchIsBeingSpawned","headLocked","uncommonHead"],Offers:{}}
execute as @e[tag=filchIsBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 5
execute as @e[tag=filchIsBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 133
execute as @e[tag=filchIsBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=filchIsBeingSpawned] run tag @s remove filchIsBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMcGonagal] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:5,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:stone_hoe}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","mcGonagal","McGonagalBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=McGonagalBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 3
execute as @e[tag=McGonagalBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 103
execute as @e[tag=McGonagalBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=McGonagalBeingSpawned] run tag @s remove McGonagalBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnLupin] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:4,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:130}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","lupin","LupinBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=LupinBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 4
execute as @e[tag=LupinBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 102
execute as @e[tag=LupinBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=LupinBeingSpawned] run tag @s remove LupinBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnFlitwick] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:28}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","flitwick","FlitwickBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=FlitwickBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 6
execute as @e[tag=FlitwickBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 101
execute as @e[tag=FlitwickBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=FlitwickBeingSpawned] run tag @s remove FlitwickBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHagrid] at @s run summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"NPC",NoAI:1b,Tags:["npc","convNPC","interactable","glowable","restorable","restorable","hagrid","hagridLayer1","HagridBeingSpawned"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["glowable","npc","restorable","convNPC","hagrid","hagridLayer2","ignorePlayers"],Pose:{LeftArm:[0.0001f,0.0001f,0.0001f],RightArm:[0.0001f,0.0001f,0.0001f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:81}}]}],HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @e[tag=HagridBeingSpawned] at @s run summon wither_skeleton ~ ~0.75 ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"NPC",NoAI:1b,Tags:["glowable","restorable","npc","convNPC","hagrid","hagridLayer3","ignorePlayers"],HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:83}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:82}}],ArmorItems:[{},{},{},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:79}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000000,ShowParticles:0b}]}
execute as @e[tag=HagridBeingSpawned] at @s run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.mainhand stone_shovel{Damage:74,Unbreakable:1b}
execute as @e[tag=HagridBeingSpawned] at @s run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.offhand stone_shovel{Damage:76,Unbreakable:1b}
# There is a bug when replacing the air where there is no visual difference until you relog, which is why I use an invisible model
execute as @e[tag=HagridBeingSpawned] at @s run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.mainhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @e[tag=HagridBeingSpawned] at @s run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.offhand golden_hoe{Damage:32,Unbreakable:1b}
execute as @e[tag=HagridBeingSpawned] run tag @s remove HagridBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnTrelawney] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:5,Team:"NPC",CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:127}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","trelawney","TrelawneyBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=TrelawneyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 9
execute as @e[tag=TrelawneyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 104
execute as @e[tag=TrelawneyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=TrelawneyBeingSpawned] run tag @s remove TrelawneyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHarry] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:48}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","harry","HarryBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=HarryBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=HarryBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 12
execute as @e[tag=HarryBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 106
execute as @e[tag=HarryBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=HarryBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=HarryBeingSpawned] run tag @s remove HarryBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHarryWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","harry","HarryWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=HarryWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=HarryWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 12
execute as @e[tag=HarryWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 106
execute as @e[tag=HarryWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=HarryWithRobeBeingSpawned] run tag @s remove HarryWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnRon] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:52}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","ron","RonBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=RonBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=RonBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 13
execute as @e[tag=RonBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 107
execute as @e[tag=RonBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=RonBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=RonBeingSpawned] run tag @s remove RonBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnRonWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:54}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","ron","RonWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=RonWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=RonWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 13
execute as @e[tag=RonWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 107
execute as @e[tag=RonWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=RonWithRobeBeingSpawned] run tag @s remove RonWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHermione] at @s run summon drowned ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:44}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","hermione","HermioneBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=HermioneBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=HermioneBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 14
execute as @e[tag=HermioneBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 108
execute as @e[tag=HermioneBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 14
execute as @e[tag=HermioneBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=HermioneBeingSpawned] run tag @s remove HermioneBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHermioneWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:46}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","hermione","HermioneWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=HermioneWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=HermioneWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 14
execute as @e[tag=HermioneWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 108
execute as @e[tag=HermioneWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=HermioneWithRobeBeingSpawned] run tag @s remove HermioneWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnNeville] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:56}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","neville","NevilleBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=NevilleBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=NevilleBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 15
execute as @e[tag=NevilleBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 109
execute as @e[tag=NevilleBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=NevilleBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=NevilleBeingSpawned] run tag @s remove NevilleBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnNevilleWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:58}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","neville","NevilleWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=NevilleWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=NevilleWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 15
execute as @e[tag=NevilleWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 109
execute as @e[tag=NevilleWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=NevilleWithRobeBeingSpawned] run tag @s remove NevilleWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnLuna] at @s run summon drowned ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:115}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","luna","LunaBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=LunaBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 2
execute as @e[tag=LunaBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 16
execute as @e[tag=LunaBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 111
execute as @e[tag=LunaBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 14
execute as @e[tag=LunaBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=LunaBeingSpawned] run tag @s remove LunaBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnLunaWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:2,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:114}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","luna","LunaWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=LunaWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 2
execute as @e[tag=LunaWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 16
execute as @e[tag=LunaWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 111
execute as @e[tag=LunaWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=LunaWithRobeBeingSpawned] run tag @s remove LunaWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMalfoy] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:60}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","malfoy","MalfoyBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MalfoyBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 4
execute as @e[tag=MalfoyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 17
execute as @e[tag=MalfoyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 110
execute as @e[tag=MalfoyBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=MalfoyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MalfoyBeingSpawned] run tag @s remove MalfoyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMalfoyWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:1,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:62}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","malfoy","MalfoyWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MalfoyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 4
execute as @e[tag=MalfoyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 17
execute as @e[tag=MalfoyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 110
execute as @e[tag=MalfoyWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MalfoyWithRobeBeingSpawned] run tag @s remove MalfoyWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnFred] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:72}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","fred","FredBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=FredBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=FredBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 18
execute as @e[tag=FredBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 113
execute as @e[tag=FredBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=FredBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=FredBeingSpawned] run tag @s remove FredBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnFredWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:74}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","fred","FredWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=FredWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=FredWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 18
execute as @e[tag=FredWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 113
execute as @e[tag=FredWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=FredWithRobeBeingSpawned] run tag @s remove FredWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGeorge] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:76}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","george","GeorgeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GeorgeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=GeorgeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 18
execute as @e[tag=GeorgeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 113
execute as @e[tag=GeorgeBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=GeorgeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GeorgeBeingSpawned] run tag @s remove GeorgeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGeorgeWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:74}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","george","GeorgeWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GeorgeWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=GeorgeWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 18
execute as @e[tag=GeorgeWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 113
execute as @e[tag=GeorgeWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GeorgeWithRobeBeingSpawned] run tag @s remove GeorgeWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnPercy] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:76}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","percy","PercyBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=PercyBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=PercyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 38
execute as @e[tag=PercyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 114
execute as @e[tag=PercyBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=PercyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=PercyBeingSpawned] run tag @s remove PercyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnPercyWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:78}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","percy","PercyWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=PercyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=PercyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 38
execute as @e[tag=PercyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 114
execute as @e[tag=PercyWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=PercyWithRobeBeingSpawned] run tag @s remove PercyWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnCedric] at @s run summon zombie_pigman ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:76}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","cedric","CedricBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=CedricBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=CedricBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 43
execute as @e[tag=CedricBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 114
execute as @e[tag=CedricBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=CedricBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=CedricBeingSpawned] run tag @s remove CedricBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnCedricWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:78}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","Cedric","CedricWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=CedricWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=CedricWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 43
execute as @e[tag=CedricWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 114
execute as @e[tag=CedricWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=CedricWithRobeBeingSpawned] run tag @s remove CedricWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGinny] at @s run summon drowned ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:44}}],Silent:1b,Tags:["studentWithoutRobe","importantStudent","useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","ginny","GinnyBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GinnyBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=GinnyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 19
execute as @e[tag=GinnyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 112
execute as @e[tag=GinnyBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 14
execute as @e[tag=GinnyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GinnyBeingSpawned] run tag @s remove GinnyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGinnyWithRobe] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:0,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:82}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","ginny","GinnyWithRobeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GinnyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=GinnyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 19
execute as @e[tag=GinnyWithRobeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 112
execute as @e[tag=GinnyWithRobeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GinnyWithRobeBeingSpawned] run tag @s remove GinnyWithRobeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnArthur] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:4,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}}],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:86}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","arthur","ArthurBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=ArthurBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 39
execute as @e[tag=ArthurBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 123
execute as @e[tag=ArthurBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=ArthurBeingSpawned] run tag @s remove ArthurBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMolly] at @s run summon villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:5,CareerLevel:1,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:84}}],Silent:1b,Tags:["useVillagerScaleOnHead","npc","convNPC","interactable","glowable","restorable","molly","MollyBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MollyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 32
execute as @e[tag=MollyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 124
execute as @e[tag=MollyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MollyBeingSpawned] run tag @s remove MollyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGoblin] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:103,npcHead:116}}],Silent:1b,Tags:["uncommonHead","useZombieScaleOnHead","editInteractable","restorable","npc","goblin","GoblinBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GoblinBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 116
execute as @e[tag=GoblinBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GoblinBeingSpawned] run tag @s remove GoblinBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnGriphook] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:103,npcHead:116}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","griphook","GriphookBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=GriphookBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 20
execute as @e[tag=GriphookBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 118
execute as @e[tag=GriphookBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=GriphookBeingSpawned] run tag @s remove GriphookBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnHouseElf] at @s run summon husk ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:86}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:86}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:100}}],Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","houseElf","HouseElfBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=HouseElfBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 120
execute as @e[tag=HouseElfBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=HouseElfBeingSpawned] run tag @s remove HouseElfBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnDobby] at @s run summon husk ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:88}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:89}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","dobby","DobbyBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=DobbyBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=DobbyBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 121
execute as @e[tag=DobbyBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=DobbyBeingSpawned] run tag @s remove DobbyBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnWinky] at @s run summon husk ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Team:"NPC",Profession:3,CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:88}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:89}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:98}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","editInteractable","restorable","winky","WinkyIsBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=WinkyIsBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 122
execute as @e[tag=WinkyIsBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=WinkyIsBeingSpawned] run tag @s remove WinkyIsBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnUmbridge] at @s run summon illusioner ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,IsBaby:1b,NoAI:1b,Silent:1b,Team:"NPC",CareerLevel:1,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:16}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:17}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:28}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","interactable","glowable","restorable","umbridge"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}

execute as @e[tag=spawnNPC,tag=spawnMadeye] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:5,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:103}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","madeye","MadeyeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=MadeyeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=MadeyeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 126
execute as @e[tag=MadeyeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MadeyeBeingSpawned] run tag @s remove MadeyeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnSirius] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:5,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:103}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","sirius","SiriusBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=SiriusBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=SiriusBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 125
execute as @e[tag=SiriusBeingSpawned] run function hp:npc/update_npcs
execute as @e[tag=SiriusBeingSpawned] run tag @s remove SiriusBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnVoldemort] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:6,CareerLevel:1,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:85}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:85}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:201}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","voldemort","VoldemortBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=VoldemortBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=VoldemortBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 128
execute as @e[tag=VoldemortBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=VoldemortBeingSpawned] run tag @s remove VoldemortBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnDeathEater] at @s run summon zombie ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:195}}],Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","deathEater","DeathEaterBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=DeathEaterBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 73
execute as @e[tag=DeathEaterBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=DeathEaterBeingSpawned] run tag @s remove DeathEaterBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnXenophilius] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:5,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:86}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","xenophilius","XenophiliusBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=XenophiliusBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=XenophiliusBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 44
execute as @e[tag=XenophiliusBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=XenophiliusBeingSpawned] run tag @s remove XenophiliusBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnMisc] at @s run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Silent:1b,Tags:["useZombieScaleOnHead","invisible","editInteractable","restorable","npc","misc","MiscBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:60}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:60}}]}
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.clothesSlot2ID int 1 run scoreboard players set @s clothesSlot2ID 1
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.clothesSlot3ID int 1 run scoreboard players set @s clothesSlot3ID 3
execute as @e[tag=MiscBeingSpawned] store result entity @s ArmorItems[3].tag.clothesSlot1ID int 1 run scoreboard players set @s clothesSlot1ID 5
execute as @e[tag=MiscBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=MiscBeingSpawned] run tag @s remove MiscBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnSnape] at @s run summon zombie_villager ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:2,CareerLevel:1,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:87}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:87}}],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:86}}],Silent:1b,Tags:["useZombieScaleOnHead","npc","convNPC","interactable","glowable","restorable","snape","SnapeBeingSpawned","headLocked","uncommonHead"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}
execute as @e[tag=SnapeBeingSpawned] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv 1
execute as @e[tag=SnapeBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 105
execute as @e[tag=SnapeBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=SnapeBeingSpawned] run tag @s remove SnapeBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnSitting] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Invulnerable:1b,Tags:["SittingNPC","npcBase"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:zombie",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Team:"NPC",HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:195}}],Silent:1b,Tags:["useZombieScaleOnHead","editInteractable","restorable","npc","deathEater","DeathEaterBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}]}
execute as @e[tag=SittingNPCBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=SittingNPCBeingSpawned] store result entity @s ArmorItems[3].tag.npcArms int 1 run scoreboard players set @s npcArms 1
execute as @e[tag=SittingNPCBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=SittingNPCBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=SittingNPCBeingSpawned] run tag @s remove SittingNPCBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnSittingWizard] at @s run summon armor_stand ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Invulnerable:1b,Tags:["SittingNPC","npcBase","SittingWizard"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:zombie_villager",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,CareerLevel:1,Silent:1b,Profession:4,Team:"NPC",HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:124}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:125}}],HandDropChances:[0.0F,0.0F],ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1b,Damage:1561}}],Tags:["useVillagerScaleOnHead","editInteractable","restorable","npc","wizard","sitting","genericAdult","WizardBeingSpawned","SittingWizardNPCBeingSpawned"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{}}]}
execute as @e[tag=SittingWizardNPCBeingSpawned] store result entity @s ArmorItems[3].tag.house int 1 run scoreboard players set @s house 1
execute as @e[tag=SittingWizardNPCBeingSpawned] store result entity @s ArmorItems[3].tag.npcHead int 1 run scoreboard players set @s npcHead 1
execute as @e[tag=SittingWizardNPCBeingSpawned] run function hp:npc/update_npc
execute as @e[tag=SittingWizardNPCBeingSpawned] run tag @s remove SittingWizardNPCBeingSpawned

execute as @e[tag=spawnNPC,tag=spawnCat] at @s run summon ocelot ~ ~ ~ {Sitting:1b,CatType:1,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Silent:1b,Tags:["editInteractable","restorable","npc","cat"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=spawnNPC,tag=spawnDog] at @s run summon wolf ~ ~ ~ {OwnerUUID:"0-0-0-0-1",CollarColor:15b,Sitting:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Silent:1b,Tags:["editInteractable","restorable","npc","dog"],Health:20.0f,Attributes:[{Name:"generic.maxHealth",Base:20.0},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=spawnNPC,tag=spawnRabbit] at @s run summon rabbit ~ ~ ~ {Sitting:1b,RabbitType:0,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Silent:1b,Tags:["editInteractable","restorable","npc","rabbit"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=spawnNPC,tag=spawnParrot] at @s run summon parrot ~ ~ ~ {Sitting:1b,Variant:0,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Silent:1b,Tags:["editInteractable","restorable","npc","parrot"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=spawnNPC,tag=spawnDuck] at @s run summon chicken ~ ~ ~ {OnGround:1b,PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Silent:1b,Profession:4,CareerLevel:1,Team:"NPC",ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Silent:1b,Tags:["editInteractable","restorable","npc","parrot"],Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}]}

execute as @e[tag=spawnNPC] run kill @s