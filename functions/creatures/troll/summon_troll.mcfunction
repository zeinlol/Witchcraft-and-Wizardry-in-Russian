scoreboard players set @s tmp 0
execute as @s[scores={tmp=0}] unless entity 0-0-0-0-a store success score @s tmp run tag @s add summonTroll1
execute as @s[tag=summonTroll1] run summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUIDMost:0,UUIDLeast:10,Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @s[tag=summonTroll1] as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 1
execute as @s[tag=summonTroll1] run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:5,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=summonTroll1] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:5L,M:0L}}
execute as @s[tag=summonTroll1] run tag @s remove summonTroll1

execute as @s[scores={tmp=0}] unless entity 0-0-0-0-b store success score @s tmp run tag @s add summonTroll2
execute as @s[tag=summonTroll2] run summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUIDMost:0,UUIDLeast:11,Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @s[tag=summonTroll2] as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 2
execute as @s[tag=summonTroll2] run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:6,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=summonTroll2] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:6L,M:0L}}
execute as @s[tag=summonTroll2] run tag @s remove summonTroll2

execute as @s[scores={tmp=0}] unless entity 0-0-0-0-c store success score @s tmp run tag @s add summonTroll3
execute as @s[tag=summonTroll3] run summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUIDMost:0,UUIDLeast:12,Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @s[tag=summonTroll3] as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 3
execute as @s[tag=summonTroll3] run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:7,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=summonTroll3] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:7L,M:0L}}
execute as @s[tag=summonTroll3] run tag @s remove summonTroll3

execute as @s[scores={tmp=0}] unless entity 0-0-0-0-d store success score @s tmp run tag @s add summonTroll4
execute as @s[tag=summonTroll4] run summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUIDMost:0,UUIDLeast:13,Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @s[tag=summonTroll4] as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 4
execute as @s[tag=summonTroll4] run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:8,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=summonTroll4] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:8L,M:0L}}
execute as @s[tag=summonTroll4] run tag @s remove summonTroll4

execute as @s[scores={tmp=0}] unless entity 0-0-0-0-e store success score @s tmp run tag @s add summonTroll5
execute as @s[tag=summonTroll5] run summon iron_golem ~ ~ ~ {Silent:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Team:"Creature",Tags:["creature","trollCreature","trollCreatureIsBeingSummoned","keep"],UUIDMost:0,UUIDLeast:14,Health:200f,Attributes:[{Name:generic.maxHealth,Base:200},{Name:generic.followRange,Base:100}]}
execute as @s[tag=summonTroll5] as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.trollID int 1 run scoreboard players set @s trollID 5
execute as @s[tag=summonTroll5] run summon armor_stand ~ ~ ~ {Silent:0b,Tags:["trollTarget"],UUIDMost:0,UUIDLeast:9,NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=summonTroll5] run summon minecraft:snowball ~ ~4 ~ {Motion:[0.0,-5.0,0.0],owner:{L:9L,M:0L}}
execute as @s[tag=summonTroll5] run tag @s remove summonTroll5

execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run function hp:creatures/setup_health
execute as @e[tag=trollCreatureIsBeingSummoned,limit=1,sort=nearest] run scoreboard players set @s tmp 4