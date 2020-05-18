# Setup the classroom with the cat and hide the normal mcGonagall
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 136 1 1 false @s
summon minecraft:ocelot 722.5 68 138.48 {NoAI:1b, HurtByTimestamp: 0, CatType: 1, Sitting: 1b, Attributes: [{Base: 10.0d, Name: "generic.maxHealth"}, {Base: 0.0d, Name: "generic.knockbackResistance"}, {Base: 0.0d, Name: "generic.movementSpeed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}, {Base: 0.0d, Name: "generic.followRange"}], Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, InLove: 0, DeathTime: 0s, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Tags: ["mcGonagallClassroomCat"], Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Leashed: 0b, Health: 10.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [0.0f, 0.0f], HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], OwnerUUID: "", Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0b, HurtTime: 0s }
tp @e[tag=mcGonagallClassroomCat,limit=1] 722.5 68 138.48 0 0
tp @e[tag=mcGonagallClassroom] 720 63 140
kill @e[tag=chunkLoader]
