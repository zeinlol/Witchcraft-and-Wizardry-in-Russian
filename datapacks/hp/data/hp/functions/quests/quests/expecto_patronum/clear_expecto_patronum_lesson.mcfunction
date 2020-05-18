# Set score
scoreboard players set resetExpectoPatronumClass global 0
scoreboard players set patronumClassIsSetUp global 0

# Set Lupin in classroom
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 264 1 1 false @s
execute as @e[tag=officeLupin] at @s run tp @s ~ ~-500 ~
kill @e[tag=officeLupin]

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 632 248 1 1 false @s
summon minecraft:zombie_villager 639.50 96.00 246.50 {HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.maxHealth"}, {Base: 1.0d, Name: "generic.knockbackResistance"}, {Base: 0.0d, Name: "generic.movementSpeed"}, {Base: 2.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}, {Base: 35.0d, Name: "generic.followRange"}, {Base: 3.0d, Name: "generic.attackDamage"}, {Base: 0.0999861590071536d, Name: "zombie.spawnReinforcements"}], Invulnerable: 1b, FallFlying: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, InWaterTime: -1, FallDistance: 0.0f, DeathTime: 0s, WorldUUIDMost: 7024783080082261215L, HandDropChances: [0.0f, 0.0f], PersistenceRequired: 1b, Spigot.ticksLived: 125132, Tags: ["npc", "lupin", "useZombieScaleOnHead", "uncommonHead", "classroomLupin", "headLocked", "glowable", "convNPC", "interactable", "restorable"], ConversionTime: -1, Motion: [0.0d, 0.0d, 0.0d], Leashed: 0b, Health: 20.0f, Bukkit.updateLevel: 2, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b, Glowing: 0b, NoAI: 1b, Rotation: [207.0f, 1.0f], HandItems: [{id: "minecraft:stone_shovel", Count: 1b, tag: {Unbreakable: 1b, Damage: 95}}, {id: "minecraft:stone_shovel", Count: 1b, tag: {Unbreakable: 1b, Damage: 95}}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], Profession: 4, CanBreakDoors: 0b, Fire: 0s, ArmorItems: [{}, {}, {}, {id: "minecraft:stone_hoe", Count: 1b, tag: {npcHead: 102, lerp3End: -19, Unbreakable: 1b, npcRotX: 1, npcRotY: 207, lerp2Increment: 0, lerp2Time: 0, lerp3Start: -7, lerp3Current: -19, lerp2Current: -4, lerp2Start: -46, lerp3Increment: 0, lerp3Time: 0, conv: 4, Damage: 129, lerp2End: -4}}], CanPickUpLoot: 0b, HurtTime: 0s, WorldUUIDLeast: -5171798306662181185L, DrownedConversionTime: -1}

kill @e[tag=chunkLoader]