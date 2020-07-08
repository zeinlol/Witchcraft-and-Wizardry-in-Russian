# cheeky hacked f and q detection
execute as @s[scores={pressQ=1..}] run tag @s add hasPressedQ
execute as @s[tag=hasPressedQ] run kill @e[type=item,nbt={Item:{tag:{qDetect:1b}}}]
execute as @s[tag=hasPressedQ] run scoreboard players add @s editStick 1
execute as @s[tag=hasPressedQ] run scoreboard players set @s pressQ 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{altFDetect:1b}}]}] run tag @s add hasPressedF


replaceitem entity @s[scores={editPage=0}] hotbar.0 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Alohomora Door\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnAlohomoraDoor"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Creature Point\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnCreaturePoint"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.2 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Wingardium Leviosa Switch\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnWingardiumSwitch"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn large chest\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnLargeChest"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.4 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn small chest\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnSmallChest"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.5 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn bookshelf door\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnBookshelfDoor"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Brewer\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnBrewer"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=0}] hotbar.7 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Blockade\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnBlockade"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.0 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Wingardium Block\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnWingardiumBlock"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Money Pile Small\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMoneyPileSmall"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.2 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Money Pile Medium\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMoneyPileMedium"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Money Pile Large\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMoneyPileLarge"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.4 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Golden Snitch\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnGoldenSnitch"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.5 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Flask\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnFlask"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Quest Crate\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnQuestCrate"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=1}] hotbar.7 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Stupefy Target\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnStupefyTarget"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.0 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set spikes\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnSpikes"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Star\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnStar"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.2 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Turning Pillar\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnTurningPillar"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Mana Well\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnManaWell"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.4 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Key Lock Door\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnKeyLockDoor"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.5 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Spawn Mandrake\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMandrake"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Earmuffs\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnEarmuffs"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=2}] hotbar.7 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Pigeons\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnPigeons"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.0 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Lumos Transition\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnLumosTransition"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Notice Board\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnNoticeBoard"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.2 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Snake Chain\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnSnakeCain"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Lever\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnLever"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.4 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Jump Plant\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnJumpPlant"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.5 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Magnet\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMagnet"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Magnetic Object\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnMagneticObject"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=3}] hotbar.7 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Radio\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnRadio"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.0 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Owl\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnOwl"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.1 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Pensive\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnPensive"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.2 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Lamp\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnLamp"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.3 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Old Radio\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnOldRadio"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.4 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Grammophone\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnGramophone"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.5 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Riddle Door\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnRiddleLockDoor"]},qDetect:1b,altFDetect:1b}
# replaceitem entity @s[scores={editPage=4}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Diadem\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnDiadem"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.6 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Fluxweed\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnFluxweed"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=4}] hotbar.7 minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"Set Fake Chest\",\"color\":\"gold\",\"italic\":false}"},EntityTag:{NoAI:1b,Tags:["spawnFakeChest"]},qDetect:1b,altFDetect:1b}
replaceitem entity @s[scores={editPage=10}] hotbar.0 minecraft:command_block{display:{Name:"{\"text\":\"pig statue 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1552}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.1 minecraft:command_block{display:{Name:"{\"text\":\"pig statue 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1551}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.2 minecraft:command_block{display:{Name:"{\"text\":\"pig statue 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1550}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.3 minecraft:command_block{display:{Name:"{\"text\":\"pig statue 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1549}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.4 minecraft:command_block{display:{Name:"{\"text\":\"Knight statue 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1547}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.5 minecraft:command_block{display:{Name:"{\"text\":\"Knight statue 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1546}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.6 minecraft:command_block{display:{Name:"{\"text\":\"Knight statue 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1545}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=10}] hotbar.7 minecraft:command_block{display:{Name:"{\"text\":\"Knight statue 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1544}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.0 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1534}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.1 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 45\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1533}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.2 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1532}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.3 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 135\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1531}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.4 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1530}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.5 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 225\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1529}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.6 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1528}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=11}] hotbar.7 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin 315\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1527}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.0 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Gryffindor 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1526}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.1 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Gryffindor 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1525}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.2 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Gryffindor 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1524}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.3 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Gryffindor 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1523}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.4 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Hufflepuff 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1522}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.5 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Hufflepuff 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1521}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.6 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Hufflepuff 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1520}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=12}] hotbar.7 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Hufflepuff 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1519}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.0 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Ravenclaw 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1518}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.1 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Ravenclaw 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1517}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.2 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Ravenclaw 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1516}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.3 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Ravenclaw 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1515}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.4 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Slytherin 0\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1514}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.5 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Slytherin 90\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1513}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.6 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Slytherin 180\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1512}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}
replaceitem entity @s[scores={editPage=13}] hotbar.7 minecraft:command_block{display:{Name:"{\"text\":\"Mannequin Slytherin 270\",\"color\":\"gold\",\"italic\":false}"},BlockEntityTag: {conditionMet: 1b, auto: 1b, powered: 0b, Command: "setblock ~ ~ ~ minecraft:spawner{\"SpawnData\":{\"id\":\"minecraft:armor_stand\",\"Invisible\":1b,\"HandItems\":[{\"id\":\"minecraft:diamond_sword\",\"Count\":1,\"tag\":{\"Unbreakable\":1,\"Damage\":1511}},{}],\"Pose\":{\"RightArm\":[30f,0f,0f],\"LeftArm\":[30f,0f,0f]}},\"RequiredPlayerRange\":0,\"MaxNearbyEntities\":0}"}}

replaceitem entity @s hotbar.8 written_book{pages:["[\"\",{\"text\":\"\\n\"},{\"text\":\"- Add items\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hp:creation_tools/add_items\"}},{\"text\":\"\\n\\n\"},{\"text\":\"- Remove items\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function hp:creation_tools/remove_items\"}},{\"text\":\"\\n\\n\"},{\"text\":\"- Page 1\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 0\"}},{\"text\":\"\\n\"},{\"text\":\"- Page 2\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 1\"}},{\"text\":\"\\n\"},{\"text\":\"- Page 3\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 2\"}},{\"text\":\"\\n- Page 4\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 3\"}},{\"text\":\"\\n- Page 5\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 4\"}},{\"text\":\"\\n\\n- Spawners \"},{\"text\":\"1 \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 10\"}},{\"text\":\"- 2 \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 11\"}},{\"text\":\"- 3 \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 12\"}},{\"text\":\"- 4 \",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s editPage 13\"}}]"],title:Container,author:"ya boi",display:{Lore:["Edit items in containers"]},altFDetect:1b}
replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{Damage:32}}]}] weapon.offhand minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}

scoreboard players set @s[scores={editStick=11..}] editStick 1


execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=chest] store result entity @e[tag=hover,limit=1,tag=chest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=fakeChest] store result entity @e[tag=hover,limit=1,tag=fakeChest] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=brewer] store result entity @e[tag=hover,limit=1,tag=brewer] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=moneyLarge] store result entity @e[tag=hover,limit=1,tag=moneyLarge] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=moneyMedium] store result entity @e[tag=hover,limit=1,tag=moneyMedium] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=moneySmall] store result entity @e[tag=hover,limit=1,tag=moneySmall] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=diadem] store result entity @e[tag=hover,limit=1,tag=diadem] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=fluxweed] store result entity @e[tag=hover,limit=1,tag=fluxweed] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=goldenSnitch] store result entity @e[tag=hover,limit=1,tag=goldenSnitch] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=crate] store result entity @e[tag=hover,limit=1,tag=crate] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=hogwartsSeal] store result entity @e[tag=hover,limit=1,tag=hogwartsSeal] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=stupefyTarget] store result entity @e[tag=hover,limit=1,tag=stupefyTarget] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=!isSneaking] if entity @e[tag=hover,limit=1,tag=turningPillar] store result entity @e[tag=hover,limit=1,tag=turningPillar] Rotation[0] float 1 run data get entity @s Rotation[0] 1

execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] store result score @s pillarState run data get entity @s ArmorItems[3].tag.storedRotation 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players add @s pillarState 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players set @s[scores={pillarState=5..}] pillarState 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players set @s[scores={pillarState=1}] pillarRotation 270
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players set @s[scores={pillarState=2}] pillarRotation 0
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players set @s[scores={pillarState=3}] pillarRotation 90
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] run scoreboard players set @s[scores={pillarState=4}] pillarRotation 180
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] store result entity @s ArmorItems[3].tag.storedRotation int 1 run scoreboard players get @s pillarState
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory,tag=isSneaking] as @e[tag=hover,limit=1,tag=turningPillar] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s pillarRotation

execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=mandrake] store result entity @e[tag=hover,limit=1,tag=mandrake] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=earmuffs] store result entity @e[tag=hover,limit=1,tag=earmuffs] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] as @e[tag=hover,limit=1,tag=pigeonFlock] store result score @s tmp3 run data get entity @s HandItems[1].tag.rotation 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] as @e[tag=hover,limit=1,tag=pigeonFlock] run scoreboard players add @s tmp3 2
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] as @e[tag=hover,limit=1,tag=pigeonFlock,scores={tmp3=36..}] run scoreboard players set @s tmp3 0
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] as @e[tag=hover,limit=1,tag=pigeonFlock] store result entity @s HandItems[1].tag.rotation float 1 store result entity @s Rotation[0] float 10 run scoreboard players get @s tmp3
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=noticeBoard] store result entity @e[tag=hover,limit=1,tag=noticeBoard] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=radio] store result entity @e[tag=hover,limit=1,tag=radio] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=gramophone] store result entity @e[tag=hover,limit=1,tag=gramophone] Rotation[0] float 1 run data get entity @s Rotation[0] 1
execute as @s[tag=hasPressedF,scores={editStick=1},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=owl] store result entity @e[tag=hover,limit=1,tag=owl] Rotation[0] float 1 run data get entity @s Rotation[0] 1



execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePoint,tag=!creaturePointSpawn] run tellraw @s ["",{"text":"Must be set for a creature spawn point!","color":"red"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.nestType int 1 run scoreboard players add @s nestType 1
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=17..}] store result entity @s ArmorItems[3].tag.nestType int 1 run scoreboard players set @s nestType 1
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=1}] run tellraw @s ["",{"text":"Nest type set to: Toads","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=2}] run tellraw @s ["",{"text":"Nest type set to: Murtlaps","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=3}] run tellraw @s ["",{"text":"Nest type set to: Large Spiders","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=4}] run tellraw @s ["",{"text":"Nest type set to: Small Spiders","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=5}] run tellraw @s ["",{"text":"Nest type set to: Flubberworms","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=6}] run tellraw @s ["",{"text":"Nest type set to: Rats","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=7}] run tellraw @s ["",{"text":"Nest type set to: Trolls","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=8}] run tellraw @s ["",{"text":"Nest type set to: Death Eaters","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=9}] run tellraw @s ["",{"text":"Nest type set to: Pixie Gnomes","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=10}] run tellraw @s ["",{"text":"Nest type set to: Monster Books","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=11}] run tellraw @s ["",{"text":"Nest type set to: Suits of Armour","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=12}] run tellraw @s ["",{"text":"Nest type set to: Skeletons","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=13}] run tellraw @s ["",{"text":"Nest type set to: Skeleton Archers","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=14}] run tellraw @s ["",{"text":"Nest type set to: Skeleton Swordsmen","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=15}] run tellraw @s ["",{"text":"Nest type set to: Grindylows","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePointSpawn,scores={nestType=16}] run tellraw @s ["",{"text":"Nest type set to: Poltergeists","color":"white"}]

execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=stupefyTarget,tag=!smallTarget] run tag @s add makeSmallTarget

execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=stupefyTarget,tag=makeSmallTarget] run data merge entity @s {IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:45}}]}
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=stupefyTarget,tag=makeSmallTarget] run tag @s add smallTarget
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=hover,limit=1,tag=stupefyTarget,tag=makeSmallTarget] run tag @s remove makeSmallTarget

# Alohomora door type
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=alohomora_door,tag=hover] at @s run function hp:creation_tools/change_type_door
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=keyLockedDoor,tag=hover] at @s run function hp:creation_tools/change_type_door
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=riddleLockedDoor,tag=hover] at @s run function hp:creation_tools/change_type_door

# Magnetic pillar height
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory,tag=!isSneaking] as @e[tag=magneticObject,tag=hover] store result entity @s ArmorItems[3].tag.height int 1 run scoreboard players add @s height 1
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory,tag=isSneaking] as @e[tag=magneticObject,tag=hover] store result entity @s ArmorItems[3].tag.height int 1 run scoreboard players remove @s height 1
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] as @e[tag=magneticObject,tag=hover] run tellraw @a ["",{"text":"Height set to ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=magneticObject]","objective":"height"},"bold":true,"color":"gold"},{"text":".","color":"white"}]

# Magnetic pillar height
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory,tag=!isSneaking] as @e[tag=magneticObject,tag=hover] store result entity @s ArmorItems[3].tag.type int 1 run scoreboard players add @s type 1
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory,tag=isSneaking] as @e[tag=magneticObject,tag=hover] store result entity @s ArmorItems[3].tag.type int 1 run scoreboard players remove @s type 1
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=magneticObject,tag=hover] run tellraw @a ["",{"text":"Type set to ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=magneticObject]","objective":"type"},"bold":true,"color":"gold"},{"text":". (1 = normal, 2 = mirror, 3 = ladder)","color":"white"}]

# Potted mandrake
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=mandrake,tag=hover,tag=potted] run tag @s add makeUnPottedMandrake
execute as @s[scores={editStick=2},tag=!inInventory,tag=makeUnPottedMandrake] as @e[tag=mandrake,tag=hover] run tag @s remove potted
execute as @s[scores={editStick=2},tag=!inInventory,tag=makeUnPottedMandrake] as @e[tag=mandrake,tag=hover] run data merge entity @s {HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={editStick=2},tag=!inInventory,tag=makeUnPottedMandrake] as @e[tag=mandrake,tag=hover] at @s run tp @s ~ ~-.2 ~
execute as @s[scores={editStick=2},tag=!inInventory,tag=makeUnPottedMandrake] run tag @s remove hasPressedF
execute as @s[scores={editStick=2},tag=!inInventory,tag=makeUnPottedMandrake] run tag @s remove makeUnPottedMandrake
execute as @s[tag=hasPressedF,scores={editStick=2},tag=!inInventory] if entity @e[tag=mandrake,tag=hover,tag=!potted] run tag @s add makePottedMandrake
execute as @s[scores={editStick=2},tag=!inInventory,tag=makePottedMandrake] as @e[tag=mandrake,tag=hover] run tag @s add potted
execute as @s[scores={editStick=2},tag=!inInventory,tag=makePottedMandrake] as @e[tag=mandrake,tag=hover] run data merge entity @s {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:87}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={editStick=2},tag=!inInventory,tag=makePottedMandrake] as @e[tag=mandrake,tag=hover] at @s run tp @s ~ ~.2 ~
execute as @s[scores={editStick=2},tag=!inInventory,tag=makePottedMandrake] run tag @s remove hasPressedF
execute as @s[scores={editStick=2},tag=!inInventory,tag=makePottedMandrake] run tag @s remove makePottedMandrake


# Creaturepoint spawnpoint or not
scoreboard players set @s tmp 0
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=!creaturePointSpawn,scores={spawnCount=..-1}] run tag @s add makeActiveSpawnPointController
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=creaturePointSpawn,scores={spawnCount=..-1}] run tag @s add makeInactiveSpawnPointController
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=creaturePointSpawn,scores={spawnCount=0..}] run tag @s add removeAsSpawnPointController


execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] run tag @s add creaturePointSpawn
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] store result entity @s ArmorItems[3].tag.spawnCount int 1 run scoreboard players set @s spawnCount -1
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players operation @s nestID = currentNestID nestID
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] run scoreboard players add currentNestID nestID 1
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] run tellraw @a ["",{"text":"Set as active spawnpoint controller for ID ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"},{"text":". There may only be one spawnpoint controller per ID.","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeActiveSpawnPointController] run tag @s remove makeActiveSpawnPointController

execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeInactiveSpawnPointController] run tag @s add creaturePointSpawn
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeInactiveSpawnPointController] store result entity @s ArmorItems[3].tag.spawnCount int 1 run scoreboard players set @s spawnCount 0
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeInactiveSpawnPointController] run tellraw @a ["",{"text":"Set as inactive spawnpoint controller for ID ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"},{"text":". There may only be one spawnpoint controller per ID.","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=makeInactiveSpawnPointController] run tag @s remove makeInactiveSpawnPointController

execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=removeAsSpawnPointController] run tag @s remove creaturePointSpawn
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=removeAsSpawnPointController] store result entity @s ArmorItems[3].tag.spawnCount int 1 run scoreboard players set @s spawnCount -1
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=removeAsSpawnPointController] run tellraw @a ["",{"text":"Removed as spawnpoint controller for ID ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"},{"text":". There may only be one spawnpoint controller per ID.","color":"white"}]
execute as @s[tag=hasPressedF,scores={editStick=3},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=removeAsSpawnPointController] run tag @s remove removeAsSpawnPointController

# Creature spawnpoint spawn delay
execute as @s[tag=hasPressedF,scores={editStick=4},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.spawnDelay int 1 run scoreboard players add @s spawnDelay 10
execute as @s[tag=hasPressedF,scores={editStick=4},tag=isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.spawnDelay int 1 run scoreboard players remove @s spawnDelay 10 
execute as @s[tag=hasPressedF,scores={editStick=4},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] run tellraw @a ["",{"text":"set spawn delay to ","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePointSpawn]","objective":"spawnDelay"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={editStick=4},tag=!inInventory] if entity @e[tag=hover,limit=1,tag=creaturePoint,tag=!creaturePointSpawn] run tellraw @s ["",{"text":"Must be set for a creature spawn point!","color":"red"}]


execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=alohomora_door,tag=hover] at @s run function hp:creation_tools/delete_alohomora_door
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=creaturePoint,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=chest,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=fakeChest,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=brewer,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=bombarda_blockade,tag=hover] at @s run function hp:misc/bombarda_blockade
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=bombarda_blockade,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=wingardium,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=pickUp,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=crate,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=hogwartsSeal,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=stupefyTarget,tag=hover] at @s run setblock ~ 1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=stupefyTarget,tag=hover] at @s run setblock ~ 0 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=stupefyTarget,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=turningPillar,tag=hover] at @s run setblock ~ ~1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=turningPillar,tag=hover] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=turningPillar,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=manaWell,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=keyLockedDoor,tag=hover] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=keyLockedDoor,tag=hover] at @s run setblock ~ ~1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=keyLockedDoor,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=alohomora_door,tag=hover] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=alohomora_door,tag=hover] at @s run setblock ~ ~1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=alohomora_door,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=mandrake,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=earmuffs,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=pigeonFlock,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lumosEnterArea,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=noticeBoard,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=snakeChain,tag=hover] at @s run setblock ~ 0 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=snakeChain,tag=hover] at @s run setblock ~ 1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=snakeChain,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lever,tag=hover] at @s run setblock ~ 0 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lever,tag=hover] at @s run setblock ~ 1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lever,tag=hover] at @s run setblock ~ 2 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lever,tag=hover] at @s run setblock ~ 3 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lever,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=jumpPlant,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=magnet,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=magneticObject,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=radio,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=gramophone,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=owl,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=lamp,tag=hover] at @s run kill @s
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=riddleLockedDoor,tag=hover] at @s run setblock ~ ~ ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=riddleLockedDoor,tag=hover] at @s run setblock ~ ~1 ~ minecraft:air
execute as @s[tag=hasPressedF,scores={editStick=5},tag=!inInventory] as @e[tag=riddleLockedDoor,tag=hover] at @s run kill @s


execute as @s[tag=hasPressedF,scores={editStick=6},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players add @s nestID 1
execute as @s[tag=hasPressedF,scores={editStick=6},tag=isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players remove @s nestID 1 
execute as @s[tag=hasPressedF,scores={editStick=6},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint] run tellraw @a ["",{"text":"ID set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"}]

execute as @s[tag=hasPressedF,scores={editStick=6},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=lumosEnterArea] store result entity @s ArmorItems[3].tag.blockadeID int 1 run scoreboard players add @s blockadeID 1
execute as @s[tag=hasPressedF,scores={editStick=6},tag=isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=lumosEnterArea] store result entity @s ArmorItems[3].tag.blockadeID int 1 run scoreboard players remove @s blockadeID 1 
execute as @s[tag=hasPressedF,scores={editStick=6},tag=!inInventory] as @e[tag=hover,limit=1,tag=lumosEnterArea] run tellraw @a ["",{"text":"Blockade ID set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=lumosEnterArea]","objective":"blockadeID"},"bold":true,"color":"gold"}]

execute as @s[tag=hasPressedF,scores={editStick=6},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=mandrake] store result entity @s ArmorItems[3].tag.blockadeID int 1 run scoreboard players add @s blockadeID 1
execute as @s[tag=hasPressedF,scores={editStick=6},tag=isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=mandrake] store result entity @s ArmorItems[3].tag.blockadeID int 1 run scoreboard players remove @s blockadeID 1 
execute as @s[tag=hasPressedF,scores={editStick=6},tag=!inInventory] as @e[tag=hover,limit=1,tag=mandrake] run tellraw @a ["",{"text":"Blockade ID set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=mandrake]","objective":"blockadeID"},"bold":true,"color":"gold"}]

execute as @s[tag=hasPressedF,scores={editStick=7},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.maxCreatureCount int 1 run scoreboard players add @s maxCreatureCount 1
execute as @s[tag=hasPressedF,scores={editStick=7},tag=!isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.timeSinceSpawn int 1 run scoreboard players set @s timeSinceSpawn 0
execute as @s[tag=hasPressedF,scores={editStick=7},tag=isSneaking,tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] store result entity @s ArmorItems[3].tag.maxCreatureCount int 1 run scoreboard players remove @s[scores={maxCreatureCount=1..}] maxCreatureCount 1 
execute as @s[tag=hasPressedF,scores={editStick=7},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePointSpawn] run tellraw @a ["",{"text":"Number set to","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"maxCreatureCount"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={editStick=7},tag=!inInventory] as @e[tag=hover,limit=1,tag=creaturePoint,tag=!creaturePointSpawn] run tellraw @a ["",{"text":"Must be adjusted for spawnpoint","color":"red"}]


execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s run say @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2]
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ 0 ~ stone
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ 1 ~ stone
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ 2 ~ stone
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ 3 ~ stone
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ ~ ~ air
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s at @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2] run setblock ~ ~-1 ~ air
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s run kill @e[tag=wingardiumSwitch,limit=1,sort=nearest,distance=..2]
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s run say @e[tag=bookshelf_door,limit=1,sort=nearest,distance=..2]
execute as @s[tag=hasPressedF,scores={editStick=8},tag=!inInventory] at @s run kill @e[tag=bookshelf_door,limit=1,sort=nearest,distance=..2]

execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=crate] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=hogwartsSeal] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=smallChest] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=largeChest] ~ ~-0.695 ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=pickUp] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=brewer] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=mandrake] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=earmuffs] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=pigeonFlock] ~ ~ ~ 0 0
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] as @e[tag=hover,limit=1,tag=pigeonFlock] store result entity @s Rotation[0] float 10 run data get entity @s HandItems[1].tag.rotation 1
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory,tag=!isSneaking] at @s run tp @e[tag=hover,limit=1,tag=noticeBoard] ^ ^.5 ^1.5 ~180 ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory,tag=isSneaking] at @s positioned ^ ^.5 ^1.5 align xyz rotated as @s run tp @e[tag=hover,limit=1,tag=noticeBoard] ^-0.5 ^0.5 ^-0.065 ~180 ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=radio] ~ ~ ~ ~ ~
execute as @s[tag=hasPressedF,scores={editStick=9},tag=!inInventory] at @s run tp @e[tag=hover,limit=1,tag=gramophone] ~ ~ ~ ~ ~


execute as @s[tag=hasPressedF,scores={editStick=10},tag=!inInventory,tag=isSneaking] if entity @e[tag=hover,limit=1,tag=creaturePoint] run scoreboard players operation @s copyID = @e[tag=hover,limit=1,tag=creaturePoint] nestID
execute as @s[tag=hasPressedF,scores={editStick=10},tag=!inInventory,tag=isSneaking] if entity @e[tag=hover,limit=1,tag=creaturePoint] run tellraw @s ["",{"text":"Copied ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"}]
execute as @s[tag=hasPressedF,scores={editStick=10},tag=!inInventory,tag=!isSneaking] if entity @e[tag=hover,limit=1,tag=creaturePoint] store result entity @e[tag=hover,limit=1,tag=creaturePoint] ArmorItems[3].tag.nestID int 1 run scoreboard players operation @e[tag=hover,limit=1,tag=creaturePoint] nestID = @s copyID
execute as @s[tag=hasPressedF,scores={editStick=10},tag=!inInventory,tag=!isSneaking] if entity @e[tag=hover,limit=1,tag=creaturePoint] run tellraw @s ["",{"text":"Pasted ID","color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=hover,limit=1,tag=creaturePoint]","objective":"nestID"},"bold":true,"color":"gold"}]



execute at @e[tag=spawnCreaturePoint] run summon armor_stand ~ ~ ~ {NoGravity:1b,Team:"pathPoints",Invulnerable:1b,Invisible:0b,Tags:["creaturePoint","editInteractable","spawningcreaturePoint","restorable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @e[tag=spawningcreaturePoint] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players set @s nestID 0
execute as @e[tag=spawningcreaturePoint] store result entity @s ArmorItems[3].tag.spawnDelay int 1 run scoreboard players set @s spawnDelay 100
execute as @e[tag=spawningcreaturePoint] store result entity @s ArmorItems[3].tag.spawnCount int 1 run scoreboard players set @s spawnCount -1
execute as @e[tag=spawningcreaturePoint] run tag @s remove spawningcreaturePoint
execute as @e[tag=spawnCreaturePoint] run kill @s


execute at @e[tag=spawnLargeChest] run summon minecraft:armor_stand ~ ~-.675 ~-.35 {NoGravity:1b,Team:"NPC",CustomName:"{\"text\":\"Большой Сундукˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],Head:[90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]},Invisible:1b,Tags:["chest","largeChest","interactable","resettable","glowable","restorable","largeChestBeingSpawned"],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:58}},{}],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:57}}],NoBasePlate:1b}
scoreboard players set @e[tag=largeChestBeingSpawned] animTest 0
tag @e[tag=largeChestBeingSpawned] remove largeChestBeingSpawned
execute as @e[tag=spawnLargeChest] run kill @s


execute at @e[tag=spawnFakeChest] run summon minecraft:armor_stand ~ ~-.675 ~-.35 {NoGravity:1b,Team:"NPC",Invulnerable:1b,DisabledSlots:2039583,Pose:{RightArm:[0.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],Head:[90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]},Invisible:1b,Tags:["fakeChest","largeChest","interactable","resettable","glowable","restorable","fakeChestBeingSpawned","spellEntity"],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:58}},{}],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:57}}],NoBasePlate:1b}
scoreboard players set @e[tag=fakeChestBeingSpawned] animTest 0
tag @e[tag=fakeChestBeingSpawned] remove fakeChestBeingSpawned
execute as @e[tag=spawnFakeChest] run kill @s


execute at @e[tag=spawnSmallChest] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Team:"NPC",CustomName:"{\"text\":\"Маленький Сундукˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["chest","smallChest","interactable","glowable","restorable","smallChestBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:56}}],NoBasePlate:1b}
scoreboard players set @e[tag=smallChestBeingSpawned] animTest 0
tag @e[tag=smallChestBeingSpawned] remove smallChestBeingSpawned
execute as @e[tag=spawnSmallChest] run kill @s

execute at @e[tag=spawnBookshelfDoor] as @p if entity @s[y_rotation=-45..44] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["spellEntity","bookshelf_door","wingardiumDoor","bookshelfDoorBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:48}}],NoBasePlate:1b,Rotation:[180F,0F]}
execute at @e[tag=spawnBookshelfDoor] as @p if entity @s[y_rotation=45..134] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["spellEntity","bookshelf_door","wingardiumDoor","bookshelfDoorBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:48}}],NoBasePlate:1b,Rotation:[-90F,0F]}
execute at @e[tag=spawnBookshelfDoor] as @p if entity @s[y_rotation=135..179.9999] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["spellEntity","bookshelf_door","wingardiumDoor","bookshelfDoorBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:48}}],NoBasePlate:1b,Rotation:[0F,0F]}
execute at @e[tag=spawnBookshelfDoor] as @p if entity @s[y_rotation=-180..-134] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["spellEntity","bookshelf_door","wingardiumDoor","bookshelfDoorBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:48}}],NoBasePlate:1b,Rotation:[0F,0F]}
execute at @e[tag=spawnBookshelfDoor] as @p if entity @s[y_rotation=-135..-44] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["spellEntity","bookshelf_door","wingardiumDoor","bookshelfDoorBeingSpawned","resettable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:48}}],NoBasePlate:1b,Rotation:[90F,0F]}

scoreboard players set @e[tag=bookshelfDoorBeingSpawned] animTest 0
execute as @e[tag=bookshelfDoorBeingSpawned] store result entity @s ArmorItems[3].tag.posX int 1 run data get entity @s Pos[0] 1
execute as @e[tag=bookshelfDoorBeingSpawned] store result entity @s ArmorItems[3].tag.posY int 1 run data get entity @s Pos[1] 1
execute as @e[tag=bookshelfDoorBeingSpawned] store result entity @s ArmorItems[3].tag.posZ int 1 run data get entity @s Pos[2] 1
execute as @e[tag=bookshelfDoorBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
tag @e[tag=bookshelfDoorBeingSpawned] remove bookshelfDoorBeingSpawned
execute as @e[tag=spawnBookshelfDoor] run kill @s

execute at @e[tag=spawnBrewer] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Team:"brewer",NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b,Tags:["brewer","glowable","restorable","interactable","brewerBeingSpawned"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:54}}],NoBasePlate:1b}
tag @e[tag=brewerBeingSpawned] remove brewerBeingSpawned
execute as @e[tag=spawnBrewer] run kill @s

execute at @e[tag=spawnBlockade] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bombarda_blockade","blockadeBeingSpawned","interactable","restorable","resettable","noInteraction","noHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}],Rotation:[180F,0F]}
execute at @e[tag=spawnBlockade] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bombarda_blockade","blockadeBeingSpawned","interactable","restorable","resettable","noInteraction","noHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}],Rotation:[-90F,0F]}
execute at @e[tag=spawnBlockade] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bombarda_blockade","blockadeBeingSpawned","interactable","restorable","resettable","noInteraction","noHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}],Rotation:[0F,0F]}
execute at @e[tag=spawnBlockade] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bombarda_blockade","blockadeBeingSpawned","interactable","restorable","resettable","noInteraction","noHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}],Rotation:[0F,0F]}
execute at @e[tag=spawnBlockade] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {DisabledSlots:2039583,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["bombarda_blockade","blockadeBeingSpawned","interactable","restorable","resettable","noInteraction","noHover"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}],Rotation:[90F,0F]}
execute as @e[tag=blockadeBeingSpawned,limit=1] at @s run function hp:misc/reset_bombarda_blockade
tag @e[tag=blockadeBeingSpawned] remove blockadeBeingSpawned
execute as @e[tag=spawnBlockade] run kill @s

execute at @e[tag=spawnWingardiumBlock] run summon armor_stand ~ ~ ~ {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned
execute as @e[tag=spawnWingardiumBlock] run kill @s

execute at @e[tag=spawnMoneyPileSmall] run summon armor_stand ~ ~ ~ {Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","moneySmall"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:53}}]}
execute at @e[tag=spawnMoneyPileSmall] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=spawnMoneyPileSmall] run kill @s

execute at @e[tag=spawnMoneyPileMedium] run summon armor_stand ~ ~ ~ {Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","moneyMedium"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:52}}]}
execute at @e[tag=spawnMoneyPileMedium] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=spawnMoneyPileMedium] run kill @s

execute at @e[tag=spawnMoneyPileLarge] run summon armor_stand ~ ~ ~ {Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","moneyLarge"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:51}}]}
execute as @e[tag=spawnMoneyPileLarge] run kill @s

execute at @e[tag=spawnGoldenSnitch] run summon armor_stand ~ ~ ~ {Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","goldenSnitch"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:44}}]}
execute as @e[tag=spawnGoldenSnitch] run kill @s

execute at @e[tag=spawnDiadem] run summon armor_stand ~ ~ ~ {Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","diadem"],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1428}}]}
execute as @e[tag=spawnDiadem] run kill @s

execute at @e[tag=spawnFluxweed] run summon armor_stand ~ ~ ~ {Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","resettable","pickUp","fluxweed"],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1428}}]}
execute as @e[tag=spawnFluxweed] run kill @s

execute at @e[tag=spawnFlask] if score global Random matches 0..6 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=true,south=true,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 0..6 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:32}}}
execute at @e[tag=spawnFlask] if score global Random matches 7..13 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=false,south=false,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 7..13 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:31}}}
execute at @e[tag=spawnFlask] if score global Random matches 14..20 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=false,south=false,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 14..20 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:30}}}
execute at @e[tag=spawnFlask] if score global Random matches 21..27 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=true,south=false,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 21..27 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:29}}}
execute at @e[tag=spawnFlask] if score global Random matches 28..34 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=false,south=true,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 28..34 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:28}}}
execute at @e[tag=spawnFlask] if score global Random matches 35..41 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=false,south=false,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 35..41 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:27}}}
execute at @e[tag=spawnFlask] if score global Random matches 42..47 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=true,south=true,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 42..47 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:26}}}
execute at @e[tag=spawnFlask] if score global Random matches 48..53 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=false,south=true,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 48..53 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:25}}}
execute at @e[tag=spawnFlask] if score global Random matches 54..58 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=true,south=false,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 54..58 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:24}}}
execute at @e[tag=spawnFlask] if score global Random matches 59..63 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=true,south=true,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 59..63 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:23}}}
execute at @e[tag=spawnFlask] if score global Random matches 64..68 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=true,south=true,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 64..68 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:22}}}
execute at @e[tag=spawnFlask] if score global Random matches 69..74 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=false,south=false,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 69..74 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:21}}}
execute at @e[tag=spawnFlask] if score global Random matches 75..79 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=true,south=false,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 75..79 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:20}}}
execute at @e[tag=spawnFlask] if score global Random matches 80..86 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=false,south=true,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 80..86 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:19}}}
execute at @e[tag=spawnFlask] if score global Random matches 87..93 run setblock ~ ~ ~ magenta_stained_glass_pane[east=true,north=true,south=false,west=false]
execute at @e[tag=spawnFlask] if score global Random matches 87..93 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:18}}}
execute at @e[tag=spawnFlask] if score global Random matches 94..100 run setblock ~ ~ ~ magenta_stained_glass_pane[east=false,north=false,south=true,west=true]
execute at @e[tag=spawnFlask] if score global Random matches 94..100 run summon item_frame ~ ~1 ~ {Facing:1b,ItemRotation:4b,Item:{id:"minecraft:golden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:17}}}
execute as @e[tag=spawnFlask] run kill @s

execute at @e[tag=spawnQuestCrate] run summon armor_stand ~ ~ ~ {Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["crate","glowable","restorable","editInteractable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:38}}]}
execute as @e[tag=spawnQuestCrate] run kill @s

execute at @e[tag=spawnStupefyTarget] run summon zombie ~ ~ ~ {PersistenceRequired:1b,Silent:1b,NoAI:1b,Team:"NPC",NoGravity:1b,Marker:0b,Invisible:1b,Tags:["restorable","glowable","invisible","spellEntity","stupefyTarget","editInteractable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:46}}],Health:10000f,Attributes:[{Name:generic.maxHealth,Base:10000}]}
execute as @e[tag=spawnStupefyTarget] at @s run setblock ~ 1 ~ minecraft:quartz_block
execute as @e[tag=spawnStupefyTarget] at @s run setblock ~ 0 ~ minecraft:command_block
execute as @e[tag=spawnStupefyTarget] run kill @s

execute as @e[tag=spawnSpikes] at @s run setblock ~ ~ ~ minecraft:jungle_pressure_plate
execute as @e[tag=spawnSpikes] at @s run setblock ~ ~-2 ~ minecraft:command_block{Command:"function hp:misc/spikes"}
execute as @e[tag=spawnSpikes] run kill @s

execute as @e[tag=spawnStar] at @s run summon armor_stand ~ ~ ~ {Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["resettable","star","glowable","restorable","editInteractable"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:39}}]}
execute as @e[tag=spawnStar] run kill @s

execute as @e[tag=spawnTurningPillar] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["spellEntity","resettable","interactable","glowable","restorable","turningPillar"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Head:[0.0000001f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:40}},{}],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:41}}]}
execute as @e[tag=spawnTurningPillar] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[tag=spawnTurningPillar] at @s run setblock ~ ~1 ~ minecraft:barrier
execute as @e[tag=spawnTurningPillar] run kill @s

execute as @e[tag=spawnManaWell] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["interactable","glowable","restorable","manaWell"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:42}}]}
execute as @e[tag=spawnManaWell] at @s run setblock ~ ~ ~ minecraft:barrier
execute as @e[tag=spawnManaWell] run kill @s

execute at @e[tag=spawnWingardiumSwitch] run setblock ~ ~ ~ minecraft:detector_rail
execute at @e[tag=spawnWingardiumSwitch] run setblock ~ ~-1 ~ minecraft:barrier
execute at @e[tag=spawnWingardiumSwitch] run setblock ~ 0 ~ minecraft:command_block
execute at @e[tag=spawnWingardiumSwitch] run setblock ~ 2 ~ minecraft:redstone_block
execute at @e[tag=spawnWingardiumSwitch] run setblock ~ 1 ~ minecraft:quartz_block
execute at @e[tag=spawnWingardiumSwitch] run setblock ~ 3 ~ minecraft:command_block
execute at @e[tag=spawnWingardiumSwitch] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Tags:["wingardiumSwitch","wingardiumSwitchInit","resettable"],CustomName:"{\"text\":\"wingardumSwitch\"}",Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @e[tag=wingardiumSwitchInit] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumSwitchInit] run tag @s remove wingardiumSwitchInit

kill @e[tag=spawnWingardiumSwitch]


# Alohomora Door
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-45..44] run setblock ~ ~ ~ minecraft:piston_head[facing=north,short=true,type=sticky]
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alohomora_lock","glowable","restorable","locked","alohomora_door","alohomora_door_init","south","interactable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[270f,0f,0f],LeftArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}

execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=45..134] run setblock ~ ~ ~ minecraft:piston_head[facing=east,short=true,type=sticky]
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alohomora_lock","glowable","restorable","locked","alohomora_door","alohomora_door_init","west","interactable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[270f,0f,0f],LeftArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}

execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=135..179.9999] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-180..-134] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alohomora_lock","glowable","restorable","locked","alohomora_door","alohomora_door_init","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[270f,0f,0f],LeftArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alohomora_lock","glowable","restorable","locked","alohomora_door","alohomora_door_init","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[270f,0f,0f],LeftArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}

execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-135..-44] run setblock ~ ~ ~ minecraft:piston_head[facing=west,short=true,type=sticky]
execute at @e[tag=spawnAlohomoraDoor] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alohomora_lock","glowable","restorable","locked","alohomora_door","alohomora_door_init","east","interactable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[270f,0f,0f],LeftArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_nugget",Count:1b},{id:"minecraft:gold_nugget",Count:1b}]}

execute at @e[tag=spawnAlohomoraDoor] run setblock ~ ~1 ~ minecraft:barrier

execute as @e[tag=alohomora_door_init] store result entity @s ArmorItems[3].tag.toolType int 1 run scoreboard players set @s toolType 3

tag @e[tag=alohomora_door_init] remove alohomora_door_init

kill @e[tag=spawnAlohomoraDoor]


# Key locked Door
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-45..44] run setblock ~ ~ ~ minecraft:piston_head[facing=north,short=true,type=sticky]
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locked","keyLockedDoor","glowable","restorable","key_door_init","south","interactable","resettable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}

execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=45..134] run setblock ~ ~ ~ minecraft:piston_head[facing=east,short=true,type=sticky]
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locked","keyLockedDoor","glowable","restorable","key_door_init","west","interactable","resettable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}

execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=135..179.9999] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-180..-134] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locked","keyLockedDoor","glowable","restorable","key_door_init","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locked","keyLockedDoor","glowable","restorable","key_door_init","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}

execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-135..-44] run setblock ~ ~ ~ minecraft:piston_head[facing=west,short=true,type=sticky]
execute at @e[tag=spawnKeyLockDoor] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locked","keyLockedDoor","glowable","restorable","key_door_init","east","interactable","resettable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:43}},{}]}

execute at @e[tag=spawnKeyLockDoor] run setblock ~ ~1 ~ minecraft:barrier

execute as @e[tag=key_door_init] store result entity @s ArmorItems[3].tag.toolType int 1 run scoreboard players set @s toolType 3
execute as @e[tag=key_door_init] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID


kill @e[tag=spawnKeyLockDoor]

# Riddle locked Door
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-45..44] run setblock ~ ~ ~ minecraft:piston_head[facing=north,short=true,type=sticky]
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["convNPC","locked","riddleLockedDoor","glowable","restorable","riddle_door_init","south","interactable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}

execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=45..134] run setblock ~ ~ ~ minecraft:piston_head[facing=east,short=true,type=sticky]
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["convNPC","locked","riddleLockedDoor","glowable","restorable","riddle_door_init","west","interactable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}

execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=135..179.9999] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-180..-134] run setblock ~ ~ ~ minecraft:piston_head[facing=south,short=true,type=sticky]
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["convNPC","locked","riddleLockedDoor","glowable","restorable","riddle_door_init","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["convNPC","locked","riddleLockedDoor","glowable","restorable","riddle_door_init","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}

execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-135..-44] run setblock ~ ~ ~ minecraft:piston_head[facing=west,short=true,type=sticky]
execute at @e[tag=spawnRiddleLockDoor] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"alohomora",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["convNPC","locked","riddleLockedDoor","glowable","restorable","riddle_door_init","east","interactable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:50}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:4}},{}]}

execute at @e[tag=spawnRiddleLockDoor] run setblock ~ ~1 ~ minecraft:barrier

execute as @e[tag=riddle_door_init] store result entity @s ArmorItems[3].tag.toolType int 1 run scoreboard players set @s toolType 3
execute as @e[tag=riddle_door_init] store result entity @s ArmorItems[3].tag.conv int 1 run scoreboard players set @s conv -1
execute as @e[tag=riddle_door_init] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID

tag @e[tag=riddle_door_init] remove key_door_init
kill @e[tag=spawnRiddleLockDoor]

# Mandrake
execute as @e[tag=spawnMandrake] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0.001f,0f,0f]},Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Marker:1b,Team:"NPC",Tags:["restorable","editInteractable","mandrake"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:89}}]}
execute as @e[tag=spawnMandrake] run kill @s

execute as @e[tag=spawnEarmuffs] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Team:"NPC",Tags:["glowable","restorable","interactable","earmuffs"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:19}}]}
execute as @e[tag=spawnEarmuffs] run kill @s

execute as @e[tag=spawnPigeons] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,DisabledSlots:4144959,Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[-90f,0f,0f]},ShowArms:1b,Invisible:1b,Tags:["spellEntity","pigeonFlock","editInteractable"],Rotation:[0.0f,0.0f],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:101}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:101}}]}
execute as @e[tag=spawnPigeons] run scoreboard players set @s tmp3 0
execute as @e[tag=spawnPigeons] run kill @s

# Lumos Transition
execute as @e[tag=spawnLumosTransition] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["lumosEnterArea","editInteractable"],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @e[tag=spawnLumosTransition] run kill @s

# Notice Board
execute as @e[tag=spawnNoticeBoard] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Team:"NPC",NoBasePlate:1b,Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["glowable","resettable","restorable","noticeBoard","editInteractable","noticeBoardIsBeingSpawned"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:21}}]}
execute as @e[tag=noticeBoardIsBeingSpawned] store result entity @s ArmorItems[3].tag.toolID int 1 run scoreboard players operation @s toolID = noticeBoard toolID
execute as @e[tag=noticeBoardIsBeingSpawned] run scoreboard players add noticeBoard toolID 1
execute as @e[tag=noticeBoardIsBeingSpawned] run tag @s remove noticeBoardIsBeingSpawned
execute as @e[tag=spawnNoticeBoard] run kill @s

# Snake Chain
execute at @e[tag=spawnSnakeCain] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","snakeChain","glowable","restorable","south","interactable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}

execute at @e[tag=spawnSnakeCain] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","snakeChain","glowable","restorable","west","interactable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}

execute at @e[tag=spawnSnakeCain] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","snakeChain","glowable","restorable","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}
execute at @e[tag=spawnSnakeCain] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","snakeChain","glowable","restorable","north","interactable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}

execute at @e[tag=spawnSnakeCain] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","snakeChain","glowable","restorable","east","interactable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}

execute at @e[tag=spawnSnakeCain] run setblock ~ 1 ~ minecraft:quartz_block
execute at @e[tag=spawnSnakeCain] run setblock ~ 0 ~ minecraft:command_block

kill @e[tag=spawnSnakeCain]

# Lever
execute at @e[tag=spawnLever] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","lever","lever_init","glowable","restorable","south","interactable","resettable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}

execute at @e[tag=spawnLever] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","lever","lever_init","glowable","restorable","west","interactable","resettable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}

execute at @e[tag=spawnLever] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","lever","lever_init","glowable","restorable","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}
execute at @e[tag=spawnLever] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","lever","lever_init","glowable","restorable","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}

execute at @e[tag=spawnLever] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","lever","lever_init","glowable","restorable","east","interactable","resettable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}

execute at @e[tag=spawnLever] run setblock ~ 0 ~ minecraft:command_block
execute at @e[tag=spawnLever] run setblock ~ 1 ~ minecraft:redstone_block
execute at @e[tag=spawnLever] run setblock ~ 2 ~ minecraft:quartz_block
execute at @e[tag=spawnLever] run setblock ~ 3 ~ minecraft:command_block
# Use tmp2 and tmp3 to store lever state
execute as @e[tag=lever_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=lever_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=lever_init] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
tag @e[tag=lever_init] remove lever_init
kill @e[tag=spawnLever]


# Spawn Jump Plant
execute as @e[tag=spawnJumpPlant] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","veraVerto","jumpPlant","jumpPlant_init","glowable","restorable","interactable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1426}}]}
execute as @e[tag=jumpPlant_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=jumpPlant_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=jumpPlant_init] run tag @s remove jumpPlant_init
execute as @e[tag=spawnJumpPlant] run kill @s

# Magnet
execute at @e[tag=spawnMagnet] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","veraVerto","magnet","magnet_init","glowable","restorable","south","interactable","resettable"],Rotation:[180F,0F],DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1442}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1443}}]}

execute at @e[tag=spawnMagnet] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","veraVerto","magnet","magnet_init","glowable","restorable","west","interactable","resettable"],Rotation:[-90F,0F],DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1442}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1443}}]}

execute at @e[tag=spawnMagnet] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","veraVerto","magnet","magnet_init","glowable","restorable","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1442}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1443}}]}
execute at @e[tag=spawnMagnet] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","veraVerto","magnet","magnet_init","glowable","restorable","north","interactable","resettable"],Rotation:[0F,0F],DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1442}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1443}}]}

execute at @e[tag=spawnMagnet] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"veraVerto",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spellEntity","veraVerto","magnet","magnet_init","glowable","restorable","east","interactable","resettable"],Rotation:[90F,0F],DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1442}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1443}}]}
# Use tmp2 and tmp3 to store Vera Verto State
execute as @e[tag=magnet_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=magnet_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=magnet_init] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
tag @e[tag=magnet_init] remove magnet_init
kill @e[tag=spawnMagnet]

# Spawn Magnetic Object
execute as @e[tag=spawnMagneticObject] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"NPC",Marker:0b,NoGravity:1b,Invulnerable:1b,Tags:["magneticObject","magneticObject_init","spellEntity","editInteractable","glowable","restorable","resettable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.height int 1 run scoreboard players set @s height 2
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.type int 1 run scoreboard players set @s type 1
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.posX int 1 run data get entity @s Pos[0]
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.posY int 1 run data get entity @s Pos[1]
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.posZ int 1 run data get entity @s Pos[2]
execute as @e[tag=magneticObject_init] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=magneticObject_init] run tag @s remove magneticObject_init
execute as @e[tag=spawnMagneticObject] run kill @s

# Spawn Radio
execute as @e[tag=spawnRadio] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["radio_init","radio","spellEntity","interactable","glowable","restorable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
# Use tmp2 and tmp3 to store radio state
execute as @e[tag=radio_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=radio_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=radio_init] run tag @s remove radio_init
execute as @e[tag=spawnRadio] run kill @s

# spawn owl
execute as @e[tag=spawnOwl] at @s run summon minecraft:armor_stand ~ ~-1.25 ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["owl_init","owl","editInteractable","spellEntity"],Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:0b,Damage:1}}]}
execute as @e[tag=owl_init] store result entity @s ArmorItems[3].tag.posX double 1 run data get entity @s Pos[0] 1000
execute as @e[tag=owl_init] store result entity @s ArmorItems[3].tag.posY double 1 run data get entity @s Pos[1] 1000
execute as @e[tag=owl_init] store result entity @s ArmorItems[3].tag.posZ double 1 run data get entity @s Pos[2] 1000
execute as @e[tag=owl_init] run tag @s remove owl_init
execute as @e[tag=spawnOwl] run kill @s

# Spawn pensive
execute as @e[tag=spawnPensive] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["pensive","interactable","glowable","restorable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @e[tag=spawnPensive] run kill @s

# Lamp
execute at @e[tag=spawnLamp] as @p if entity @s[y_rotation=-45..44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lamp","editInteractable"],Rotation:[180F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute at @e[tag=spawnLamp] as @p if entity @s[y_rotation=45..134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lamp","editInteractable"],Rotation:[-90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute at @e[tag=spawnLamp] as @p if entity @s[y_rotation=135..179.9999] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lamp","editInteractable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute at @e[tag=spawnLamp] as @p if entity @s[y_rotation=-180..-134] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lamp","editInteractable"],Rotation:[0F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute at @e[tag=spawnLamp] as @p if entity @s[y_rotation=-135..-44] run summon armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lamp","editInteractable"],Rotation:[90F,0F],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @e[tag=spawnLamp] run kill @s

# Spawn Old Time Radio
execute as @e[tag=spawnOldRadio] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["radio_init","radio","spellEntity","interactable","glowable","restorable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1463}}]}
# Use tmp2 and tmp3 to store radio state
execute as @e[tag=radio_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=radio_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=radio_init] run tag @s remove radio_init
execute as @e[tag=spawnOldRadio] run kill @s

# Spawn Grammophone
execute as @e[tag=spawnGramophone] at @s run summon minecraft:armor_stand ~ ~ ~ {Team:"NPC",Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["gramophone_init","gramophone","spellEntity","interactable","glowable","restorable"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1462}}]}
# Use tmp2 and tmp3 to store radio state
execute as @e[tag=gramophone_init] store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute as @e[tag=gramophone_init] store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
execute as @e[tag=gramophone_init] run tag @s remove gramophone_init
execute as @e[tag=spawnGramophone] run kill @s

# Clear cinematic bars
tag @s remove letterbox

execute as @s[scores={editStick=-10}] run scoreboard players set @s editStick 1
