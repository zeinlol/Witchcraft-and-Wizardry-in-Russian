# Quest direction. - Move direction tester back to spawn when done so it doesn't somehow get unloaded and can be used by the next player

execute store result score @s questRot2 run data get entity @e[type=armor_stand,tag=questDirectionTester,limit=1] Rotation[1] 1

execute at @s as @e[type=armor_stand,tag=questDirectionTester,limit=1] positioned ~ ~100 ~ run tp @s ~ ~ ~

# If the quest direction somehow gets unloaded spawn a new one. If two are loaded kill them and spawn a new one.
execute store result score @s tmp2 if entity @e[type=armor_stand,tag=questDirectionTester]
execute if score @s tmp2 matches 0 run summon minecraft:armor_stand 10011.50 77.00 4.50 {NoGravity: 1b, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.maxHealth"}, {Base: 0.0d, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071d, Name: "generic.movementSpeed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 0, DeathTime: 0s, Pose: {}, Invisible: 1b, Tags: ["questDirectionTester"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 1b, Rotation: [-82.81137f, 3.757705f], HandItems: [{}, {}], Fire: 0s, ArmorItems: [{}, {}, {}, {}], NoBasePlate: 0b, HurtTime: 0s}
execute if score @s tmp2 matches 2.. run kill @e[type=armor_stand,tag=questDirectionTester]
execute if score @s tmp2 matches 2.. run summon minecraft:armor_stand 10011.50 77.00 4.50 {NoGravity: 1b, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.maxHealth"}, {Base: 0.0d, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071d, Name: "generic.movementSpeed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 0, DeathTime: 0s, Pose: {}, Invisible: 1b, Tags: ["questDirectionTester"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 1b, Rotation: [-82.81137f, 3.757705f], HandItems: [{}, {}], Fire: 0s, ArmorItems: [{}, {}, {}, {}], NoBasePlate: 0b, HurtTime: 0s}

# Calculate rotation of compass
execute store result score @s questRot run data get entity @e[type=armor_stand,tag=questDirectionTester,limit=1] Rotation[0]
execute store result score @s tmp run data get entity @s Rotation[0]
scoreboard players add @s questRot 180
scoreboard players add @s tmp 180
scoreboard players operation @s questRot -= @s tmp
scoreboard players add @s[scores={questRot=..0}] questRot 360
scoreboard players add @s[scores={questRot=..0}] questRot 360
scoreboard players remove @s[scores={questRot=360..}] questRot 360
scoreboard players remove @s[scores={questRot=360..}] questRot 360
execute at @s as @e[type=armor_stand,tag=questDirectionTester,limit=1] run tp @s 10011 77 4