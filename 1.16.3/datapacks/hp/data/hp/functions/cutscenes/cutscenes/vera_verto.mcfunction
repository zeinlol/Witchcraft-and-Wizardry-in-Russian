execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] if score playerInVeraVertoSpellChallenge global matches 0 run function hp:quests/quests/vera_verto/reset_vera_verto_spell_challenge

execute as @s[scores={cutSceneTimer=1}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=1}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 136 1 1 false @s
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run kill @e[tag=chunkLoader]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run summon minecraft:armor_stand 720.53 67.57 137.51 {NoGravity: 1b, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.max_health"}, {Base: 0.0d, Name: "generic.knockback_resistance"}, {Base: 0.699999988079071d, Name: "generic.movement_speed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armor_toughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 0, DeathTime: 0s, Pose: {Head: [0.0f, 0.5f, 0.0f]}, Invisible: 1b, Tags: ["veraVertoGoblet"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 1b, Rotation: [-90.0f, 0.0f], HandItems: [{}, {}], Fire: 0s, ArmorItems: [{},{},{},{}], NoBasePlate: 0b, HurtTime: 0s}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run summon minecraft:villager 722.5 300 140.28 {HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.max_health"}, {Base: 1.0d, Name: "generic.knockback_resistance"}, {Base: 0.0d, Name: "generic.movement_speed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armor_toughness"}, {Base: 0.0d, Name: "generic.follow_range"}], Riches: 0, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DeathTime: 0s, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, Tags: ["npc", "mcGonagallClassroomCutscene", "useVillagerScaleOnHead", "mcGonagallClassroom", "restorable"], Age: 0, Motion: [0.0d, 0.0d, 0.0d], Leashed: 0b, Health: 20.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 1b, Offers: {Recipes: []}, NoAI: 1b, Rotation: [0.0f, 0.0f], HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], VillagerData: {profession: "minecraft:nitwit", level: 1, type: "minecraft:plains"}, Fire: -1s, ArmorItems: [{}, {}, {}, {id: "minecraft:stone_hoe", Count: 1b, tag: {npcHead: 103, lerp3End: 0, Unbreakable: 1b, lerp2Increment: 0, lerp2Time: 0, lerp3Start: 0, lerp3Current: 0, lerp2Current: 0, lerp2Start: -72, lerp3Increment: 0, lerp3Time: 0, conv: 3, Damage: 63, lerp2End: 0}}], CanPickUpLoot: 1b, HurtTime: 0s, CareerLevel: 1, Career: 0, Inventory: [], Willing: 0b}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run effect clear @e[tag=veraVertoParrot,limit=1] minecraft:invisibility
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {ArmorItems:[{},{},{},{}]}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run effect give @e[tag=mcGonagallClassroomCutscene,limit=1] minecraft:invisibility 100000 1 true
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run data merge entity @e[tag=mcGonagallClassroomCutscene,limit=1] {NoGravity:1b,NoAI:0b}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=mcGonagallClassroomCutscene,limit=1] 722.5 300 140.28 0 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=mcGonagallClassroomCat,limit=1] 722.5 68 138.48 0 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run data merge entity @e[tag=mcGonagallClassroomCat,limit=1] {Sitting:1b,NoAI:1b}
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run effect clear @e[tag=mcGonagallClassroomCat,limit=1] minecraft:invisibility
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=mcGonagallClassroomCat,limit=1] 722.5 68 138.48 0 0
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run data merge entity @e[tag=mcGonagallClassroomCat,limit=1] {Sitting:0b,NoAI:0b,Motion:[0.0,0.25,0.7]}
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run effect give @e[tag=mcGonagallClassroomCat,limit=1] minecraft:invisibility 100000 1 true
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run tp @e[tag=mcGonagallClassroomCutscene,limit=1] 722.5 67 140.28 0 0
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run particle minecraft:cloud 722.5 68 140.48 0.1 0.4 0.1 0.05 50 force
execute as @s[scores={cutSceneTimer=75},tag=cutsceneLeader] run playsound minecraft:custom.spell.apparate.arrive master @a 722.5 67 140.28 1 1.2
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run effect clear @e[tag=mcGonagallClassroomCutscene,limit=1] minecraft:invisibility
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run data merge entity @e[tag=mcGonagallClassroomCutscene,limit=1] {NoGravity:0b,NoAI:0b,Motion:[0.0,0.1,0.45]}
execute as @s[scores={cutSceneTimer=90},tag=cutsceneLeader] run data merge entity @e[tag=mcGonagallClassroomCutscene,limit=1] {NoAI:1b}
execute as @s[scores={cutSceneTimer=90..95},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run tp @s ~ ~ ~0.08 0 0
execute as @s[scores={cutSceneTimer=96..97},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run tp @s ~ ~ ~0.04 0 0
execute as @s[scores={cutSceneTimer=98..99},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run tp @s ~ ~ ~0.02 0 0

# Goblet wabble
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1491}}]}
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] run effect give @e[tag=veraVertoParrot,limit=1] minecraft:invisibility 100000 1 true
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] at @e[tag=veraVertoParrot,limit=1] run particle minecraft:cloud ~ ~0.2 ~ 0.05 0.1 0.05 0.02 15 force
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] at @e[tag=veraVertoParrot,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 1 1.2
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] at @e[tag=veraVertoParrot,limit=1] run playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1 1.5
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] at @e[tag=veraVertoParrot,limit=1] run playsound minecraft:custom.inventory.pickup.gem master @a ~ ~ ~ 1 0.5
execute as @s[scores={cutSceneTimer=612},tag=cutsceneLeader] at @e[tag=veraVertoParrot,limit=1] run playsound minecraft:custom.inventory.pickup.ring master @a ~ ~ ~ 1 0.2
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[4.15448f,19.3423f,-0.120109f]}}
execute as @s[scores={cutSceneTimer=611},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[3.83366f,17.7264f,-0.44612f]}}
execute as @s[scores={cutSceneTimer=612},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[3.36087f,16.1857f,-0.926556f]}}
execute as @s[scores={cutSceneTimer=613},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.78676f,14.7215f,-1.50994f]}}
execute as @s[scores={cutSceneTimer=614},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.162f,13.3364f,-2.14481f]}}
execute as @s[scores={cutSceneTimer=615},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[1.53724f,12.035f,-2.77967f]}}
execute as @s[scores={cutSceneTimer=616},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.963141f,10.8239f,-3.36305f]}}
execute as @s[scores={cutSceneTimer=617},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.49035f,9.71218f,-3.84349f]}}
execute as @s[scores={cutSceneTimer=618},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.169528f,8.71216f,-4.1695f]}}
execute as @s[scores={cutSceneTimer=619},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.051331f,7.84116f,-4.28961f]}}
execute as @s[scores={cutSceneTimer=620},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.135804f,7.12362f,-4.1225f]}}
execute as @s[scores={cutSceneTimer=621},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.36509f,6.49548f,-3.66892f]}}
execute as @s[scores={cutSceneTimer=622},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.702984f,5.87242f,-3.00048f]}}
execute as @s[scores={cutSceneTimer=623},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[1.11328f,5.25677f,-2.18881f]}}
execute as @s[scores={cutSceneTimer=624},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[1.55979f,4.65166f,-1.30552f]}}
execute as @s[scores={cutSceneTimer=625},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.00629f,4.0614f,-0.422227f]}}
execute as @s[scores={cutSceneTimer=626},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.41659f,3.4918f,0.389446f]}}
execute as @s[scores={cutSceneTimer=627},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.75449f,2.95059f,1.05788f]}}
execute as @s[scores={cutSceneTimer=628},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.98377f,2.44761f,1.51146f]}}
execute as @s[scores={cutSceneTimer=629},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[3.06825f,1.99448f,1.67857f]}}
execute as @s[scores={cutSceneTimer=630},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.94315f,1.60301f,1.61559f]}}
execute as @s[scores={cutSceneTimer=631},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.57962f,1.28225f,1.44883f]}}
execute as @s[scores={cutSceneTimer=632},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[2.03233f,1.03484f,1.20951f]}}
execute as @s[scores={cutSceneTimer=633},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[1.40126f,0.855373f,0.927031f]}}
execute as @s[scores={cutSceneTimer=634},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.799603f,0.732106f,0.630012f]}}
execute as @s[scores={cutSceneTimer=635},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0.313888f,0.650833f,0.34723f]}}
execute as @s[scores={cutSceneTimer=636},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[-0.011551f,0.598337f,0.108616f]}}
execute as @s[scores={cutSceneTimer=637},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[-0.165901f,0.564028f,-0.05362f]}}
execute as @s[scores={cutSceneTimer=638},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[-0.15693f,0.521274f,-0.103608f]}}
execute as @s[scores={cutSceneTimer=639},tag=cutsceneLeader] run data merge entity @e[tag=veraVertoGoblet,limit=1] {Pose:{Head:[0f,0.5f,0f]}}

tp @s[scores={cutSceneTimer=22}] 725.49 67.16775 144.3875 152.605 6.27
tp @s[scores={cutSceneTimer=23}] 725.49 67.1655 144.395 152.43 6.32
tp @s[scores={cutSceneTimer=24}] 725.49 67.16325 144.4025 152.255 6.37
tp @s[scores={cutSceneTimer=25}] 725.49 67.161 144.41 152.08 6.420001
tp @s[scores={cutSceneTimer=26}] 725.49 67.15874 144.4175 151.905 6.470001
tp @s[scores={cutSceneTimer=27}] 725.49 67.15649 144.425 151.73 6.520001
tp @s[scores={cutSceneTimer=28}] 725.49 67.15424 144.4326 151.555 6.570001
tp @s[scores={cutSceneTimer=29}] 725.49 67.15199 144.4401 151.38 6.620001
tp @s[scores={cutSceneTimer=30}] 725.49 67.14974 144.4476 151.205 6.670002
tp @s[scores={cutSceneTimer=31}] 725.49 67.14749 144.4551 151.03 6.720002
tp @s[scores={cutSceneTimer=32}] 725.49 67.14524 144.4626 150.855 6.770002
tp @s[scores={cutSceneTimer=33}] 725.49 67.14299 144.4701 150.68 6.820002
tp @s[scores={cutSceneTimer=34}] 725.49 67.14074 144.4776 150.505 6.870002
tp @s[scores={cutSceneTimer=35}] 725.49 67.13849 144.4851 150.33 6.920002
tp @s[scores={cutSceneTimer=36}] 725.49 67.13624 144.4926 150.155 6.970003
tp @s[scores={cutSceneTimer=37}] 725.49 67.13399 144.5001 149.9799 7.020003
tp @s[scores={cutSceneTimer=38}] 725.49 67.13174 144.5076 149.8049 7.070003
tp @s[scores={cutSceneTimer=39}] 725.49 67.12949 144.5151 149.6299 7.120003
tp @s[scores={cutSceneTimer=40}] 725.49 67.12724 144.5226 149.4549 7.170003
tp @s[scores={cutSceneTimer=41}] 725.49 67.12498 144.5302 149.2799 7.220004
tp @s[scores={cutSceneTimer=42}] 725.49 67.12273 144.5377 149.1049 7.270004
tp @s[scores={cutSceneTimer=43}] 725.49 67.12048 144.5452 148.9299 7.320004
tp @s[scores={cutSceneTimer=44}] 725.49 67.11823 144.5527 148.7549 7.370004
tp @s[scores={cutSceneTimer=45}] 725.49 67.11598 144.5602 148.5799 7.420004
tp @s[scores={cutSceneTimer=46}] 725.49 67.11373 144.5677 148.4049 7.470005
tp @s[scores={cutSceneTimer=47}] 725.49 67.11148 144.5752 148.2299 7.520005
tp @s[scores={cutSceneTimer=48}] 725.49 67.10923 144.5827 148.0549 7.570005
tp @s[scores={cutSceneTimer=49}] 725.49 67.10698 144.5902 147.8799 7.620005
tp @s[scores={cutSceneTimer=50}] 725.49 67.10473 144.5977 147.7049 7.670005
tp @s[scores={cutSceneTimer=51}] 725.49 67.10248 144.6052 147.5299 7.720006
tp @s[scores={cutSceneTimer=52}] 725.49 67.10023 144.6127 147.3549 7.770006
tp @s[scores={cutSceneTimer=53}] 725.49 67.09798 144.6202 147.1799 7.820006
tp @s[scores={cutSceneTimer=54}] 725.49 67.09573 144.6277 147.0049 7.870006
tp @s[scores={cutSceneTimer=55}] 725.49 67.09348 144.6353 146.8299 7.920006
tp @s[scores={cutSceneTimer=56}] 725.49 67.09122 144.6428 146.6549 7.970006
tp @s[scores={cutSceneTimer=57}] 725.49 67.08897 144.6503 146.4799 8.020006
tp @s[scores={cutSceneTimer=58}] 725.49 67.08672 144.6578 146.3049 8.070006
tp @s[scores={cutSceneTimer=59}] 725.49 67.08447 144.6653 146.1299 8.120007
tp @s[scores={cutSceneTimer=60}] 725.49 67.08222 144.6728 145.9549 8.170007
tp @s[scores={cutSceneTimer=61}] 725.49 67.07997 144.6803 145.7799 8.220007
tp @s[scores={cutSceneTimer=62}] 725.49 67.07772 144.6878 145.6049 8.270007
tp @s[scores={cutSceneTimer=63}] 725.49 67.07547 144.6953 145.4299 8.320007
tp @s[scores={cutSceneTimer=64}] 725.49 67.07322 144.7028 145.2549 8.370008
tp @s[scores={cutSceneTimer=65}] 725.49 67.07097 144.7103 145.0799 8.420008
tp @s[scores={cutSceneTimer=66}] 725.49 67.06872 144.7178 144.9049 8.470008
tp @s[scores={cutSceneTimer=67}] 725.49 67.06647 144.7253 144.7299 8.520008
tp @s[scores={cutSceneTimer=68}] 725.49 67.06422 144.7328 144.5549 8.570008
tp @s[scores={cutSceneTimer=69}] 725.49 67.06197 144.7404 144.3799 8.620008
tp @s[scores={cutSceneTimer=70}] 725.49 67.05972 144.7479 144.2048 8.670009
tp @s[scores={cutSceneTimer=71}] 725.49 67.05746 144.7554 144.0298 8.720009
tp @s[scores={cutSceneTimer=72}] 725.49 67.05521 144.7629 143.8548 8.770009
tp @s[scores={cutSceneTimer=73}] 725.49 67.05296 144.7704 143.6798 8.820009
tp @s[scores={cutSceneTimer=74}] 725.49 67.05071 144.7779 143.5048 8.870009
tp @s[scores={cutSceneTimer=75}] 725.49 67.04846 144.7854 143.3298 8.92001
tp @s[scores={cutSceneTimer=76}] 725.49 67.04621 144.7929 143.1548 8.97001
tp @s[scores={cutSceneTimer=77}] 725.49 67.04396 144.8004 142.9798 9.02001
tp @s[scores={cutSceneTimer=78}] 725.49 67.04171 144.8079 142.8048 9.07001
tp @s[scores={cutSceneTimer=79}] 725.49 67.03946 144.8154 142.6298 9.12001
tp @s[scores={cutSceneTimer=80}] 725.49 67.03721 144.8229 142.4548 9.170011
tp @s[scores={cutSceneTimer=81}] 725.49 67.03496 144.8304 142.2798 9.220011
tp @s[scores={cutSceneTimer=82}] 725.49 67.03271 144.838 142.1048 9.270011
tp @s[scores={cutSceneTimer=83}] 725.49 67.03046 144.8455 141.9298 9.320011
tp @s[scores={cutSceneTimer=84}] 725.49 67.02821 144.853 141.7548 9.370011
tp @s[scores={cutSceneTimer=85}] 725.49 67.02596 144.8605 141.5798 9.420012
tp @s[scores={cutSceneTimer=86}] 725.49 67.0237 144.868 141.4048 9.470012
tp @s[scores={cutSceneTimer=87}] 725.49 67.02145 144.8755 141.2298 9.520012
tp @s[scores={cutSceneTimer=88}] 725.49 67.0192 144.883 141.0548 9.570012
tp @s[scores={cutSceneTimer=89}] 725.49 67.01695 144.8905 140.8798 9.620012
tp @s[scores={cutSceneTimer=90}] 725.49 67.0147 144.898 140.7048 9.670012
tp @s[scores={cutSceneTimer=91}] 725.49 67.01245 144.9055 140.5298 9.720013
tp @s[scores={cutSceneTimer=92}] 725.49 67.0102 144.913 140.3548 9.770013
tp @s[scores={cutSceneTimer=93}] 725.49 67.00795 144.9205 140.1798 9.820013
tp @s[scores={cutSceneTimer=94}] 725.49 67.0057 144.928 140.0048 9.870013
tp @s[scores={cutSceneTimer=95}] 725.49 67.00345 144.9355 139.8298 9.920013
tp @s[scores={cutSceneTimer=96}] 725.49 67.0012 144.9431 139.6548 9.970014
tp @s[scores={cutSceneTimer=97}] 725.49 66.99895 144.9506 139.4798 10.02001
tp @s[scores={cutSceneTimer=98}] 725.49 66.9967 144.9581 139.3048 10.07001
tp @s[scores={cutSceneTimer=99}] 725.49 66.99445 144.9656 139.1298 10.12001
tp @s[scores={cutSceneTimer=100}] 725.49 66.9922 144.9731 138.9548 10.17001
tp @s[scores={cutSceneTimer=101}] 725.49 66.98994 144.9806 138.7798 10.22001
tp @s[scores={cutSceneTimer=102}] 725.49 66.98769 144.9881 138.6048 10.27001
tp @s[scores={cutSceneTimer=103}] 725.49 66.98544 144.9956 138.4297 10.32001
tp @s[scores={cutSceneTimer=104}] 725.49 66.98319 145.0031 138.2547 10.37002
tp @s[scores={cutSceneTimer=105}] 725.49 66.98094 145.0106 138.0797 10.42002
tp @s[scores={cutSceneTimer=106}] 725.49 66.97869 145.0181 137.9047 10.47002
tp @s[scores={cutSceneTimer=107}] 725.49 66.97644 145.0256 137.7297 10.52002
tp @s[scores={cutSceneTimer=108}] 725.49 66.97419 145.0331 137.5547 10.57002
tp @s[scores={cutSceneTimer=109}] 725.49 66.97194 145.0406 137.3797 10.62002
tp @s[scores={cutSceneTimer=110}] 725.49 66.96969 145.0482 137.2047 10.67002
tp @s[scores={cutSceneTimer=111}] 725.49 66.96744 145.0557 137.0297 10.72002
tp @s[scores={cutSceneTimer=112}] 725.49 66.96519 145.0632 136.8547 10.77002
tp @s[scores={cutSceneTimer=113}] 725.49 66.96294 145.0707 136.6797 10.82002
tp @s[scores={cutSceneTimer=114}] 725.49 66.96069 145.0782 136.5047 10.87002
tp @s[scores={cutSceneTimer=115}] 725.49 66.95844 145.0857 136.3297 10.92002
tp @s[scores={cutSceneTimer=116}] 725.49 66.95618 145.0932 136.1547 10.97002
tp @s[scores={cutSceneTimer=117}] 725.49 66.95393 145.1007 135.9797 11.02002
tp @s[scores={cutSceneTimer=118}] 725.49 66.95168 145.1082 135.8047 11.07002
tp @s[scores={cutSceneTimer=119}] 725.49 66.94943 145.1157 135.6297 11.12002
tp @s[scores={cutSceneTimer=120}] 725.49 66.94718 145.1232 135.4547 11.17002
tp @s[scores={cutSceneTimer=121}] 725.49 66.94493 145.1307 135.2797 11.22002
tp @s[scores={cutSceneTimer=122}] 725.49 66.94268 145.1382 135.1047 11.27002
tp @s[scores={cutSceneTimer=123}] 725.49 66.94043 145.1458 134.9297 11.32002
tp @s[scores={cutSceneTimer=124}] 725.49 66.93818 145.1533 134.7547 11.37002
tp @s[scores={cutSceneTimer=125}] 725.49 66.93593 145.1608 134.5797 11.42002
tp @s[scores={cutSceneTimer=126}] 725.49 66.93368 145.1683 134.4047 11.47002
tp @s[scores={cutSceneTimer=127}] 725.49 66.93143 145.1758 134.2297 11.52002
tp @s[scores={cutSceneTimer=128}] 725.49 66.92918 145.1833 134.0547 11.57002
tp @s[scores={cutSceneTimer=129}] 725.49 66.92693 145.1908 133.8797 11.62002
tp @s[scores={cutSceneTimer=130}] 725.49 66.92467 145.1983 133.7047 11.67002
tp @s[scores={cutSceneTimer=131}] 725.49 66.92242 145.2058 133.5297 11.72002
tp @s[scores={cutSceneTimer=132}] 725.49 66.92017 145.2133 133.3547 11.77002
tp @s[scores={cutSceneTimer=133}] 725.49 66.91792 145.2208 133.1797 11.82002
tp @s[scores={cutSceneTimer=134}] 725.49 66.91567 145.2283 133.0047 11.87002
tp @s[scores={cutSceneTimer=135}] 725.49 66.91342 145.2358 132.8297 11.92002
tp @s[scores={cutSceneTimer=136}] 725.49 66.91117 145.2433 132.6546 11.97002
tp @s[scores={cutSceneTimer=137}] 725.49 66.90892 145.2509 132.4796 12.02002
tp @s[scores={cutSceneTimer=138}] 725.49 66.90667 145.2584 132.3046 12.07002
tp @s[scores={cutSceneTimer=139}] 725.49 66.90442 145.2659 132.1296 12.12002
tp @s[scores={cutSceneTimer=140}] 725.49 66.90217 145.2734 131.9546 12.17002
tp @s[scores={cutSceneTimer=141}] 725.49 66.89992 145.2809 131.7796 12.22002
tp @s[scores={cutSceneTimer=142}] 725.49 66.89767 145.2884 131.6046 12.27002
tp @s[scores={cutSceneTimer=143}] 725.49 66.89542 145.2959 131.4296 12.32002
tp @s[scores={cutSceneTimer=144}] 725.49 66.89317 145.3034 131.2546 12.37002
tp @s[scores={cutSceneTimer=145}] 725.49 66.89091 145.3109 131.0796 12.42002
tp @s[scores={cutSceneTimer=146}] 725.49 66.88866 145.3184 130.9046 12.47002
tp @s[scores={cutSceneTimer=147}] 725.49 66.88641 145.3259 130.7296 12.52002
tp @s[scores={cutSceneTimer=148}] 725.49 66.88416 145.3334 130.5546 12.57002
tp @s[scores={cutSceneTimer=149}] 725.49 66.88191 145.3409 130.3796 12.62002
tp @s[scores={cutSceneTimer=150}] 725.49 66.87966 145.3484 130.2046 12.67002
tp @s[scores={cutSceneTimer=151}] 725.49 66.87741 145.356 130.0296 12.72002
tp @s[scores={cutSceneTimer=152}] 725.49 66.87516 145.3635 129.8546 12.77002
tp @s[scores={cutSceneTimer=153}] 725.49 66.87291 145.371 129.6796 12.82002
tp @s[scores={cutSceneTimer=154}] 725.49 66.87066 145.3785 129.5046 12.87002
tp @s[scores={cutSceneTimer=155}] 725.49 66.86841 145.386 129.3296 12.92002
tp @s[scores={cutSceneTimer=156}] 725.49 66.86616 145.3935 129.1546 12.97003
tp @s[scores={cutSceneTimer=157}] 725.49 66.86391 145.401 128.9796 13.02003
tp @s[scores={cutSceneTimer=158}] 725.49 66.86166 145.4085 128.8046 13.07003
tp @s[scores={cutSceneTimer=159}] 725.49 66.85941 145.416 128.6296 13.12003
tp @s[scores={cutSceneTimer=160}] 725.49 66.85715 145.4235 128.4546 13.17003
tp @s[scores={cutSceneTimer=161}] 725.49 66.8549 145.431 128.2796 13.22003
tp @s[scores={cutSceneTimer=162}] 725.49 66.85265 145.4385 128.1046 13.27003
tp @s[scores={cutSceneTimer=163}] 725.49 66.8504 145.446 127.9296 13.32003
tp @s[scores={cutSceneTimer=164}] 725.49 66.84815 145.4536 127.7546 13.37003
tp @s[scores={cutSceneTimer=165}] 725.49 66.8459 145.4611 127.5796 13.42003
tp @s[scores={cutSceneTimer=166}] 725.49 66.84365 145.4686 127.4046 13.47003
tp @s[scores={cutSceneTimer=167}] 725.49 66.8414 145.4761 127.2296 13.52003
tp @s[scores={cutSceneTimer=168}] 725.49 66.83915 145.4836 127.0546 13.57003
tp @s[scores={cutSceneTimer=169}] 725.49 66.8369 145.4911 126.8795 13.62003
tp @s[scores={cutSceneTimer=170}] 725.49 66.83465 145.4986 126.7045 13.67003
tp @s[scores={cutSceneTimer=171}] 725.49 66.8324 145.5061 126.5295 13.72003
tp @s[scores={cutSceneTimer=172}] 725.49 66.83015 145.5136 126.3545 13.77003
tp @s[scores={cutSceneTimer=173}] 725.49 66.8279 145.5211 126.1795 13.82003
tp @s[scores={cutSceneTimer=174}] 725.49 66.82565 145.5286 126.0045 13.87003
tp @s[scores={cutSceneTimer=175}] 725.49 66.82339 145.5361 125.8295 13.92003
tp @s[scores={cutSceneTimer=176}] 725.49 66.82114 145.5436 125.6545 13.97003
tp @s[scores={cutSceneTimer=177}] 725.49 66.81889 145.5511 125.4795 14.02003
tp @s[scores={cutSceneTimer=178}] 725.49 66.81664 145.5587 125.3045 14.07003
tp @s[scores={cutSceneTimer=179}] 725.49 66.81439 145.5662 125.1295 14.12003
tp @s[scores={cutSceneTimer=180}] 725.49 66.81214 145.5737 124.9545 14.17003
tp @s[scores={cutSceneTimer=181}] 725.49 66.80989 145.5812 124.7795 14.22003
tp @s[scores={cutSceneTimer=182}] 725.49 66.80764 145.5887 124.6045 14.27003
tp @s[scores={cutSceneTimer=183}] 725.49 66.80539 145.5962 124.4295 14.32003
tp @s[scores={cutSceneTimer=184}] 725.49 66.80314 145.6037 124.2545 14.37003
tp @s[scores={cutSceneTimer=185}] 725.49 66.80089 145.6112 124.0795 14.42003
tp @s[scores={cutSceneTimer=186}] 725.49 66.79864 145.6187 123.9045 14.47003
tp @s[scores={cutSceneTimer=187}] 725.49 66.79639 145.6262 123.7295 14.52003
tp @s[scores={cutSceneTimer=188}] 725.49 66.79414 145.6337 123.5545 14.57003
tp @s[scores={cutSceneTimer=189}] 725.49 66.79189 145.6412 123.3795 14.62003
tp @s[scores={cutSceneTimer=190}] 725.49 66.78963 145.6487 123.2045 14.67003
tp @s[scores={cutSceneTimer=191}] 725.49 66.78738 145.6563 123.0295 14.72003
tp @s[scores={cutSceneTimer=192}] 725.49 66.78513 145.6638 122.8545 14.77003
tp @s[scores={cutSceneTimer=193}] 725.49 66.78288 145.6713 122.6795 14.82003
tp @s[scores={cutSceneTimer=194}] 725.49 66.78063 145.6788 122.5045 14.87003
tp @s[scores={cutSceneTimer=195}] 725.49 66.77838 145.6863 122.3295 14.92003
tp @s[scores={cutSceneTimer=196}] 725.49 66.77613 145.6938 122.1545 14.97003
tp @s[scores={cutSceneTimer=197}] 725.49 66.77388 145.7013 121.9795 15.02003
tp @s[scores={cutSceneTimer=198}] 725.49 66.77163 145.7088 121.8045 15.07003
tp @s[scores={cutSceneTimer=199}] 725.49 66.76938 145.7163 121.6295 15.12003
tp @s[scores={cutSceneTimer=200}] 725.49 66.76713 145.7238 121.4545 15.17003
execute as @s[scores={cutSceneTimer=180}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=200}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=200}] 719.4274 68.45216 148.695 207.39 21.2
tp @s[scores={cutSceneTimer=201}] 719.4249 68.45433 148.7 207.39 21.2
tp @s[scores={cutSceneTimer=202}] 719.4223 68.4565 148.7049 207.39 21.2
tp @s[scores={cutSceneTimer=203}] 719.4197 68.45866 148.7099 207.39 21.2
tp @s[scores={cutSceneTimer=204}] 719.4172 68.46083 148.7149 207.39 21.2
tp @s[scores={cutSceneTimer=205}] 719.4146 68.463 148.7198 207.39 21.2
tp @s[scores={cutSceneTimer=206}] 719.412 68.46516 148.7248 207.39 21.2
tp @s[scores={cutSceneTimer=207}] 719.4095 68.46733 148.7298 207.39 21.2
tp @s[scores={cutSceneTimer=208}] 719.4069 68.4695 148.7348 207.39 21.2
tp @s[scores={cutSceneTimer=209}] 719.4044 68.47166 148.7397 207.39 21.2
tp @s[scores={cutSceneTimer=210}] 719.4018 68.47383 148.7447 207.39 21.2
tp @s[scores={cutSceneTimer=211}] 719.3992 68.476 148.7497 207.39 21.2
tp @s[scores={cutSceneTimer=212}] 719.3967 68.47816 148.7547 207.39 21.2
tp @s[scores={cutSceneTimer=213}] 719.3941 68.48033 148.7596 207.39 21.2
tp @s[scores={cutSceneTimer=214}] 719.3915 68.4825 148.7646 207.39 21.2
tp @s[scores={cutSceneTimer=215}] 719.389 68.48466 148.7696 207.39 21.2
tp @s[scores={cutSceneTimer=216}] 719.3864 68.48683 148.7746 207.39 21.2
tp @s[scores={cutSceneTimer=217}] 719.3839 68.489 148.7795 207.39 21.2
tp @s[scores={cutSceneTimer=218}] 719.3813 68.49117 148.7845 207.39 21.2
tp @s[scores={cutSceneTimer=219}] 719.3787 68.49333 148.7895 207.39 21.2
tp @s[scores={cutSceneTimer=220}] 719.3762 68.4955 148.7945 207.39 21.2
tp @s[scores={cutSceneTimer=221}] 719.3736 68.49767 148.7994 207.39 21.2
tp @s[scores={cutSceneTimer=222}] 719.371 68.49983 148.8044 207.39 21.2
tp @s[scores={cutSceneTimer=223}] 719.3685 68.502 148.8094 207.39 21.2
tp @s[scores={cutSceneTimer=224}] 719.3659 68.50417 148.8144 207.39 21.2
tp @s[scores={cutSceneTimer=225}] 719.3633 68.50633 148.8193 207.39 21.2
tp @s[scores={cutSceneTimer=226}] 719.3608 68.5085 148.8243 207.39 21.2
tp @s[scores={cutSceneTimer=227}] 719.3582 68.51067 148.8293 207.39 21.2
tp @s[scores={cutSceneTimer=228}] 719.3557 68.51283 148.8343 207.39 21.2
tp @s[scores={cutSceneTimer=229}] 719.3531 68.515 148.8392 207.39 21.2
tp @s[scores={cutSceneTimer=230}] 719.3505 68.51717 148.8442 207.39 21.2
tp @s[scores={cutSceneTimer=231}] 719.348 68.51933 148.8492 207.39 21.2
tp @s[scores={cutSceneTimer=232}] 719.3454 68.5215 148.8542 207.39 21.2
tp @s[scores={cutSceneTimer=233}] 719.3428 68.52367 148.8591 207.39 21.2
tp @s[scores={cutSceneTimer=234}] 719.3403 68.52583 148.8641 207.39 21.2
tp @s[scores={cutSceneTimer=235}] 719.3377 68.528 148.8691 207.39 21.2
tp @s[scores={cutSceneTimer=236}] 719.3351 68.53017 148.8741 207.39 21.2
tp @s[scores={cutSceneTimer=237}] 719.3326 68.53233 148.879 207.39 21.2
tp @s[scores={cutSceneTimer=238}] 719.33 68.5345 148.884 207.39 21.2
tp @s[scores={cutSceneTimer=239}] 719.3275 68.53667 148.889 207.39 21.2
tp @s[scores={cutSceneTimer=240}] 719.3249 68.53883 148.894 207.39 21.2
tp @s[scores={cutSceneTimer=241}] 719.3223 68.541 148.8989 207.39 21.2
tp @s[scores={cutSceneTimer=242}] 719.3198 68.54317 148.9039 207.39 21.2
tp @s[scores={cutSceneTimer=243}] 719.3172 68.54533 148.9089 207.39 21.2
tp @s[scores={cutSceneTimer=244}] 719.3146 68.5475 148.9138 207.39 21.2
tp @s[scores={cutSceneTimer=245}] 719.3121 68.54967 148.9188 207.39 21.2
tp @s[scores={cutSceneTimer=246}] 719.3095 68.55183 148.9238 207.39 21.2
tp @s[scores={cutSceneTimer=247}] 719.3069 68.554 148.9288 207.39 21.2
tp @s[scores={cutSceneTimer=248}] 719.3044 68.55617 148.9337 207.39 21.2
tp @s[scores={cutSceneTimer=249}] 719.3018 68.55833 148.9387 207.39 21.2
tp @s[scores={cutSceneTimer=250}] 719.2993 68.5605 148.9437 207.39 21.2
tp @s[scores={cutSceneTimer=251}] 719.2967 68.56267 148.9487 207.39 21.2
tp @s[scores={cutSceneTimer=252}] 719.2941 68.56483 148.9536 207.39 21.2
tp @s[scores={cutSceneTimer=253}] 719.2916 68.567 148.9586 207.39 21.2
tp @s[scores={cutSceneTimer=254}] 719.289 68.56917 148.9636 207.39 21.2
tp @s[scores={cutSceneTimer=255}] 719.2864 68.57133 148.9686 207.39 21.2
tp @s[scores={cutSceneTimer=256}] 719.2839 68.5735 148.9735 207.39 21.2
tp @s[scores={cutSceneTimer=257}] 719.2813 68.57567 148.9785 207.39 21.2
tp @s[scores={cutSceneTimer=258}] 719.2787 68.57784 148.9835 207.39 21.2
tp @s[scores={cutSceneTimer=259}] 719.2762 68.58 148.9885 207.39 21.2
tp @s[scores={cutSceneTimer=260}] 719.2736 68.58217 148.9934 207.39 21.2
tp @s[scores={cutSceneTimer=261}] 719.2711 68.58434 148.9984 207.39 21.2
tp @s[scores={cutSceneTimer=262}] 719.2685 68.5865 149.0034 207.39 21.2
tp @s[scores={cutSceneTimer=263}] 719.2659 68.58867 149.0084 207.39 21.2
tp @s[scores={cutSceneTimer=264}] 719.2634 68.59084 149.0133 207.39 21.2
tp @s[scores={cutSceneTimer=265}] 719.2608 68.593 149.0183 207.39 21.2
tp @s[scores={cutSceneTimer=266}] 719.2582 68.59517 149.0233 207.39 21.2
tp @s[scores={cutSceneTimer=267}] 719.2557 68.59734 149.0283 207.39 21.2
tp @s[scores={cutSceneTimer=268}] 719.2531 68.5995 149.0332 207.39 21.2
tp @s[scores={cutSceneTimer=269}] 719.2505 68.60167 149.0382 207.39 21.2
tp @s[scores={cutSceneTimer=270}] 719.248 68.60384 149.0432 207.39 21.2
tp @s[scores={cutSceneTimer=271}] 719.2454 68.606 149.0482 207.39 21.2
tp @s[scores={cutSceneTimer=272}] 719.2429 68.60817 149.0531 207.39 21.2
tp @s[scores={cutSceneTimer=273}] 719.2403 68.61034 149.0581 207.39 21.2
tp @s[scores={cutSceneTimer=274}] 719.2377 68.6125 149.0631 207.39 21.2
tp @s[scores={cutSceneTimer=275}] 719.2352 68.61467 149.0681 207.39 21.2
tp @s[scores={cutSceneTimer=276}] 719.2326 68.61684 149.073 207.39 21.2
tp @s[scores={cutSceneTimer=277}] 719.23 68.619 149.078 207.39 21.2
tp @s[scores={cutSceneTimer=278}] 719.2275 68.62117 149.083 207.39 21.2
tp @s[scores={cutSceneTimer=279}] 719.2249 68.62334 149.088 207.39 21.2
tp @s[scores={cutSceneTimer=280}] 719.2224 68.6255 149.0929 207.39 21.2
tp @s[scores={cutSceneTimer=281}] 719.2198 68.62767 149.0979 207.39 21.2
tp @s[scores={cutSceneTimer=282}] 719.2172 68.62984 149.1029 207.39 21.2
tp @s[scores={cutSceneTimer=283}] 719.2147 68.632 149.1078 207.39 21.2
tp @s[scores={cutSceneTimer=284}] 719.2121 68.63417 149.1128 207.39 21.2
tp @s[scores={cutSceneTimer=285}] 719.2095 68.63634 149.1178 207.39 21.2
tp @s[scores={cutSceneTimer=286}] 719.207 68.6385 149.1228 207.39 21.2
tp @s[scores={cutSceneTimer=287}] 719.2044 68.64067 149.1277 207.39 21.2
tp @s[scores={cutSceneTimer=288}] 719.2018 68.64284 149.1327 207.39 21.2
tp @s[scores={cutSceneTimer=289}] 719.1993 68.645 149.1377 207.39 21.2
tp @s[scores={cutSceneTimer=290}] 719.1967 68.64717 149.1427 207.39 21.2
tp @s[scores={cutSceneTimer=291}] 719.1942 68.64934 149.1476 207.39 21.2
tp @s[scores={cutSceneTimer=292}] 719.1916 68.6515 149.1526 207.39 21.2
tp @s[scores={cutSceneTimer=293}] 719.189 68.65367 149.1576 207.39 21.2
tp @s[scores={cutSceneTimer=294}] 719.1865 68.65584 149.1626 207.39 21.2
tp @s[scores={cutSceneTimer=295}] 719.1839 68.658 149.1675 207.39 21.2
tp @s[scores={cutSceneTimer=296}] 719.1813 68.66017 149.1725 207.39 21.2
tp @s[scores={cutSceneTimer=297}] 719.1788 68.66234 149.1775 207.39 21.2
tp @s[scores={cutSceneTimer=298}] 719.1762 68.66451 149.1825 207.39 21.2
tp @s[scores={cutSceneTimer=299}] 719.1736 68.66667 149.1874 207.39 21.2
tp @s[scores={cutSceneTimer=300}] 719.1711 68.66884 149.1924 207.39 21.2
tp @s[scores={cutSceneTimer=301}] 719.1685 68.67101 149.1974 207.39 21.2
tp @s[scores={cutSceneTimer=302}] 719.166 68.67317 149.2024 207.39 21.2
tp @s[scores={cutSceneTimer=303}] 719.1634 68.67534 149.2073 207.39 21.2
tp @s[scores={cutSceneTimer=304}] 719.1608 68.67751 149.2123 207.39 21.2
tp @s[scores={cutSceneTimer=305}] 719.1583 68.67967 149.2173 207.39 21.2
tp @s[scores={cutSceneTimer=306}] 719.1557 68.68184 149.2223 207.39 21.2
tp @s[scores={cutSceneTimer=307}] 719.1531 68.68401 149.2272 207.39 21.2
tp @s[scores={cutSceneTimer=308}] 719.1506 68.68617 149.2322 207.39 21.2
tp @s[scores={cutSceneTimer=309}] 719.148 68.68834 149.2372 207.39 21.2
tp @s[scores={cutSceneTimer=310}] 719.1454 68.69051 149.2422 207.39 21.2
tp @s[scores={cutSceneTimer=311}] 719.1429 68.69267 149.2471 207.39 21.2
tp @s[scores={cutSceneTimer=312}] 719.1403 68.69484 149.2521 207.39 21.2
tp @s[scores={cutSceneTimer=313}] 719.1378 68.69701 149.2571 207.39 21.2
tp @s[scores={cutSceneTimer=314}] 719.1352 68.69917 149.2621 207.39 21.2
tp @s[scores={cutSceneTimer=315}] 719.1326 68.70134 149.267 207.39 21.2
tp @s[scores={cutSceneTimer=316}] 719.1301 68.70351 149.272 207.39 21.2
tp @s[scores={cutSceneTimer=317}] 719.1275 68.70567 149.277 207.39 21.2
tp @s[scores={cutSceneTimer=318}] 719.1249 68.70784 149.282 207.39 21.2
tp @s[scores={cutSceneTimer=319}] 719.1224 68.71001 149.2869 207.39 21.2
tp @s[scores={cutSceneTimer=320}] 719.1198 68.71217 149.2919 207.39 21.2
tp @s[scores={cutSceneTimer=321}] 719.1172 68.71434 149.2969 207.39 21.2
tp @s[scores={cutSceneTimer=322}] 719.1147 68.71651 149.3018 207.39 21.2
tp @s[scores={cutSceneTimer=323}] 719.1121 68.71867 149.3068 207.39 21.2
tp @s[scores={cutSceneTimer=324}] 719.1096 68.72084 149.3118 207.39 21.2
tp @s[scores={cutSceneTimer=325}] 719.107 68.72301 149.3168 207.39 21.2
tp @s[scores={cutSceneTimer=326}] 719.1044 68.72517 149.3217 207.39 21.2
tp @s[scores={cutSceneTimer=327}] 719.1019 68.72734 149.3267 207.39 21.2
tp @s[scores={cutSceneTimer=328}] 719.0993 68.72951 149.3317 207.39 21.2
tp @s[scores={cutSceneTimer=329}] 719.0967 68.73167 149.3367 207.39 21.2
tp @s[scores={cutSceneTimer=330}] 719.0942 68.73384 149.3416 207.39 21.2
tp @s[scores={cutSceneTimer=331}] 719.0916 68.73601 149.3466 207.39 21.2
tp @s[scores={cutSceneTimer=332}] 719.0891 68.73817 149.3516 207.39 21.2
tp @s[scores={cutSceneTimer=333}] 719.0865 68.74034 149.3566 207.39 21.2
tp @s[scores={cutSceneTimer=334}] 719.0839 68.74251 149.3615 207.39 21.2
tp @s[scores={cutSceneTimer=335}] 719.0814 68.74467 149.3665 207.39 21.2
tp @s[scores={cutSceneTimer=336}] 719.0788 68.74684 149.3715 207.39 21.2
tp @s[scores={cutSceneTimer=337}] 719.0762 68.74901 149.3765 207.39 21.2
tp @s[scores={cutSceneTimer=338}] 719.0737 68.75117 149.3814 207.39 21.2
tp @s[scores={cutSceneTimer=339}] 719.0711 68.75334 149.3864 207.39 21.2
tp @s[scores={cutSceneTimer=340}] 719.0685 68.75551 149.3914 207.39 21.2
tp @s[scores={cutSceneTimer=341}] 719.066 68.75768 149.3964 207.39 21.2
tp @s[scores={cutSceneTimer=342}] 719.0634 68.75984 149.4013 207.39 21.2
tp @s[scores={cutSceneTimer=343}] 719.0609 68.76201 149.4063 207.39 21.2
tp @s[scores={cutSceneTimer=344}] 719.0583 68.76418 149.4113 207.39 21.2
tp @s[scores={cutSceneTimer=345}] 719.0557 68.76634 149.4163 207.39 21.2
tp @s[scores={cutSceneTimer=346}] 719.0532 68.76851 149.4212 207.39 21.2
tp @s[scores={cutSceneTimer=347}] 719.0506 68.77068 149.4262 207.39 21.2
tp @s[scores={cutSceneTimer=348}] 719.048 68.77284 149.4312 207.39 21.2
tp @s[scores={cutSceneTimer=349}] 719.0455 68.77501 149.4362 207.39 21.2
tp @s[scores={cutSceneTimer=350}] 719.0429 68.77718 149.4411 207.39 21.2
tp @s[scores={cutSceneTimer=351}] 719.0403 68.77934 149.4461 207.39 21.2
tp @s[scores={cutSceneTimer=352}] 719.0378 68.78151 149.4511 207.39 21.2
tp @s[scores={cutSceneTimer=353}] 719.0352 68.78368 149.4561 207.39 21.2
tp @s[scores={cutSceneTimer=354}] 719.0327 68.78584 149.461 207.39 21.2
tp @s[scores={cutSceneTimer=355}] 719.0301 68.78801 149.466 207.39 21.2
tp @s[scores={cutSceneTimer=356}] 719.0275 68.79018 149.471 207.39 21.2
tp @s[scores={cutSceneTimer=357}] 719.025 68.79234 149.476 207.39 21.2
tp @s[scores={cutSceneTimer=358}] 719.0224 68.79451 149.4809 207.39 21.2
tp @s[scores={cutSceneTimer=359}] 719.0198 68.79668 149.4859 207.39 21.2
tp @s[scores={cutSceneTimer=360}] 719.0173 68.79884 149.4909 207.39 21.2
tp @s[scores={cutSceneTimer=361}] 719.0147 68.80101 149.4958 207.39 21.2
tp @s[scores={cutSceneTimer=362}] 719.0121 68.80318 149.5008 207.39 21.2
tp @s[scores={cutSceneTimer=363}] 719.0096 68.80534 149.5058 207.39 21.2
tp @s[scores={cutSceneTimer=364}] 719.007 68.80751 149.5108 207.39 21.2
tp @s[scores={cutSceneTimer=365}] 719.0045 68.80968 149.5157 207.39 21.2
tp @s[scores={cutSceneTimer=366}] 719.0019 68.81184 149.5207 207.39 21.2
tp @s[scores={cutSceneTimer=367}] 718.9993 68.81401 149.5257 207.39 21.2
tp @s[scores={cutSceneTimer=368}] 718.9968 68.81618 149.5307 207.39 21.2
tp @s[scores={cutSceneTimer=369}] 718.9942 68.81834 149.5356 207.39 21.2
tp @s[scores={cutSceneTimer=370}] 718.9916 68.82051 149.5406 207.39 21.2
tp @s[scores={cutSceneTimer=371}] 718.9891 68.82268 149.5456 207.39 21.2
tp @s[scores={cutSceneTimer=372}] 718.9865 68.82484 149.5506 207.39 21.2
tp @s[scores={cutSceneTimer=373}] 718.9839 68.82701 149.5555 207.39 21.2
tp @s[scores={cutSceneTimer=374}] 718.9814 68.82918 149.5605 207.39 21.2
tp @s[scores={cutSceneTimer=375}] 718.9788 68.83134 149.5655 207.39 21.2
tp @s[scores={cutSceneTimer=376}] 718.9763 68.83351 149.5705 207.39 21.2
tp @s[scores={cutSceneTimer=377}] 718.9737 68.83568 149.5754 207.39 21.2
tp @s[scores={cutSceneTimer=378}] 718.9711 68.83784 149.5804 207.39 21.2
tp @s[scores={cutSceneTimer=379}] 718.9686 68.84001 149.5854 207.39 21.2
tp @s[scores={cutSceneTimer=380}] 718.966 68.84218 149.5904 207.39 21.2
tp @s[scores={cutSceneTimer=381}] 718.9634 68.84435 149.5953 207.39 21.2
tp @s[scores={cutSceneTimer=382}] 718.9609 68.84651 149.6003 207.39 21.2
tp @s[scores={cutSceneTimer=383}] 718.9583 68.84868 149.6053 207.39 21.2
tp @s[scores={cutSceneTimer=384}] 718.9557 68.85085 149.6103 207.39 21.2
tp @s[scores={cutSceneTimer=385}] 718.9532 68.85301 149.6152 207.39 21.2
tp @s[scores={cutSceneTimer=386}] 718.9506 68.85518 149.6202 207.39 21.2
tp @s[scores={cutSceneTimer=387}] 718.9481 68.85735 149.6252 207.39 21.2
tp @s[scores={cutSceneTimer=388}] 718.9455 68.85951 149.6302 207.39 21.2
tp @s[scores={cutSceneTimer=389}] 718.9429 68.86168 149.6351 207.39 21.2
tp @s[scores={cutSceneTimer=390}] 718.9404 68.86385 149.6401 207.39 21.2
tp @s[scores={cutSceneTimer=391}] 718.9378 68.86601 149.6451 207.39 21.2
tp @s[scores={cutSceneTimer=392}] 718.9352 68.86818 149.6501 207.39 21.2
tp @s[scores={cutSceneTimer=393}] 718.9327 68.87035 149.655 207.39 21.2
tp @s[scores={cutSceneTimer=394}] 718.9301 68.87251 149.66 207.39 21.2
tp @s[scores={cutSceneTimer=395}] 718.9276 68.87468 149.665 207.39 21.2
tp @s[scores={cutSceneTimer=396}] 718.925 68.87685 149.67 207.39 21.2
tp @s[scores={cutSceneTimer=397}] 718.9224 68.87901 149.6749 207.39 21.2
tp @s[scores={cutSceneTimer=398}] 718.9199 68.88118 149.6799 207.39 21.2
tp @s[scores={cutSceneTimer=399}] 718.9173 68.88335 149.6849 207.39 21.2
tp @s[scores={cutSceneTimer=400}] 718.9147 68.88551 149.6898 207.39 21.2
tp @s[scores={cutSceneTimer=401}] 718.9122 68.88768 149.6948 207.39 21.2
tp @s[scores={cutSceneTimer=402}] 718.9096 68.88985 149.6998 207.39 21.2
tp @s[scores={cutSceneTimer=403}] 718.907 68.89201 149.7048 207.39 21.2
tp @s[scores={cutSceneTimer=404}] 718.9045 68.89418 149.7097 207.39 21.2
tp @s[scores={cutSceneTimer=405}] 718.9019 68.89635 149.7147 207.39 21.2
tp @s[scores={cutSceneTimer=406}] 718.8994 68.89851 149.7197 207.39 21.2
tp @s[scores={cutSceneTimer=407}] 718.8968 68.90068 149.7247 207.39 21.2
tp @s[scores={cutSceneTimer=408}] 718.8942 68.90285 149.7296 207.39 21.2
tp @s[scores={cutSceneTimer=409}] 718.8917 68.90501 149.7346 207.39 21.2
tp @s[scores={cutSceneTimer=410}] 718.8891 68.90718 149.7396 207.39 21.2
tp @s[scores={cutSceneTimer=411}] 718.8865 68.90935 149.7446 207.39 21.2
tp @s[scores={cutSceneTimer=412}] 718.884 68.91151 149.7495 207.39 21.2
tp @s[scores={cutSceneTimer=413}] 718.8814 68.91368 149.7545 207.39 21.2
tp @s[scores={cutSceneTimer=414}] 718.8788 68.91585 149.7595 207.39 21.2
tp @s[scores={cutSceneTimer=415}] 718.8763 68.91801 149.7645 207.39 21.2
tp @s[scores={cutSceneTimer=416}] 718.8737 68.92018 149.7694 207.39 21.2
tp @s[scores={cutSceneTimer=417}] 718.8712 68.92235 149.7744 207.39 21.2
tp @s[scores={cutSceneTimer=418}] 718.8686 68.92451 149.7794 207.39 21.2
tp @s[scores={cutSceneTimer=419}] 718.866 68.92668 149.7844 207.39 21.2
tp @s[scores={cutSceneTimer=420}] 718.8635 68.92885 149.7893 207.39 21.2
tp @s[scores={cutSceneTimer=421}] 718.8609 68.93102 149.7943 207.39 21.2
tp @s[scores={cutSceneTimer=422}] 718.8583 68.93318 149.7993 207.39 21.2
tp @s[scores={cutSceneTimer=423}] 718.8558 68.93535 149.8043 207.39 21.2
tp @s[scores={cutSceneTimer=424}] 718.8532 68.93752 149.8092 207.39 21.2
tp @s[scores={cutSceneTimer=425}] 718.8506 68.93968 149.8142 207.39 21.2
tp @s[scores={cutSceneTimer=426}] 718.8481 68.94185 149.8192 207.39 21.2
tp @s[scores={cutSceneTimer=427}] 718.8455 68.94402 149.8242 207.39 21.2
tp @s[scores={cutSceneTimer=428}] 718.843 68.94618 149.8291 207.39 21.2
tp @s[scores={cutSceneTimer=429}] 718.8404 68.94835 149.8341 207.39 21.2
tp @s[scores={cutSceneTimer=430}] 718.8378 68.95052 149.8391 207.39 21.2
tp @s[scores={cutSceneTimer=431}] 718.8353 68.95268 149.8441 207.39 21.2
tp @s[scores={cutSceneTimer=432}] 718.8327 68.95485 149.849 207.39 21.2
tp @s[scores={cutSceneTimer=433}] 718.8301 68.95702 149.854 207.39 21.2
tp @s[scores={cutSceneTimer=434}] 718.8276 68.95918 149.859 207.39 21.2
tp @s[scores={cutSceneTimer=435}] 718.825 68.96135 149.864 207.39 21.2
tp @s[scores={cutSceneTimer=436}] 718.8224 68.96352 149.8689 207.39 21.2
tp @s[scores={cutSceneTimer=437}] 718.8199 68.96568 149.8739 207.39 21.2
tp @s[scores={cutSceneTimer=438}] 718.8173 68.96785 149.8789 207.39 21.2
tp @s[scores={cutSceneTimer=439}] 718.8148 68.97002 149.8839 207.39 21.2
tp @s[scores={cutSceneTimer=440}] 718.8122 68.97218 149.8888 207.39 21.2
tp @s[scores={cutSceneTimer=441}] 718.8096 68.97435 149.8938 207.39 21.2
tp @s[scores={cutSceneTimer=442}] 718.8071 68.97652 149.8988 207.39 21.2
tp @s[scores={cutSceneTimer=443}] 718.8045 68.97868 149.9037 207.39 21.2
tp @s[scores={cutSceneTimer=444}] 718.8019 68.98085 149.9087 207.39 21.2
tp @s[scores={cutSceneTimer=445}] 718.7994 68.98302 149.9137 207.39 21.2
tp @s[scores={cutSceneTimer=446}] 718.7968 68.98518 149.9187 207.39 21.2
tp @s[scores={cutSceneTimer=447}] 718.7943 68.98735 149.9236 207.39 21.2
tp @s[scores={cutSceneTimer=448}] 718.7917 68.98952 149.9286 207.39 21.2
tp @s[scores={cutSceneTimer=449}] 718.7891 68.99168 149.9336 207.39 21.2
tp @s[scores={cutSceneTimer=450}] 718.7866 68.99385 149.9386 207.39 21.2
tp @s[scores={cutSceneTimer=451}] 718.784 68.99602 149.9435 207.39 21.2
tp @s[scores={cutSceneTimer=452}] 718.7814 68.99818 149.9485 207.39 21.2
tp @s[scores={cutSceneTimer=453}] 718.7789 69.00035 149.9535 207.39 21.2
tp @s[scores={cutSceneTimer=454}] 718.7763 69.00252 149.9585 207.39 21.2
tp @s[scores={cutSceneTimer=455}] 718.7737 69.00468 149.9634 207.39 21.2
tp @s[scores={cutSceneTimer=456}] 718.7712 69.00685 149.9684 207.39 21.2
tp @s[scores={cutSceneTimer=457}] 718.7686 69.00902 149.9734 207.39 21.2
tp @s[scores={cutSceneTimer=458}] 718.7661 69.01118 149.9784 207.39 21.2
tp @s[scores={cutSceneTimer=459}] 718.7635 69.01335 149.9833 207.39 21.2
tp @s[scores={cutSceneTimer=460}] 718.7609 69.01552 149.9883 207.39 21.2
tp @s[scores={cutSceneTimer=461}] 718.7584 69.01768 149.9933 207.39 21.2
tp @s[scores={cutSceneTimer=462}] 718.7558 69.01985 149.9983 207.39 21.2
tp @s[scores={cutSceneTimer=463}] 718.7532 69.02202 150.0032 207.39 21.2
tp @s[scores={cutSceneTimer=464}] 718.7507 69.02419 150.0082 207.39 21.2
tp @s[scores={cutSceneTimer=465}] 718.7481 69.02635 150.0132 207.39 21.2
tp @s[scores={cutSceneTimer=466}] 718.7455 69.02852 150.0182 207.39 21.2
tp @s[scores={cutSceneTimer=467}] 718.743 69.03069 150.0231 207.39 21.2
tp @s[scores={cutSceneTimer=468}] 718.7404 69.03285 150.0281 207.39 21.2
tp @s[scores={cutSceneTimer=469}] 718.7379 69.03502 150.0331 207.39 21.2
tp @s[scores={cutSceneTimer=470}] 718.7353 69.03719 150.0381 207.39 21.2
tp @s[scores={cutSceneTimer=471}] 718.7327 69.03935 150.043 207.39 21.2
tp @s[scores={cutSceneTimer=472}] 718.7302 69.04152 150.048 207.39 21.2
tp @s[scores={cutSceneTimer=473}] 718.7276 69.04369 150.053 207.39 21.2
tp @s[scores={cutSceneTimer=474}] 718.725 69.04585 150.058 207.39 21.2
tp @s[scores={cutSceneTimer=475}] 718.7225 69.04802 150.0629 207.39 21.2
tp @s[scores={cutSceneTimer=476}] 718.7199 69.05019 150.0679 207.39 21.2
tp @s[scores={cutSceneTimer=477}] 718.7173 69.05235 150.0729 207.39 21.2
tp @s[scores={cutSceneTimer=478}] 718.7148 69.05452 150.0779 207.39 21.2
tp @s[scores={cutSceneTimer=479}] 718.7122 69.05669 150.0828 207.39 21.2
tp @s[scores={cutSceneTimer=480}] 718.7097 69.05885 150.0878 207.39 21.2
tp @s[scores={cutSceneTimer=481}] 718.7071 69.06102 150.0928 207.39 21.2
tp @s[scores={cutSceneTimer=482}] 718.7045 69.06319 150.0977 207.39 21.2
tp @s[scores={cutSceneTimer=483}] 718.702 69.06535 150.1027 207.39 21.2
tp @s[scores={cutSceneTimer=484}] 718.6994 69.06752 150.1077 207.39 21.2
tp @s[scores={cutSceneTimer=485}] 718.6968 69.06969 150.1127 207.39 21.2
tp @s[scores={cutSceneTimer=486}] 718.6943 69.07185 150.1176 207.39 21.2
tp @s[scores={cutSceneTimer=487}] 718.6917 69.07402 150.1226 207.39 21.2
tp @s[scores={cutSceneTimer=488}] 718.6891 69.07619 150.1276 207.39 21.2
tp @s[scores={cutSceneTimer=489}] 718.6866 69.07835 150.1326 207.39 21.2
tp @s[scores={cutSceneTimer=490}] 718.684 69.08052 150.1375 207.39 21.2
tp @s[scores={cutSceneTimer=491}] 718.6815 69.08269 150.1425 207.39 21.2
tp @s[scores={cutSceneTimer=492}] 718.6789 69.08485 150.1475 207.39 21.2
tp @s[scores={cutSceneTimer=493}] 718.6763 69.08702 150.1525 207.39 21.2
tp @s[scores={cutSceneTimer=494}] 718.6738 69.08919 150.1574 207.39 21.2
tp @s[scores={cutSceneTimer=495}] 718.6712 69.09135 150.1624 207.39 21.2
tp @s[scores={cutSceneTimer=496}] 718.6686 69.09352 150.1674 207.39 21.2
tp @s[scores={cutSceneTimer=497}] 718.6661 69.09569 150.1724 207.39 21.2
tp @s[scores={cutSceneTimer=498}] 718.6635 69.09785 150.1773 207.39 21.2
tp @s[scores={cutSceneTimer=499}] 718.6609 69.10002 150.1823 207.39 21.2
tp @s[scores={cutSceneTimer=500}] 718.6584 69.10219 150.1873 207.39 21.2
execute as @s[scores={cutSceneTimer=480}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=500}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=500}] 720.9198 67.90992 140.569 -548.85 4.86
tp @s[scores={cutSceneTimer=501}] 720.9196 67.90984 140.568 -548.85 4.86
tp @s[scores={cutSceneTimer=502}] 720.9194 67.90975 140.567 -548.85 4.86
tp @s[scores={cutSceneTimer=503}] 720.9193 67.90967 140.566 -548.85 4.86
tp @s[scores={cutSceneTimer=504}] 720.9191 67.90958 140.565 -548.85 4.86
tp @s[scores={cutSceneTimer=505}] 720.9189 67.9095 140.5641 -548.85 4.86
tp @s[scores={cutSceneTimer=506}] 720.9187 67.90942 140.5631 -548.85 4.86
tp @s[scores={cutSceneTimer=507}] 720.9185 67.90933 140.5621 -548.85 4.86
tp @s[scores={cutSceneTimer=508}] 720.9183 67.90925 140.5611 -548.85 4.86
tp @s[scores={cutSceneTimer=509}] 720.9182 67.90916 140.5601 -548.85 4.86
tp @s[scores={cutSceneTimer=510}] 720.918 67.90908 140.5591 -548.85 4.86
tp @s[scores={cutSceneTimer=511}] 720.9178 67.909 140.5581 -548.85 4.86
tp @s[scores={cutSceneTimer=512}] 720.9176 67.90891 140.5571 -548.85 4.86
tp @s[scores={cutSceneTimer=513}] 720.9174 67.90883 140.5561 -548.85 4.86
tp @s[scores={cutSceneTimer=514}] 720.9172 67.90874 140.5551 -548.85 4.86
tp @s[scores={cutSceneTimer=515}] 720.9171 67.90866 140.5541 -548.85 4.86
tp @s[scores={cutSceneTimer=516}] 720.9169 67.90858 140.5531 -548.85 4.86
tp @s[scores={cutSceneTimer=517}] 720.9167 67.90849 140.5522 -548.85 4.86
tp @s[scores={cutSceneTimer=518}] 720.9165 67.90841 140.5512 -548.85 4.86
tp @s[scores={cutSceneTimer=519}] 720.9163 67.90833 140.5502 -548.85 4.86
tp @s[scores={cutSceneTimer=520}] 720.9161 67.90824 140.5492 -548.85 4.86
tp @s[scores={cutSceneTimer=521}] 720.916 67.90816 140.5482 -548.85 4.86
tp @s[scores={cutSceneTimer=522}] 720.9158 67.90807 140.5472 -548.85 4.86
tp @s[scores={cutSceneTimer=523}] 720.9156 67.90799 140.5462 -548.85 4.86
tp @s[scores={cutSceneTimer=524}] 720.9154 67.90791 140.5452 -548.85 4.86
tp @s[scores={cutSceneTimer=525}] 720.9152 67.90782 140.5442 -548.85 4.86
tp @s[scores={cutSceneTimer=526}] 720.915 67.90774 140.5432 -548.85 4.86
tp @s[scores={cutSceneTimer=527}] 720.9149 67.90765 140.5422 -548.85 4.86
tp @s[scores={cutSceneTimer=528}] 720.9147 67.90757 140.5412 -548.85 4.86
tp @s[scores={cutSceneTimer=529}] 720.9145 67.90749 140.5403 -548.85 4.86
tp @s[scores={cutSceneTimer=530}] 720.9143 67.9074 140.5393 -548.85 4.86
tp @s[scores={cutSceneTimer=531}] 720.9141 67.90732 140.5383 -548.85 4.86
tp @s[scores={cutSceneTimer=532}] 720.9139 67.90723 140.5373 -548.85 4.86
tp @s[scores={cutSceneTimer=533}] 720.9138 67.90715 140.5363 -548.85 4.86
tp @s[scores={cutSceneTimer=534}] 720.9136 67.90707 140.5353 -548.85 4.86
tp @s[scores={cutSceneTimer=535}] 720.9134 67.90698 140.5343 -548.85 4.86
tp @s[scores={cutSceneTimer=536}] 720.9132 67.9069 140.5333 -548.85 4.86
tp @s[scores={cutSceneTimer=537}] 720.913 67.90681 140.5323 -548.85 4.86
tp @s[scores={cutSceneTimer=538}] 720.9128 67.90673 140.5313 -548.85 4.86
tp @s[scores={cutSceneTimer=539}] 720.9127 67.90665 140.5303 -548.85 4.86
tp @s[scores={cutSceneTimer=540}] 720.9125 67.90656 140.5293 -548.85 4.86
tp @s[scores={cutSceneTimer=541}] 720.9123 67.90648 140.5284 -548.85 4.86
tp @s[scores={cutSceneTimer=542}] 720.9121 67.90639 140.5274 -548.85 4.86
tp @s[scores={cutSceneTimer=543}] 720.9119 67.90631 140.5264 -548.85 4.86
tp @s[scores={cutSceneTimer=544}] 720.9117 67.90623 140.5254 -548.85 4.86
tp @s[scores={cutSceneTimer=545}] 720.9116 67.90614 140.5244 -548.85 4.86
tp @s[scores={cutSceneTimer=546}] 720.9114 67.90606 140.5234 -548.85 4.86
tp @s[scores={cutSceneTimer=547}] 720.9112 67.90598 140.5224 -548.85 4.86
tp @s[scores={cutSceneTimer=548}] 720.911 67.90589 140.5214 -548.85 4.86
tp @s[scores={cutSceneTimer=549}] 720.9108 67.90581 140.5204 -548.85 4.86
tp @s[scores={cutSceneTimer=550}] 720.9106 67.90572 140.5194 -548.85 4.86
tp @s[scores={cutSceneTimer=551}] 720.9105 67.90564 140.5184 -548.85 4.86
tp @s[scores={cutSceneTimer=552}] 720.9103 67.90556 140.5174 -548.85 4.86
tp @s[scores={cutSceneTimer=553}] 720.9101 67.90547 140.5164 -548.85 4.86
tp @s[scores={cutSceneTimer=554}] 720.9099 67.90539 140.5155 -548.85 4.86
tp @s[scores={cutSceneTimer=555}] 720.9097 67.9053 140.5145 -548.85 4.86
tp @s[scores={cutSceneTimer=556}] 720.9095 67.90522 140.5135 -548.85 4.86
tp @s[scores={cutSceneTimer=557}] 720.9094 67.90514 140.5125 -548.85 4.86
tp @s[scores={cutSceneTimer=558}] 720.9092 67.90505 140.5115 -548.85 4.86
tp @s[scores={cutSceneTimer=559}] 720.909 67.90497 140.5105 -548.85 4.86
tp @s[scores={cutSceneTimer=560}] 720.9088 67.90488 140.5095 -548.85 4.86
tp @s[scores={cutSceneTimer=561}] 720.9086 67.9048 140.5085 -548.85 4.86
tp @s[scores={cutSceneTimer=562}] 720.9084 67.90472 140.5075 -548.85 4.86
tp @s[scores={cutSceneTimer=563}] 720.9083 67.90463 140.5065 -548.85 4.86
tp @s[scores={cutSceneTimer=564}] 720.9081 67.90455 140.5055 -548.85 4.86
tp @s[scores={cutSceneTimer=565}] 720.9079 67.90446 140.5045 -548.85 4.86
tp @s[scores={cutSceneTimer=566}] 720.9077 67.90438 140.5036 -548.85 4.86
tp @s[scores={cutSceneTimer=567}] 720.9075 67.9043 140.5026 -548.85 4.86
tp @s[scores={cutSceneTimer=568}] 720.9073 67.90421 140.5016 -548.85 4.86
tp @s[scores={cutSceneTimer=569}] 720.9072 67.90413 140.5006 -548.85 4.86
tp @s[scores={cutSceneTimer=570}] 720.907 67.90405 140.4996 -548.85 4.86
tp @s[scores={cutSceneTimer=571}] 720.9068 67.90396 140.4986 -548.85 4.86
tp @s[scores={cutSceneTimer=572}] 720.9066 67.90388 140.4976 -548.85 4.86
tp @s[scores={cutSceneTimer=573}] 720.9064 67.90379 140.4966 -548.85 4.86
tp @s[scores={cutSceneTimer=574}] 720.9063 67.90371 140.4956 -548.85 4.86
tp @s[scores={cutSceneTimer=575}] 720.9061 67.90363 140.4946 -548.85 4.86
tp @s[scores={cutSceneTimer=576}] 720.9059 67.90354 140.4936 -548.85 4.86
tp @s[scores={cutSceneTimer=577}] 720.9057 67.90346 140.4926 -548.85 4.86
tp @s[scores={cutSceneTimer=578}] 720.9055 67.90337 140.4917 -548.85 4.86
tp @s[scores={cutSceneTimer=579}] 720.9053 67.90329 140.4907 -548.85 4.86
tp @s[scores={cutSceneTimer=580}] 720.9052 67.90321 140.4897 -548.85 4.86
tp @s[scores={cutSceneTimer=581}] 720.905 67.90312 140.4887 -548.85 4.86
tp @s[scores={cutSceneTimer=582}] 720.9048 67.90304 140.4877 -548.85 4.86
tp @s[scores={cutSceneTimer=583}] 720.9046 67.90295 140.4867 -548.85 4.86
tp @s[scores={cutSceneTimer=584}] 720.9044 67.90287 140.4857 -548.85 4.86
tp @s[scores={cutSceneTimer=585}] 720.9042 67.90279 140.4847 -548.85 4.86
tp @s[scores={cutSceneTimer=586}] 720.9041 67.9027 140.4837 -548.85 4.86
tp @s[scores={cutSceneTimer=587}] 720.9039 67.90262 140.4827 -548.85 4.86
tp @s[scores={cutSceneTimer=588}] 720.9037 67.90253 140.4817 -548.85 4.86
tp @s[scores={cutSceneTimer=589}] 720.9035 67.90245 140.4807 -548.85 4.86
tp @s[scores={cutSceneTimer=590}] 720.9033 67.90237 140.4798 -548.85 4.86
tp @s[scores={cutSceneTimer=591}] 720.9031 67.90228 140.4788 -548.85 4.86
tp @s[scores={cutSceneTimer=592}] 720.903 67.9022 140.4778 -548.85 4.86
tp @s[scores={cutSceneTimer=593}] 720.9028 67.90211 140.4768 -548.85 4.86
tp @s[scores={cutSceneTimer=594}] 720.9026 67.90203 140.4758 -548.85 4.86
tp @s[scores={cutSceneTimer=595}] 720.9024 67.90195 140.4748 -548.85 4.86
tp @s[scores={cutSceneTimer=596}] 720.9022 67.90186 140.4738 -548.85 4.86
tp @s[scores={cutSceneTimer=597}] 720.902 67.90178 140.4728 -548.85 4.86
tp @s[scores={cutSceneTimer=598}] 720.9019 67.9017 140.4718 -548.85 4.86
tp @s[scores={cutSceneTimer=599}] 720.9017 67.90161 140.4708 -548.85 4.86
tp @s[scores={cutSceneTimer=600}] 720.9015 67.90153 140.4698 -548.85 4.86
tp @s[scores={cutSceneTimer=601}] 720.9013 67.90144 140.4688 -548.85 4.86
tp @s[scores={cutSceneTimer=602}] 720.9011 67.90136 140.4678 -548.85 4.86
tp @s[scores={cutSceneTimer=603}] 720.9009 67.90128 140.4669 -548.85 4.86
tp @s[scores={cutSceneTimer=604}] 720.9008 67.90119 140.4659 -548.85 4.86
tp @s[scores={cutSceneTimer=605}] 720.9006 67.90111 140.4649 -548.85 4.86
tp @s[scores={cutSceneTimer=606}] 720.9004 67.90102 140.4639 -548.85 4.86
tp @s[scores={cutSceneTimer=607}] 720.9002 67.90094 140.4629 -548.85 4.86
tp @s[scores={cutSceneTimer=608}] 720.9 67.90086 140.4619 -548.85 4.86
tp @s[scores={cutSceneTimer=609}] 720.8998 67.90077 140.4609 -548.85 4.86
tp @s[scores={cutSceneTimer=610}] 720.8997 67.90069 140.4599 -548.85 4.86
tp @s[scores={cutSceneTimer=611}] 720.8995 67.9006 140.4589 -548.85 4.86
tp @s[scores={cutSceneTimer=612}] 720.8993 67.90052 140.4579 -548.85 4.86
tp @s[scores={cutSceneTimer=613}] 720.8991 67.90044 140.4569 -548.85 4.86
tp @s[scores={cutSceneTimer=614}] 720.8989 67.90035 140.4559 -548.85 4.86
tp @s[scores={cutSceneTimer=615}] 720.8987 67.90027 140.455 -548.85 4.86
tp @s[scores={cutSceneTimer=616}] 720.8986 67.90018 140.454 -548.85 4.86
tp @s[scores={cutSceneTimer=617}] 720.8984 67.9001 140.453 -548.85 4.86
tp @s[scores={cutSceneTimer=618}] 720.8982 67.90002 140.452 -548.85 4.86
tp @s[scores={cutSceneTimer=619}] 720.898 67.89993 140.451 -548.85 4.86
tp @s[scores={cutSceneTimer=620}] 720.8978 67.89985 140.45 -548.85 4.86
tp @s[scores={cutSceneTimer=621}] 720.8976 67.89977 140.449 -548.85 4.86
tp @s[scores={cutSceneTimer=622}] 720.8975 67.89968 140.448 -548.85 4.86
tp @s[scores={cutSceneTimer=623}] 720.8973 67.8996 140.447 -548.85 4.86
tp @s[scores={cutSceneTimer=624}] 720.8971 67.89951 140.446 -548.85 4.86
tp @s[scores={cutSceneTimer=625}] 720.8969 67.89943 140.445 -548.85 4.86
tp @s[scores={cutSceneTimer=626}] 720.8967 67.89935 140.444 -548.85 4.86
tp @s[scores={cutSceneTimer=627}] 720.8965 67.89926 140.4431 -548.85 4.86
tp @s[scores={cutSceneTimer=628}] 720.8964 67.89918 140.4421 -548.85 4.86
tp @s[scores={cutSceneTimer=629}] 720.8962 67.89909 140.4411 -548.85 4.86
tp @s[scores={cutSceneTimer=630}] 720.896 67.89901 140.4401 -548.85 4.86
tp @s[scores={cutSceneTimer=631}] 720.8958 67.89893 140.4391 -548.85 4.86
tp @s[scores={cutSceneTimer=632}] 720.8956 67.89884 140.4381 -548.85 4.86
tp @s[scores={cutSceneTimer=633}] 720.8954 67.89876 140.4371 -548.85 4.86
tp @s[scores={cutSceneTimer=634}] 720.8953 67.89867 140.4361 -548.85 4.86
tp @s[scores={cutSceneTimer=635}] 720.8951 67.89859 140.4351 -548.85 4.86
tp @s[scores={cutSceneTimer=636}] 720.8949 67.89851 140.4341 -548.85 4.86
tp @s[scores={cutSceneTimer=637}] 720.8947 67.89842 140.4331 -548.85 4.86
tp @s[scores={cutSceneTimer=638}] 720.8945 67.89834 140.4321 -548.85 4.86
tp @s[scores={cutSceneTimer=639}] 720.8943 67.89825 140.4312 -548.85 4.86
tp @s[scores={cutSceneTimer=640}] 720.8942 67.89817 140.4302 -548.85 4.86
tp @s[scores={cutSceneTimer=641}] 720.894 67.89809 140.4292 -548.85 4.86
tp @s[scores={cutSceneTimer=642}] 720.8938 67.898 140.4282 -548.85 4.86
tp @s[scores={cutSceneTimer=643}] 720.8936 67.89792 140.4272 -548.85 4.86
tp @s[scores={cutSceneTimer=644}] 720.8934 67.89783 140.4262 -548.85 4.86
tp @s[scores={cutSceneTimer=645}] 720.8932 67.89775 140.4252 -548.85 4.86
tp @s[scores={cutSceneTimer=646}] 720.8931 67.89767 140.4242 -548.85 4.86
tp @s[scores={cutSceneTimer=647}] 720.8929 67.89758 140.4232 -548.85 4.86
tp @s[scores={cutSceneTimer=648}] 720.8927 67.8975 140.4222 -548.85 4.86
tp @s[scores={cutSceneTimer=649}] 720.8925 67.89742 140.4212 -548.85 4.86
tp @s[scores={cutSceneTimer=650}] 720.8923 67.89733 140.4202 -548.85 4.86
tp @s[scores={cutSceneTimer=651}] 720.8922 67.89725 140.4193 -548.85 4.86
tp @s[scores={cutSceneTimer=652}] 720.892 67.89716 140.4183 -548.85 4.86
tp @s[scores={cutSceneTimer=653}] 720.8918 67.89708 140.4173 -548.85 4.86
tp @s[scores={cutSceneTimer=654}] 720.8916 67.897 140.4163 -548.85 4.86
tp @s[scores={cutSceneTimer=655}] 720.8914 67.89691 140.4153 -548.85 4.86
tp @s[scores={cutSceneTimer=656}] 720.8912 67.89683 140.4143 -548.85 4.86
tp @s[scores={cutSceneTimer=657}] 720.8911 67.89674 140.4133 -548.85 4.86
tp @s[scores={cutSceneTimer=658}] 720.8909 67.89666 140.4123 -548.85 4.86
tp @s[scores={cutSceneTimer=659}] 720.8907 67.89658 140.4113 -548.85 4.86
tp @s[scores={cutSceneTimer=660}] 720.8905 67.89649 140.4103 -548.85 4.86
tp @s[scores={cutSceneTimer=661}] 720.8903 67.89641 140.4093 -548.85 4.86
tp @s[scores={cutSceneTimer=662}] 720.8901 67.89632 140.4083 -548.85 4.86
tp @s[scores={cutSceneTimer=663}] 720.89 67.89624 140.4073 -548.85 4.86
tp @s[scores={cutSceneTimer=664}] 720.8898 67.89616 140.4064 -548.85 4.86
tp @s[scores={cutSceneTimer=665}] 720.8896 67.89607 140.4054 -548.85 4.86
tp @s[scores={cutSceneTimer=666}] 720.8894 67.89599 140.4044 -548.85 4.86
tp @s[scores={cutSceneTimer=667}] 720.8892 67.8959 140.4034 -548.85 4.86
tp @s[scores={cutSceneTimer=668}] 720.889 67.89582 140.4024 -548.85 4.86
tp @s[scores={cutSceneTimer=669}] 720.8889 67.89574 140.4014 -548.85 4.86
tp @s[scores={cutSceneTimer=670}] 720.8887 67.89565 140.4004 -548.85 4.86
tp @s[scores={cutSceneTimer=671}] 720.8885 67.89557 140.3994 -548.85 4.86
tp @s[scores={cutSceneTimer=672}] 720.8883 67.89548 140.3984 -548.85 4.86
tp @s[scores={cutSceneTimer=673}] 720.8881 67.8954 140.3974 -548.85 4.86
tp @s[scores={cutSceneTimer=674}] 720.8879 67.89532 140.3964 -548.85 4.86
tp @s[scores={cutSceneTimer=675}] 720.8878 67.89523 140.3954 -548.85 4.86
tp @s[scores={cutSceneTimer=676}] 720.8876 67.89515 140.3945 -548.85 4.86
tp @s[scores={cutSceneTimer=677}] 720.8874 67.89507 140.3935 -548.85 4.86
tp @s[scores={cutSceneTimer=678}] 720.8872 67.89498 140.3925 -548.85 4.86
tp @s[scores={cutSceneTimer=679}] 720.887 67.8949 140.3915 -548.85 4.86
tp @s[scores={cutSceneTimer=680}] 720.8868 67.89481 140.3905 -548.85 4.86
tp @s[scores={cutSceneTimer=681}] 720.8867 67.89473 140.3895 -548.85 4.86
tp @s[scores={cutSceneTimer=682}] 720.8865 67.89465 140.3885 -548.85 4.86
tp @s[scores={cutSceneTimer=683}] 720.8863 67.89456 140.3875 -548.85 4.86
tp @s[scores={cutSceneTimer=684}] 720.8861 67.89448 140.3865 -548.85 4.86
tp @s[scores={cutSceneTimer=685}] 720.8859 67.89439 140.3855 -548.85 4.86
tp @s[scores={cutSceneTimer=686}] 720.8857 67.89431 140.3845 -548.85 4.86
tp @s[scores={cutSceneTimer=687}] 720.8856 67.89423 140.3835 -548.85 4.86
tp @s[scores={cutSceneTimer=688}] 720.8854 67.89414 140.3826 -548.85 4.86
tp @s[scores={cutSceneTimer=689}] 720.8852 67.89406 140.3816 -548.85 4.86
tp @s[scores={cutSceneTimer=690}] 720.885 67.89397 140.3806 -548.85 4.86
tp @s[scores={cutSceneTimer=691}] 720.8848 67.89389 140.3796 -548.85 4.86
tp @s[scores={cutSceneTimer=692}] 720.8846 67.89381 140.3786 -548.85 4.86
tp @s[scores={cutSceneTimer=693}] 720.8845 67.89372 140.3776 -548.85 4.86
tp @s[scores={cutSceneTimer=694}] 720.8843 67.89364 140.3766 -548.85 4.86
tp @s[scores={cutSceneTimer=695}] 720.8841 67.89355 140.3756 -548.85 4.86
tp @s[scores={cutSceneTimer=696}] 720.8839 67.89347 140.3746 -548.85 4.86
tp @s[scores={cutSceneTimer=697}] 720.8837 67.89339 140.3736 -548.85 4.86
tp @s[scores={cutSceneTimer=698}] 720.8835 67.8933 140.3726 -548.85 4.86
tp @s[scores={cutSceneTimer=699}] 720.8834 67.89322 140.3716 -548.85 4.86
tp @s[scores={cutSceneTimer=700}] 720.8832 67.89314 140.3707 -548.85 4.86
execute as @s[scores={cutSceneTimer=680}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] at @s run tp @e[tag=veraVertoGoblet] ~ ~-500 ~
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] at @s run tp @e[tag=mcGonagallClassroomCat] ~ ~-500 ~
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] at @s run tp @e[tag=mcGonagallClassroomCutscene] ~ ~-500 ~
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] run kill @e[tag=veraVertoGoblet]
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] run kill @e[tag=mcGonagallClassroomCat]
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] run kill @e[tag=mcGonagallClassroomCutscene]
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] run effect clear @e[tag=veraVertoParrot,limit=1] minecraft:invisibility
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] run tp @e[tag=mcGonagallClassroom] 724 66 140
execute as @s[scores={cutSceneTimer=699},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=699},tag=gameLeader] run gamerule doDaylightCycle false

execute as @s[scores={cutSceneTimer=720}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=700}] 8489.16 63.16 -12.1 -296.075 -16.76
tp @s[scores={cutSceneTimer=701}] 8489.16 63.17 -12.1 -296.08 -16.61
tp @s[scores={cutSceneTimer=702}] 8489.16 63.18 -12.1 -296.085 -16.46
tp @s[scores={cutSceneTimer=703}] 8489.16 63.18999 -12.1 -296.09 -16.31
tp @s[scores={cutSceneTimer=704}] 8489.16 63.19999 -12.1 -296.095 -16.16
tp @s[scores={cutSceneTimer=705}] 8489.16 63.20999 -12.1 -296.1 -16.01
tp @s[scores={cutSceneTimer=706}] 8489.16 63.21999 -12.1 -296.105 -15.86
tp @s[scores={cutSceneTimer=707}] 8489.16 63.22999 -12.1 -296.11 -15.71
tp @s[scores={cutSceneTimer=708}] 8489.16 63.23999 -12.1 -296.1151 -15.56
tp @s[scores={cutSceneTimer=709}] 8489.16 63.24998 -12.1 -296.1201 -15.41
tp @s[scores={cutSceneTimer=710}] 8489.16 63.25998 -12.1 -296.1251 -15.26
tp @s[scores={cutSceneTimer=711}] 8489.16 63.26998 -12.1 -296.1301 -15.11
tp @s[scores={cutSceneTimer=712}] 8489.16 63.27998 -12.1 -296.1351 -14.96
tp @s[scores={cutSceneTimer=713}] 8489.16 63.28998 -12.1 -296.1401 -14.81001
tp @s[scores={cutSceneTimer=714}] 8489.16 63.29998 -12.1 -296.1451 -14.66001
tp @s[scores={cutSceneTimer=715}] 8489.16 63.30997 -12.1 -296.1501 -14.51001
tp @s[scores={cutSceneTimer=716}] 8489.16 63.31997 -12.1 -296.1551 -14.36001
tp @s[scores={cutSceneTimer=717}] 8489.16 63.32997 -12.1 -296.1601 -14.21001
tp @s[scores={cutSceneTimer=718}] 8489.16 63.33997 -12.1 -296.1651 -14.06001
tp @s[scores={cutSceneTimer=719}] 8489.16 63.34997 -12.1 -296.1701 -13.91001
tp @s[scores={cutSceneTimer=720}] 8489.16 63.35997 -12.1 -296.1751 -13.76001
tp @s[scores={cutSceneTimer=721}] 8489.16 63.36996 -12.1 -296.1801 -13.61001
tp @s[scores={cutSceneTimer=722}] 8489.16 63.37996 -12.1 -296.1851 -13.46001
tp @s[scores={cutSceneTimer=723}] 8489.16 63.38996 -12.1 -296.1901 -13.31001
tp @s[scores={cutSceneTimer=724}] 8489.16 63.39996 -12.1 -296.1951 -13.16001
tp @s[scores={cutSceneTimer=725}] 8489.16 63.40996 -12.1 -296.2001 -13.01001
tp @s[scores={cutSceneTimer=726}] 8489.16 63.41996 -12.1 -296.2051 -12.86001
tp @s[scores={cutSceneTimer=727}] 8489.16 63.42995 -12.1 -296.2101 -12.71001
tp @s[scores={cutSceneTimer=728}] 8489.16 63.43995 -12.1 -296.2151 -12.56001
tp @s[scores={cutSceneTimer=729}] 8489.16 63.44995 -12.1 -296.2202 -12.41001
tp @s[scores={cutSceneTimer=730}] 8489.16 63.45995 -12.1 -296.2252 -12.26001
tp @s[scores={cutSceneTimer=731}] 8489.16 63.46995 -12.1 -296.2302 -12.11001
tp @s[scores={cutSceneTimer=732}] 8489.16 63.47995 -12.1 -296.2352 -11.96001
tp @s[scores={cutSceneTimer=733}] 8489.16 63.48994 -12.1 -296.2402 -11.81001
tp @s[scores={cutSceneTimer=734}] 8489.16 63.49994 -12.1 -296.2452 -11.66001
tp @s[scores={cutSceneTimer=735}] 8489.16 63.50994 -12.1 -296.2502 -11.51001
tp @s[scores={cutSceneTimer=736}] 8489.16 63.51994 -12.1 -296.2552 -11.36001
tp @s[scores={cutSceneTimer=737}] 8489.16 63.52994 -12.1 -296.2602 -11.21001
tp @s[scores={cutSceneTimer=738}] 8489.16 63.53994 -12.1 -296.2652 -11.06001
tp @s[scores={cutSceneTimer=739}] 8489.16 63.54993 -12.1 -296.2702 -10.91002
tp @s[scores={cutSceneTimer=740}] 8489.16 63.55993 -12.1 -296.2752 -10.76002
tp @s[scores={cutSceneTimer=741}] 8489.16 63.56993 -12.1 -296.2802 -10.61002
tp @s[scores={cutSceneTimer=742}] 8489.16 63.57993 -12.1 -296.2852 -10.46002
tp @s[scores={cutSceneTimer=743}] 8489.16 63.58993 -12.1 -296.2902 -10.31002
tp @s[scores={cutSceneTimer=744}] 8489.16 63.59993 -12.1 -296.2952 -10.16002
tp @s[scores={cutSceneTimer=745}] 8489.16 63.60992 -12.1 -296.3002 -10.01002
tp @s[scores={cutSceneTimer=746}] 8489.16 63.61992 -12.1 -296.3052 -9.860018
tp @s[scores={cutSceneTimer=747}] 8489.16 63.62992 -12.1 -296.3102 -9.710018
tp @s[scores={cutSceneTimer=748}] 8489.16 63.63992 -12.1 -296.3152 -9.560019
tp @s[scores={cutSceneTimer=749}] 8489.16 63.64992 -12.1 -296.3203 -9.410019
tp @s[scores={cutSceneTimer=750}] 8489.16 63.65992 -12.1 -296.3253 -9.260019
tp @s[scores={cutSceneTimer=751}] 8489.16 63.66991 -12.1 -296.3303 -9.11002
tp @s[scores={cutSceneTimer=752}] 8489.16 63.67991 -12.1 -296.3353 -8.96002
tp @s[scores={cutSceneTimer=753}] 8489.16 63.68991 -12.1 -296.3403 -8.81002
tp @s[scores={cutSceneTimer=754}] 8489.16 63.69991 -12.1 -296.3453 -8.660021
tp @s[scores={cutSceneTimer=755}] 8489.16 63.70991 -12.1 -296.3503 -8.510021
tp @s[scores={cutSceneTimer=756}] 8489.16 63.71991 -12.1 -296.3553 -8.360022
tp @s[scores={cutSceneTimer=757}] 8489.16 63.7299 -12.1 -296.3603 -8.210022
tp @s[scores={cutSceneTimer=758}] 8489.16 63.7399 -12.1 -296.3653 -8.060022
tp @s[scores={cutSceneTimer=759}] 8489.16 63.7499 -12.1 -296.3703 -7.910022
tp @s[scores={cutSceneTimer=760}] 8489.16 63.7599 -12.1 -296.3753 -7.760022
tp @s[scores={cutSceneTimer=761}] 8489.16 63.7699 -12.1 -296.3803 -7.610022
tp @s[scores={cutSceneTimer=762}] 8489.16 63.7799 -12.1 -296.3853 -7.460022
tp @s[scores={cutSceneTimer=763}] 8489.16 63.78989 -12.1 -296.3903 -7.310022
tp @s[scores={cutSceneTimer=764}] 8489.16 63.79989 -12.1 -296.3953 -7.160022
tp @s[scores={cutSceneTimer=765}] 8489.16 63.80989 -12.1 -296.4003 -7.010022
tp @s[scores={cutSceneTimer=766}] 8489.16 63.81989 -12.1 -296.4053 -6.860022
tp @s[scores={cutSceneTimer=767}] 8489.16 63.82989 -12.1 -296.4103 -6.710021
tp @s[scores={cutSceneTimer=768}] 8489.16 63.83989 -12.1 -296.4153 -6.560021
tp @s[scores={cutSceneTimer=769}] 8489.16 63.84988 -12.1 -296.4203 -6.410021
tp @s[scores={cutSceneTimer=770}] 8489.16 63.85988 -12.1 -296.4254 -6.260021
tp @s[scores={cutSceneTimer=771}] 8489.16 63.86988 -12.1 -296.4304 -6.110021
tp @s[scores={cutSceneTimer=772}] 8489.16 63.87988 -12.1 -296.4354 -5.960021
tp @s[scores={cutSceneTimer=773}] 8489.16 63.88988 -12.1 -296.4404 -5.810021
tp @s[scores={cutSceneTimer=774}] 8489.16 63.89988 -12.1 -296.4454 -5.660021
tp @s[scores={cutSceneTimer=775}] 8489.16 63.90987 -12.1 -296.4504 -5.510021
tp @s[scores={cutSceneTimer=776}] 8489.16 63.91987 -12.1 -296.4554 -5.360021
tp @s[scores={cutSceneTimer=777}] 8489.16 63.92987 -12.1 -296.4604 -5.210021
tp @s[scores={cutSceneTimer=778}] 8489.16 63.93987 -12.1 -296.4654 -5.06002
tp @s[scores={cutSceneTimer=779}] 8489.16 63.94987 -12.1 -296.4704 -4.91002
tp @s[scores={cutSceneTimer=780}] 8489.16 63.95987 -12.1 -296.4754 -4.76002
tp @s[scores={cutSceneTimer=781}] 8489.16 63.96986 -12.1 -296.4804 -4.61002
tp @s[scores={cutSceneTimer=782}] 8489.16 63.97986 -12.1 -296.4854 -4.46002
tp @s[scores={cutSceneTimer=783}] 8489.16 63.98986 -12.1 -296.4904 -4.31002
tp @s[scores={cutSceneTimer=784}] 8489.16 63.99986 -12.1 -296.4954 -4.16002
tp @s[scores={cutSceneTimer=785}] 8489.16 64.00986 -12.1 -296.5004 -4.01002
tp @s[scores={cutSceneTimer=786}] 8489.16 64.01986 -12.1 -296.5054 -3.86002
tp @s[scores={cutSceneTimer=787}] 8489.16 64.02986 -12.1 -296.5104 -3.71002
tp @s[scores={cutSceneTimer=788}] 8489.16 64.03986 -12.1 -296.5154 -3.560019
tp @s[scores={cutSceneTimer=789}] 8489.16 64.04987 -12.1 -296.5204 -3.410019
tp @s[scores={cutSceneTimer=790}] 8489.16 64.05987 -12.1 -296.5255 -3.260019
tp @s[scores={cutSceneTimer=791}] 8489.16 64.06987 -12.1 -296.5305 -3.110019
tp @s[scores={cutSceneTimer=792}] 8489.16 64.07987 -12.1 -296.5355 -2.960019
tp @s[scores={cutSceneTimer=793}] 8489.16 64.08987 -12.1 -296.5405 -2.810019
tp @s[scores={cutSceneTimer=794}] 8489.16 64.09988 -12.1 -296.5455 -2.660019
tp @s[scores={cutSceneTimer=795}] 8489.16 64.10988 -12.1 -296.5505 -2.510019
tp @s[scores={cutSceneTimer=796}] 8489.16 64.11988 -12.1 -296.5555 -2.360019
tp @s[scores={cutSceneTimer=797}] 8489.16 64.12988 -12.1 -296.5605 -2.210019
tp @s[scores={cutSceneTimer=798}] 8489.16 64.13988 -12.1 -296.5655 -2.060019
tp @s[scores={cutSceneTimer=799}] 8489.16 64.14989 -12.1 -296.5705 -1.910019
tp @s[scores={cutSceneTimer=800}] 8489.16 64.15989 -12.1 -296.5755 -1.760019
tp @s[scores={cutSceneTimer=801}] 8489.16 64.16989 -12.1 -296.5805 -1.610019
tp @s[scores={cutSceneTimer=802}] 8489.16 64.17989 -12.1 -296.5855 -1.460019
tp @s[scores={cutSceneTimer=803}] 8489.16 64.1899 -12.1 -296.5905 -1.310019
tp @s[scores={cutSceneTimer=804}] 8489.16 64.1999 -12.1 -296.5955 -1.160019
tp @s[scores={cutSceneTimer=805}] 8489.16 64.2099 -12.1 -296.6005 -1.010019
tp @s[scores={cutSceneTimer=806}] 8489.16 64.2199 -12.1 -296.6055 -0.8600187
tp @s[scores={cutSceneTimer=807}] 8489.16 64.2299 -12.1 -296.6105 -0.7100188
tp @s[scores={cutSceneTimer=808}] 8489.16 64.23991 -12.1 -296.6155 -0.5600188
tp @s[scores={cutSceneTimer=809}] 8489.16 64.24991 -12.1 -296.6205 -0.4100188
tp @s[scores={cutSceneTimer=810}] 8489.16 64.25991 -12.1 -296.6255 -0.2600188
tp @s[scores={cutSceneTimer=811}] 8489.16 64.26991 -12.1 -296.6306 -0.1100188
tp @s[scores={cutSceneTimer=812}] 8489.16 64.27991 -12.1 -296.6356 0.03998125
tp @s[scores={cutSceneTimer=813}] 8489.16 64.28992 -12.1 -296.6406 0.1899813
tp @s[scores={cutSceneTimer=814}] 8489.16 64.29992 -12.1 -296.6456 0.3399813
tp @s[scores={cutSceneTimer=815}] 8489.16 64.30992 -12.1 -296.6506 0.4899813
tp @s[scores={cutSceneTimer=816}] 8489.16 64.31992 -12.1 -296.6556 0.6399813
tp @s[scores={cutSceneTimer=817}] 8489.16 64.32993 -12.1 -296.6606 0.7899812
tp @s[scores={cutSceneTimer=818}] 8489.16 64.33993 -12.1 -296.6656 0.9399812
tp @s[scores={cutSceneTimer=819}] 8489.16 64.34993 -12.1 -296.6706 1.089981
tp @s[scores={cutSceneTimer=820}] 8489.16 64.35993 -12.1 -296.6756 1.239981
tp @s[scores={cutSceneTimer=821}] 8489.16 64.36993 -12.1 -296.6806 1.389981
tp @s[scores={cutSceneTimer=822}] 8489.16 64.37994 -12.1 -296.6856 1.539981
tp @s[scores={cutSceneTimer=823}] 8489.16 64.38994 -12.1 -296.6906 1.689981
tp @s[scores={cutSceneTimer=824}] 8489.16 64.39994 -12.1 -296.6956 1.839981
tp @s[scores={cutSceneTimer=825}] 8489.16 64.40994 -12.1 -296.7006 1.989981
tp @s[scores={cutSceneTimer=826}] 8489.16 64.41994 -12.1 -296.7056 2.139981
tp @s[scores={cutSceneTimer=827}] 8489.16 64.42995 -12.1 -296.7106 2.289981
tp @s[scores={cutSceneTimer=828}] 8489.16 64.43995 -12.1 -296.7156 2.439981
tp @s[scores={cutSceneTimer=829}] 8489.16 64.44995 -12.1 -296.7206 2.589981
tp @s[scores={cutSceneTimer=830}] 8489.16 64.45995 -12.1 -296.7256 2.739981
tp @s[scores={cutSceneTimer=831}] 8489.16 64.46996 -12.1 -296.7307 2.889982
tp @s[scores={cutSceneTimer=832}] 8489.16 64.47996 -12.1 -296.7357 3.039982
tp @s[scores={cutSceneTimer=833}] 8489.16 64.48996 -12.1 -296.7407 3.189982
tp @s[scores={cutSceneTimer=834}] 8489.16 64.49996 -12.1 -296.7457 3.339982
tp @s[scores={cutSceneTimer=835}] 8489.16 64.50996 -12.1 -296.7507 3.489982
tp @s[scores={cutSceneTimer=836}] 8489.16 64.51997 -12.1 -296.7557 3.639982
tp @s[scores={cutSceneTimer=837}] 8489.16 64.52997 -12.1 -296.7607 3.789982
tp @s[scores={cutSceneTimer=838}] 8489.16 64.53997 -12.1 -296.7657 3.939982
tp @s[scores={cutSceneTimer=839}] 8489.16 64.54997 -12.1 -296.7707 4.089982
tp @s[scores={cutSceneTimer=840}] 8489.16 64.55997 -12.1 -296.7757 4.239982
tp @s[scores={cutSceneTimer=841}] 8489.16 64.56998 -12.1 -296.7807 4.389982
tp @s[scores={cutSceneTimer=842}] 8489.16 64.57998 -12.1 -296.7857 4.539982
tp @s[scores={cutSceneTimer=843}] 8489.16 64.58998 -12.1 -296.7907 4.689982
tp @s[scores={cutSceneTimer=844}] 8489.16 64.59998 -12.1 -296.7957 4.839983
tp @s[scores={cutSceneTimer=845}] 8489.16 64.60999 -12.1 -296.8007 4.989983
tp @s[scores={cutSceneTimer=846}] 8489.16 64.61999 -12.1 -296.8057 5.139983
tp @s[scores={cutSceneTimer=847}] 8489.16 64.62999 -12.1 -296.8107 5.289983
tp @s[scores={cutSceneTimer=848}] 8489.16 64.63999 -12.1 -296.8157 5.439983
tp @s[scores={cutSceneTimer=849}] 8489.16 64.64999 -12.1 -296.8207 5.589983
tp @s[scores={cutSceneTimer=850}] 8489.16 64.66 -12.1 -296.8257 5.739983
execute as @s[scores={cutSceneTimer=830}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=850}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=850}] 8515.51 75.12 8.65 -946.89 28.475
tp @s[scores={cutSceneTimer=851}] 8515.51 75.10999 8.65 -946.6799 28.31
tp @s[scores={cutSceneTimer=852}] 8515.51 75.09999 8.65 -946.4699 28.145
tp @s[scores={cutSceneTimer=853}] 8515.51 75.08999 8.65 -946.2599 27.98
tp @s[scores={cutSceneTimer=854}] 8515.51 75.07999 8.65 -946.0499 27.81499
tp @s[scores={cutSceneTimer=855}] 8515.51 75.06998 8.65 -945.8398 27.64999
tp @s[scores={cutSceneTimer=856}] 8515.51 75.05998 8.65 -945.6298 27.48499
tp @s[scores={cutSceneTimer=857}] 8515.51 75.04998 8.65 -945.4198 27.31999
tp @s[scores={cutSceneTimer=858}] 8515.51 75.03998 8.65 -945.2098 27.15499
tp @s[scores={cutSceneTimer=859}] 8515.51 75.02998 8.65 -944.9998 26.98999
tp @s[scores={cutSceneTimer=860}] 8515.51 75.01997 8.65 -944.7897 26.82499
tp @s[scores={cutSceneTimer=861}] 8515.51 75.00997 8.65 -944.5797 26.65999
tp @s[scores={cutSceneTimer=862}] 8515.51 74.99997 8.65 -944.3697 26.49499
tp @s[scores={cutSceneTimer=863}] 8515.51 74.98997 8.65 -944.1597 26.32999
tp @s[scores={cutSceneTimer=864}] 8515.51 74.97997 8.65 -943.9496 26.16499
tp @s[scores={cutSceneTimer=865}] 8515.51 74.96996 8.65 -943.7396 25.99998
tp @s[scores={cutSceneTimer=866}] 8515.51 74.95996 8.65 -943.5296 25.83498
tp @s[scores={cutSceneTimer=867}] 8515.51 74.94996 8.65 -943.3196 25.66998
tp @s[scores={cutSceneTimer=868}] 8515.51 74.93996 8.65 -943.1096 25.50498
tp @s[scores={cutSceneTimer=869}] 8515.51 74.92995 8.65 -942.8995 25.33998
tp @s[scores={cutSceneTimer=870}] 8515.51 74.91995 8.65 -942.6895 25.17498
tp @s[scores={cutSceneTimer=871}] 8515.51 74.90995 8.65 -942.4795 25.00998
tp @s[scores={cutSceneTimer=872}] 8515.51 74.89995 8.65 -942.2695 24.84498
tp @s[scores={cutSceneTimer=873}] 8515.51 74.88995 8.65 -942.0594 24.67998
tp @s[scores={cutSceneTimer=874}] 8515.51 74.87994 8.65 -941.8494 24.51498
tp @s[scores={cutSceneTimer=875}] 8515.51 74.86994 8.65 -941.6394 24.34998
tp @s[scores={cutSceneTimer=876}] 8515.51 74.85994 8.65 -941.4294 24.18497
tp @s[scores={cutSceneTimer=877}] 8515.51 74.84994 8.65 -941.2194 24.01997
tp @s[scores={cutSceneTimer=878}] 8515.51 74.83994 8.65 -941.0093 23.85497
tp @s[scores={cutSceneTimer=879}] 8515.51 74.82993 8.65 -940.7993 23.68997
tp @s[scores={cutSceneTimer=880}] 8515.51 74.81993 8.65 -940.5893 23.52497
tp @s[scores={cutSceneTimer=881}] 8515.51 74.80993 8.65 -940.3793 23.35997
tp @s[scores={cutSceneTimer=882}] 8515.51 74.79993 8.65 -940.1693 23.19497
tp @s[scores={cutSceneTimer=883}] 8515.51 74.78992 8.65 -939.9592 23.02997
tp @s[scores={cutSceneTimer=884}] 8515.51 74.77992 8.65 -939.7492 22.86497
tp @s[scores={cutSceneTimer=885}] 8515.51 74.76992 8.65 -939.5392 22.69997
tp @s[scores={cutSceneTimer=886}] 8515.51 74.75992 8.65 -939.3292 22.53497
tp @s[scores={cutSceneTimer=887}] 8515.51 74.74992 8.65 -939.1191 22.36996
tp @s[scores={cutSceneTimer=888}] 8515.51 74.73991 8.65 -938.9091 22.20496
tp @s[scores={cutSceneTimer=889}] 8515.51 74.72991 8.65 -938.6991 22.03996
tp @s[scores={cutSceneTimer=890}] 8515.51 74.71991 8.65 -938.4891 21.87496
tp @s[scores={cutSceneTimer=891}] 8515.51 74.70991 8.65 -938.2791 21.70996
tp @s[scores={cutSceneTimer=892}] 8515.51 74.69991 8.65 -938.069 21.54496
tp @s[scores={cutSceneTimer=893}] 8515.51 74.6899 8.65 -937.859 21.37996
tp @s[scores={cutSceneTimer=894}] 8515.51 74.6799 8.65 -937.649 21.21496
tp @s[scores={cutSceneTimer=895}] 8515.51 74.6699 8.65 -937.439 21.04996
tp @s[scores={cutSceneTimer=896}] 8515.51 74.6599 8.65 -937.2289 20.88496
tp @s[scores={cutSceneTimer=897}] 8515.51 74.64989 8.65 -937.0189 20.71996
tp @s[scores={cutSceneTimer=898}] 8515.51 74.63989 8.65 -936.8089 20.55495
tp @s[scores={cutSceneTimer=899}] 8515.51 74.62989 8.65 -936.5989 20.38995
tp @s[scores={cutSceneTimer=900}] 8515.51 74.61989 8.65 -936.3889 20.22495
tp @s[scores={cutSceneTimer=901}] 8515.51 74.60989 8.65 -936.1788 20.05995
tp @s[scores={cutSceneTimer=902}] 8515.51 74.59988 8.65 -935.9688 19.89495
tp @s[scores={cutSceneTimer=903}] 8515.51 74.58988 8.65 -935.7588 19.72995
tp @s[scores={cutSceneTimer=904}] 8515.51 74.57988 8.65 -935.5488 19.56495
tp @s[scores={cutSceneTimer=905}] 8515.51 74.56988 8.65 -935.3387 19.39995
tp @s[scores={cutSceneTimer=906}] 8515.51 74.55988 8.65 -935.1287 19.23495
tp @s[scores={cutSceneTimer=907}] 8515.51 74.54987 8.65 -934.9187 19.06995
tp @s[scores={cutSceneTimer=908}] 8515.51 74.53987 8.65 -934.7087 18.90495
tp @s[scores={cutSceneTimer=909}] 8515.51 74.52987 8.65 -934.4987 18.73994
tp @s[scores={cutSceneTimer=910}] 8515.51 74.51987 8.65 -934.2886 18.57494
tp @s[scores={cutSceneTimer=911}] 8515.51 74.50986 8.65 -934.0786 18.40994
tp @s[scores={cutSceneTimer=912}] 8515.51 74.49986 8.65 -933.8686 18.24494
tp @s[scores={cutSceneTimer=913}] 8515.51 74.48986 8.65 -933.6586 18.07994
tp @s[scores={cutSceneTimer=914}] 8515.51 74.47986 8.65 -933.4485 17.91494
tp @s[scores={cutSceneTimer=915}] 8515.51 74.46986 8.65 -933.2385 17.74994
tp @s[scores={cutSceneTimer=916}] 8515.51 74.45985 8.65 -933.0285 17.58494
tp @s[scores={cutSceneTimer=917}] 8515.51 74.44985 8.65 -932.8185 17.41994
tp @s[scores={cutSceneTimer=918}] 8515.51 74.43985 8.65 -932.6085 17.25494
tp @s[scores={cutSceneTimer=919}] 8515.51 74.42985 8.65 -932.3984 17.08994
tp @s[scores={cutSceneTimer=920}] 8515.51 74.41985 8.65 -932.1884 16.92493
tp @s[scores={cutSceneTimer=921}] 8515.51 74.40984 8.65 -931.9784 16.75993
tp @s[scores={cutSceneTimer=922}] 8515.51 74.39984 8.65 -931.7684 16.59493
tp @s[scores={cutSceneTimer=923}] 8515.51 74.38984 8.65 -931.5583 16.42993
tp @s[scores={cutSceneTimer=924}] 8515.51 74.37984 8.65 -931.3483 16.26493
tp @s[scores={cutSceneTimer=925}] 8515.51 74.36983 8.65 -931.1383 16.09993
tp @s[scores={cutSceneTimer=926}] 8515.51 74.35983 8.65 -930.9283 15.93493
tp @s[scores={cutSceneTimer=927}] 8515.51 74.34983 8.65 -930.7183 15.76993
tp @s[scores={cutSceneTimer=928}] 8515.51 74.33983 8.65 -930.5082 15.60493
tp @s[scores={cutSceneTimer=929}] 8515.51 74.32983 8.65 -930.2982 15.43993
tp @s[scores={cutSceneTimer=930}] 8515.51 74.31982 8.65 -930.0882 15.27493
tp @s[scores={cutSceneTimer=931}] 8515.51 74.30982 8.65 -929.8782 15.10993
tp @s[scores={cutSceneTimer=932}] 8515.51 74.29982 8.65 -929.6682 14.94493
tp @s[scores={cutSceneTimer=933}] 8515.51 74.28982 8.65 -929.4581 14.77993
tp @s[scores={cutSceneTimer=934}] 8515.51 74.27982 8.65 -929.2481 14.61493
tp @s[scores={cutSceneTimer=935}] 8515.51 74.26981 8.65 -929.0381 14.44993
tp @s[scores={cutSceneTimer=936}] 8515.51 74.25981 8.65 -928.8281 14.28493
tp @s[scores={cutSceneTimer=937}] 8515.51 74.24981 8.65 -928.618 14.11993
tp @s[scores={cutSceneTimer=938}] 8515.51 74.23981 8.65 -928.408 13.95493
tp @s[scores={cutSceneTimer=939}] 8515.51 74.2298 8.65 -928.198 13.78993
tp @s[scores={cutSceneTimer=940}] 8515.51 74.2198 8.65 -927.988 13.62493
tp @s[scores={cutSceneTimer=941}] 8515.51 74.2098 8.65 -927.778 13.45993
tp @s[scores={cutSceneTimer=942}] 8515.51 74.1998 8.65 -927.5679 13.29493
tp @s[scores={cutSceneTimer=943}] 8515.51 74.1898 8.65 -927.3579 13.12993
tp @s[scores={cutSceneTimer=944}] 8515.51 74.17979 8.65 -927.1479 12.96493
tp @s[scores={cutSceneTimer=945}] 8515.51 74.16979 8.65 -926.9379 12.79993
tp @s[scores={cutSceneTimer=946}] 8515.51 74.15979 8.65 -926.7278 12.63493
tp @s[scores={cutSceneTimer=947}] 8515.51 74.14979 8.65 -926.5178 12.46993
tp @s[scores={cutSceneTimer=948}] 8515.51 74.13979 8.65 -926.3078 12.30493
tp @s[scores={cutSceneTimer=949}] 8515.51 74.12978 8.65 -926.0978 12.13993
tp @s[scores={cutSceneTimer=950}] 8515.51 74.11978 8.65 -925.8878 11.97493
tp @s[scores={cutSceneTimer=951}] 8515.51 74.10978 8.65 -925.6777 11.80993
tp @s[scores={cutSceneTimer=952}] 8515.51 74.09978 8.65 -925.4677 11.64493
tp @s[scores={cutSceneTimer=953}] 8515.51 74.08978 8.65 -925.2577 11.47993
tp @s[scores={cutSceneTimer=954}] 8515.51 74.07977 8.65 -925.0477 11.31493
tp @s[scores={cutSceneTimer=955}] 8515.51 74.06977 8.65 -924.8376 11.14993
tp @s[scores={cutSceneTimer=956}] 8515.51 74.05977 8.65 -924.6276 10.98493
tp @s[scores={cutSceneTimer=957}] 8515.51 74.04977 8.65 -924.4176 10.81993
tp @s[scores={cutSceneTimer=958}] 8515.51 74.03976 8.65 -924.2076 10.65493
tp @s[scores={cutSceneTimer=959}] 8515.51 74.02976 8.65 -923.9976 10.48993
tp @s[scores={cutSceneTimer=960}] 8515.51 74.01976 8.65 -923.7875 10.32493
tp @s[scores={cutSceneTimer=961}] 8515.51 74.00976 8.65 -923.5775 10.15993
tp @s[scores={cutSceneTimer=962}] 8515.51 73.99976 8.65 -923.3675 9.994931
tp @s[scores={cutSceneTimer=963}] 8515.51 73.98975 8.65 -923.1575 9.829931
tp @s[scores={cutSceneTimer=964}] 8515.51 73.97975 8.65 -922.9474 9.664931
tp @s[scores={cutSceneTimer=965}] 8515.51 73.96975 8.65 -922.7374 9.499931
tp @s[scores={cutSceneTimer=966}] 8515.51 73.95975 8.65 -922.5274 9.334931
tp @s[scores={cutSceneTimer=967}] 8515.51 73.94975 8.65 -922.3174 9.169931
tp @s[scores={cutSceneTimer=968}] 8515.51 73.93974 8.65 -922.1074 9.004931
tp @s[scores={cutSceneTimer=969}] 8515.51 73.92974 8.65 -921.8973 8.839931
tp @s[scores={cutSceneTimer=970}] 8515.51 73.91974 8.65 -921.6873 8.674932
tp @s[scores={cutSceneTimer=971}] 8515.51 73.90974 8.65 -921.4773 8.509932
tp @s[scores={cutSceneTimer=972}] 8515.51 73.89973 8.65 -921.2673 8.344932
tp @s[scores={cutSceneTimer=973}] 8515.51 73.88973 8.65 -921.0573 8.179932
tp @s[scores={cutSceneTimer=974}] 8515.51 73.87973 8.65 -920.8472 8.014932
tp @s[scores={cutSceneTimer=975}] 8515.51 73.86973 8.65 -920.6372 7.849932
tp @s[scores={cutSceneTimer=976}] 8515.51 73.85973 8.65 -920.4272 7.684932
tp @s[scores={cutSceneTimer=977}] 8515.51 73.84972 8.65 -920.2172 7.519932
tp @s[scores={cutSceneTimer=978}] 8515.51 73.83972 8.65 -920.0071 7.354932
tp @s[scores={cutSceneTimer=979}] 8515.51 73.82972 8.65 -919.7971 7.189932
tp @s[scores={cutSceneTimer=980}] 8515.51 73.81972 8.65 -919.5871 7.024932
tp @s[scores={cutSceneTimer=981}] 8515.51 73.80972 8.65 -919.3771 6.859932
tp @s[scores={cutSceneTimer=982}] 8515.51 73.79971 8.65 -919.1671 6.694932
tp @s[scores={cutSceneTimer=983}] 8515.51 73.78971 8.65 -918.957 6.529932
tp @s[scores={cutSceneTimer=984}] 8515.51 73.77971 8.65 -918.747 6.364932
tp @s[scores={cutSceneTimer=985}] 8515.51 73.76971 8.65 -918.537 6.199932
tp @s[scores={cutSceneTimer=986}] 8515.51 73.7597 8.65 -918.327 6.034932
tp @s[scores={cutSceneTimer=987}] 8515.51 73.7497 8.65 -918.1169 5.869932
tp @s[scores={cutSceneTimer=988}] 8515.51 73.7397 8.65 -917.9069 5.704932
tp @s[scores={cutSceneTimer=989}] 8515.51 73.7297 8.65 -917.6969 5.539932
tp @s[scores={cutSceneTimer=990}] 8515.51 73.7197 8.65 -917.4869 5.374932
tp @s[scores={cutSceneTimer=991}] 8515.51 73.70969 8.65 -917.2769 5.209932
tp @s[scores={cutSceneTimer=992}] 8515.51 73.69969 8.65 -917.0668 5.044932
tp @s[scores={cutSceneTimer=993}] 8515.51 73.68969 8.65 -916.8568 4.879932
tp @s[scores={cutSceneTimer=994}] 8515.51 73.67969 8.65 -916.6468 4.714932
tp @s[scores={cutSceneTimer=995}] 8515.51 73.66969 8.65 -916.4368 4.549932
tp @s[scores={cutSceneTimer=996}] 8515.51 73.65968 8.65 -916.2267 4.384933
tp @s[scores={cutSceneTimer=997}] 8515.51 73.64968 8.65 -916.0167 4.219933
tp @s[scores={cutSceneTimer=998}] 8515.51 73.63968 8.65 -915.8067 4.054933
tp @s[scores={cutSceneTimer=999}] 8515.51 73.62968 8.65 -915.5967 3.889933
tp @s[scores={cutSceneTimer=1000}] 8515.51 73.61967 8.65 -915.3867 3.724933
execute as @s[scores={cutSceneTimer=980}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=1000}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1000}] 8612.33 89.335 -5.56 -1107.285 16.35
tp @s[scores={cutSceneTimer=1001}] 8612.33 89.34 -5.56 -1107.46 16.6
tp @s[scores={cutSceneTimer=1002}] 8612.33 89.34499 -5.56 -1107.635 16.85
tp @s[scores={cutSceneTimer=1003}] 8612.33 89.34999 -5.56 -1107.81 17.1
tp @s[scores={cutSceneTimer=1004}] 8612.33 89.35499 -5.56 -1107.985 17.35
tp @s[scores={cutSceneTimer=1005}] 8612.33 89.35999 -5.56 -1108.16 17.6
tp @s[scores={cutSceneTimer=1006}] 8612.33 89.36498 -5.56 -1108.335 17.85
tp @s[scores={cutSceneTimer=1007}] 8612.33 89.36998 -5.56 -1108.51 18.1
tp @s[scores={cutSceneTimer=1008}] 8612.33 89.37498 -5.56 -1108.685 18.35
tp @s[scores={cutSceneTimer=1009}] 8612.33 89.37997 -5.56 -1108.86 18.6
tp @s[scores={cutSceneTimer=1010}] 8612.33 89.38497 -5.56 -1109.036 18.85
tp @s[scores={cutSceneTimer=1011}] 8612.33 89.38997 -5.56 -1109.211 19.1
tp @s[scores={cutSceneTimer=1012}] 8612.33 89.39497 -5.56 -1109.386 19.35
tp @s[scores={cutSceneTimer=1013}] 8612.33 89.39996 -5.56 -1109.561 19.6
tp @s[scores={cutSceneTimer=1014}] 8612.33 89.40496 -5.56 -1109.736 19.85
tp @s[scores={cutSceneTimer=1015}] 8612.33 89.40996 -5.56 -1109.911 20.1
tp @s[scores={cutSceneTimer=1016}] 8612.33 89.41496 -5.56 -1110.086 20.35
tp @s[scores={cutSceneTimer=1017}] 8612.33 89.41995 -5.56 -1110.261 20.6
tp @s[scores={cutSceneTimer=1018}] 8612.33 89.42495 -5.56 -1110.436 20.85
tp @s[scores={cutSceneTimer=1019}] 8612.33 89.42995 -5.56 -1110.611 21.1
tp @s[scores={cutSceneTimer=1020}] 8612.33 89.43494 -5.56 -1110.786 21.35
tp @s[scores={cutSceneTimer=1021}] 8612.33 89.43994 -5.56 -1110.961 21.6
tp @s[scores={cutSceneTimer=1022}] 8612.33 89.44494 -5.56 -1111.136 21.85
tp @s[scores={cutSceneTimer=1023}] 8612.33 89.44994 -5.56 -1111.311 22.1
tp @s[scores={cutSceneTimer=1024}] 8612.33 89.45493 -5.56 -1111.486 22.35
tp @s[scores={cutSceneTimer=1025}] 8612.33 89.45993 -5.56 -1111.661 22.6
tp @s[scores={cutSceneTimer=1026}] 8612.33 89.46493 -5.56 -1111.836 22.85
tp @s[scores={cutSceneTimer=1027}] 8612.33 89.46992 -5.56 -1112.011 23.1
tp @s[scores={cutSceneTimer=1028}] 8612.33 89.47492 -5.56 -1112.186 23.35
tp @s[scores={cutSceneTimer=1029}] 8612.33 89.47992 -5.56 -1112.361 23.6
tp @s[scores={cutSceneTimer=1030}] 8612.33 89.48492 -5.56 -1112.536 23.85
tp @s[scores={cutSceneTimer=1031}] 8612.33 89.48991 -5.56 -1112.712 24.1
tp @s[scores={cutSceneTimer=1032}] 8612.33 89.49491 -5.56 -1112.887 24.35
tp @s[scores={cutSceneTimer=1033}] 8612.33 89.49991 -5.56 -1113.062 24.6
tp @s[scores={cutSceneTimer=1034}] 8612.33 89.50491 -5.56 -1113.237 24.85
tp @s[scores={cutSceneTimer=1035}] 8612.33 89.5099 -5.56 -1113.412 25.1
tp @s[scores={cutSceneTimer=1036}] 8612.33 89.5149 -5.56 -1113.587 25.35
tp @s[scores={cutSceneTimer=1037}] 8612.33 89.5199 -5.56 -1113.762 25.6
tp @s[scores={cutSceneTimer=1038}] 8612.33 89.52489 -5.56 -1113.937 25.85
tp @s[scores={cutSceneTimer=1039}] 8612.33 89.52989 -5.56 -1114.112 26.1
tp @s[scores={cutSceneTimer=1040}] 8612.33 89.53489 -5.56 -1114.287 26.35
tp @s[scores={cutSceneTimer=1041}] 8612.33 89.53989 -5.56 -1114.462 26.6
tp @s[scores={cutSceneTimer=1042}] 8612.33 89.54488 -5.56 -1114.637 26.85
tp @s[scores={cutSceneTimer=1043}] 8612.33 89.54988 -5.56 -1114.812 27.1
tp @s[scores={cutSceneTimer=1044}] 8612.33 89.55488 -5.56 -1114.987 27.35
tp @s[scores={cutSceneTimer=1045}] 8612.33 89.55988 -5.56 -1115.162 27.6
tp @s[scores={cutSceneTimer=1046}] 8612.33 89.56487 -5.56 -1115.337 27.85
tp @s[scores={cutSceneTimer=1047}] 8612.33 89.56987 -5.56 -1115.512 28.1
tp @s[scores={cutSceneTimer=1048}] 8612.33 89.57487 -5.56 -1115.687 28.35
tp @s[scores={cutSceneTimer=1049}] 8612.33 89.57986 -5.56 -1115.862 28.6
tp @s[scores={cutSceneTimer=1050}] 8612.33 89.58486 -5.56 -1116.037 28.85
tp @s[scores={cutSceneTimer=1051}] 8612.33 89.58986 -5.56 -1116.213 29.1
tp @s[scores={cutSceneTimer=1052}] 8612.33 89.59486 -5.56 -1116.388 29.35
tp @s[scores={cutSceneTimer=1053}] 8612.33 89.59985 -5.56 -1116.563 29.6
tp @s[scores={cutSceneTimer=1054}] 8612.33 89.60485 -5.56 -1116.738 29.85
tp @s[scores={cutSceneTimer=1055}] 8612.33 89.60985 -5.56 -1116.913 30.1
tp @s[scores={cutSceneTimer=1056}] 8612.33 89.61485 -5.56 -1117.088 30.35
tp @s[scores={cutSceneTimer=1057}] 8612.33 89.61984 -5.56 -1117.263 30.6
tp @s[scores={cutSceneTimer=1058}] 8612.33 89.62484 -5.56 -1117.438 30.85
tp @s[scores={cutSceneTimer=1059}] 8612.33 89.62984 -5.56 -1117.613 31.1
tp @s[scores={cutSceneTimer=1060}] 8612.33 89.63483 -5.56 -1117.788 31.35
tp @s[scores={cutSceneTimer=1061}] 8612.33 89.63983 -5.56 -1117.963 31.6
tp @s[scores={cutSceneTimer=1062}] 8612.33 89.64483 -5.56 -1118.138 31.85
tp @s[scores={cutSceneTimer=1063}] 8612.33 89.64983 -5.56 -1118.313 32.1
tp @s[scores={cutSceneTimer=1064}] 8612.33 89.65482 -5.56 -1118.488 32.35
tp @s[scores={cutSceneTimer=1065}] 8612.33 89.65982 -5.56 -1118.663 32.6
tp @s[scores={cutSceneTimer=1066}] 8612.33 89.66482 -5.56 -1118.838 32.85
tp @s[scores={cutSceneTimer=1067}] 8612.33 89.66982 -5.56 -1119.013 33.1
tp @s[scores={cutSceneTimer=1068}] 8612.33 89.67481 -5.56 -1119.188 33.35
tp @s[scores={cutSceneTimer=1069}] 8612.33 89.67981 -5.56 -1119.363 33.6
tp @s[scores={cutSceneTimer=1070}] 8612.33 89.68481 -5.56 -1119.538 33.85
tp @s[scores={cutSceneTimer=1071}] 8612.33 89.6898 -5.56 -1119.714 34.1
tp @s[scores={cutSceneTimer=1072}] 8612.33 89.6948 -5.56 -1119.889 34.35
tp @s[scores={cutSceneTimer=1073}] 8612.33 89.6998 -5.56 -1120.064 34.6
tp @s[scores={cutSceneTimer=1074}] 8612.33 89.7048 -5.56 -1120.239 34.85
tp @s[scores={cutSceneTimer=1075}] 8612.33 89.70979 -5.56 -1120.414 35.1
tp @s[scores={cutSceneTimer=1076}] 8612.33 89.71479 -5.56 -1120.589 35.35
tp @s[scores={cutSceneTimer=1077}] 8612.33 89.71979 -5.56 -1120.764 35.6
tp @s[scores={cutSceneTimer=1078}] 8612.33 89.72478 -5.56 -1120.939 35.85
tp @s[scores={cutSceneTimer=1079}] 8612.33 89.72978 -5.56 -1121.114 36.1
tp @s[scores={cutSceneTimer=1080}] 8612.33 89.73478 -5.56 -1121.289 36.35
tp @s[scores={cutSceneTimer=1081}] 8612.33 89.73978 -5.56 -1121.464 36.6
tp @s[scores={cutSceneTimer=1082}] 8612.33 89.74477 -5.56 -1121.639 36.85
tp @s[scores={cutSceneTimer=1083}] 8612.33 89.74977 -5.56 -1121.814 37.1
tp @s[scores={cutSceneTimer=1084}] 8612.33 89.75477 -5.56 -1121.989 37.35
tp @s[scores={cutSceneTimer=1085}] 8612.33 89.75977 -5.56 -1122.164 37.6
tp @s[scores={cutSceneTimer=1086}] 8612.33 89.76476 -5.56 -1122.339 37.85
tp @s[scores={cutSceneTimer=1087}] 8612.33 89.76976 -5.56 -1122.514 38.1
tp @s[scores={cutSceneTimer=1088}] 8612.33 89.77476 -5.56 -1122.689 38.35
tp @s[scores={cutSceneTimer=1089}] 8612.33 89.77975 -5.56 -1122.864 38.6
tp @s[scores={cutSceneTimer=1090}] 8612.33 89.78475 -5.56 -1123.039 38.85
tp @s[scores={cutSceneTimer=1091}] 8612.33 89.78975 -5.56 -1123.214 39.1
tp @s[scores={cutSceneTimer=1092}] 8612.33 89.79475 -5.56 -1123.39 39.35
tp @s[scores={cutSceneTimer=1093}] 8612.33 89.79974 -5.56 -1123.565 39.6
tp @s[scores={cutSceneTimer=1094}] 8612.33 89.80474 -5.56 -1123.74 39.85
tp @s[scores={cutSceneTimer=1095}] 8612.33 89.80974 -5.56 -1123.915 40.1
tp @s[scores={cutSceneTimer=1096}] 8612.33 89.81474 -5.56 -1124.09 40.35
tp @s[scores={cutSceneTimer=1097}] 8612.33 89.81973 -5.56 -1124.265 40.6
tp @s[scores={cutSceneTimer=1098}] 8612.33 89.82473 -5.56 -1124.44 40.85
tp @s[scores={cutSceneTimer=1099}] 8612.33 89.82973 -5.56 -1124.615 41.1
tp @s[scores={cutSceneTimer=1100}] 8612.33 89.83472 -5.56 -1124.79 41.35
tp @s[scores={cutSceneTimer=1101}] 8612.33 89.83972 -5.56 -1124.965 41.6
tp @s[scores={cutSceneTimer=1102}] 8612.33 89.84472 -5.56 -1125.14 41.85
tp @s[scores={cutSceneTimer=1103}] 8612.33 89.84972 -5.56 -1125.315 42.1
tp @s[scores={cutSceneTimer=1104}] 8612.33 89.85471 -5.56 -1125.49 42.35
tp @s[scores={cutSceneTimer=1105}] 8612.33 89.85971 -5.56 -1125.665 42.6
tp @s[scores={cutSceneTimer=1106}] 8612.33 89.86471 -5.56 -1125.84 42.85
tp @s[scores={cutSceneTimer=1107}] 8612.33 89.86971 -5.56 -1126.015 43.1
tp @s[scores={cutSceneTimer=1108}] 8612.33 89.8747 -5.56 -1126.19 43.35
tp @s[scores={cutSceneTimer=1109}] 8612.33 89.8797 -5.56 -1126.365 43.6
tp @s[scores={cutSceneTimer=1110}] 8612.33 89.8847 -5.56 -1126.54 43.85
tp @s[scores={cutSceneTimer=1111}] 8612.33 89.88969 -5.56 -1126.715 44.1
tp @s[scores={cutSceneTimer=1112}] 8612.33 89.89469 -5.56 -1126.891 44.35
tp @s[scores={cutSceneTimer=1113}] 8612.33 89.89969 -5.56 -1127.066 44.6
tp @s[scores={cutSceneTimer=1114}] 8612.33 89.90469 -5.56 -1127.241 44.85
tp @s[scores={cutSceneTimer=1115}] 8612.33 89.90968 -5.56 -1127.416 45.1
tp @s[scores={cutSceneTimer=1116}] 8612.33 89.91468 -5.56 -1127.591 45.35
tp @s[scores={cutSceneTimer=1117}] 8612.33 89.91968 -5.56 -1127.766 45.6
tp @s[scores={cutSceneTimer=1118}] 8612.33 89.92467 -5.56 -1127.941 45.85
tp @s[scores={cutSceneTimer=1119}] 8612.33 89.92967 -5.56 -1128.116 46.1
tp @s[scores={cutSceneTimer=1120}] 8612.33 89.93467 -5.56 -1128.291 46.35
tp @s[scores={cutSceneTimer=1121}] 8612.33 89.93967 -5.56 -1128.466 46.6
tp @s[scores={cutSceneTimer=1122}] 8612.33 89.94466 -5.56 -1128.641 46.85
tp @s[scores={cutSceneTimer=1123}] 8612.33 89.94966 -5.56 -1128.816 47.1
tp @s[scores={cutSceneTimer=1124}] 8612.33 89.95466 -5.56 -1128.991 47.35
tp @s[scores={cutSceneTimer=1125}] 8612.33 89.95966 -5.56 -1129.166 47.6
tp @s[scores={cutSceneTimer=1126}] 8612.33 89.96465 -5.56 -1129.341 47.85
tp @s[scores={cutSceneTimer=1127}] 8612.33 89.96965 -5.56 -1129.516 48.1
tp @s[scores={cutSceneTimer=1128}] 8612.33 89.97465 -5.56 -1129.691 48.35
tp @s[scores={cutSceneTimer=1129}] 8612.33 89.97964 -5.56 -1129.866 48.6
tp @s[scores={cutSceneTimer=1130}] 8612.33 89.98464 -5.56 -1130.041 48.85
tp @s[scores={cutSceneTimer=1131}] 8612.33 89.98964 -5.56 -1130.216 49.1
tp @s[scores={cutSceneTimer=1132}] 8612.33 89.99464 -5.56 -1130.391 49.35
tp @s[scores={cutSceneTimer=1133}] 8612.33 89.99963 -5.56 -1130.567 49.6
tp @s[scores={cutSceneTimer=1134}] 8612.33 90.00463 -5.56 -1130.742 49.85
tp @s[scores={cutSceneTimer=1135}] 8612.33 90.00963 -5.56 -1130.917 50.1
tp @s[scores={cutSceneTimer=1136}] 8612.33 90.01463 -5.56 -1131.092 50.35
tp @s[scores={cutSceneTimer=1137}] 8612.33 90.01962 -5.56 -1131.267 50.6
tp @s[scores={cutSceneTimer=1138}] 8612.33 90.02462 -5.56 -1131.442 50.85
tp @s[scores={cutSceneTimer=1139}] 8612.33 90.02962 -5.56 -1131.617 51.1
tp @s[scores={cutSceneTimer=1140}] 8612.33 90.03461 -5.56 -1131.792 51.35
tp @s[scores={cutSceneTimer=1141}] 8612.33 90.03961 -5.56 -1131.967 51.6
tp @s[scores={cutSceneTimer=1142}] 8612.33 90.04461 -5.56 -1132.142 51.85
tp @s[scores={cutSceneTimer=1143}] 8612.33 90.04961 -5.56 -1132.317 52.1
tp @s[scores={cutSceneTimer=1144}] 8612.33 90.0546 -5.56 -1132.492 52.35
tp @s[scores={cutSceneTimer=1145}] 8612.33 90.0596 -5.56 -1132.667 52.6
tp @s[scores={cutSceneTimer=1146}] 8612.33 90.0646 -5.56 -1132.842 52.85
tp @s[scores={cutSceneTimer=1147}] 8612.33 90.0696 -5.56 -1133.017 53.1
tp @s[scores={cutSceneTimer=1148}] 8612.33 90.07459 -5.56 -1133.192 53.35
tp @s[scores={cutSceneTimer=1149}] 8612.33 90.07959 -5.56 -1133.367 53.6
tp @s[scores={cutSceneTimer=1150}] 8612.33 90.08459 -5.56 -1133.542 53.85

# ¤McGonagall:¤ Could I have your attention, please?
# ¤McGonagall:¤ Прошу вашего внимания!
execute as @s[scores={cutSceneTimer=90},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=90..200}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Прошу вашего внимания!"}]
execute as @s[scores={cutSceneTimer=90},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=97},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=101},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=108},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=112},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=119},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=123},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=130},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral

# ¤McGonagall:¤ Now today we will be learning the spell Vera Verto.
# ¤McGonagall:¤ Сегодня мы будем изучать заклинание Фера Верто.
execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=200..320}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Сегодня мы будем изучать заклинание Фера Верто."}]
execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=207},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=211},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=218},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=222},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=229},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=233},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral

# ¤McGonagall:¤ This spell will let you change the shape and properties of your surroundings,
# ¤McGonagall:¤ Это заклинание позволит вам изменить форму и свойства вашего окружения,
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=330..420}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Это заклинание позволит вам изменить форму и свойства вашего окружения,"}]
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=337},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=341},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=348},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=352},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=359},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=363},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=370},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral


# ¤McGonagall:¤ and will let you transform certain objects and enemies.
# ¤McGonagall:¤ и позволит трансформировать определенные объекты и врагов.
execute as @s[scores={cutSceneTimer=420},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=420..500}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" и позволит трансформировать определенные объекты и врагов."}]
execute as @s[scores={cutSceneTimer=420},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=427},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=431},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=438},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=442},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=449},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=453},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=460},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral


# ¤McGonagall:¤ Like so:
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=500..560}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Примерно так;"}]
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=507},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=511},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=518},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=522},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=529},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=533},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=540},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=561..599}] run title @s actionbar ""


# ¤McGonagall:¤ Vera Verto
execute as @s[scores={cutSceneTimer=600},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=600..660}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Фера Верто"}]
execute as @s[scores={cutSceneTimer=600},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=607},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=611},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=618},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=622},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=529},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=633},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=640},tag=cutsceneLeader] as @e[tag=mcGonagallClassroomCutscene,limit=1] run function hp:npc/update_npc_head_neutral


# ¤McGonagall:¤ Now it's your turn. I have prepared a section of the castle, where you might practice.
# ¤McGonagall:¤ Теперь ваша очередь. Для практики выделена часть помещений.
execute as @s[scores={cutSceneTimer=701},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=700..850}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Теперь ваша очередь. Для практики выделена часть помещений."}]

# ¤McGonagall:¤ When you see blue particles around an object, you will be able to transform it.
# ¤McGonagall:¤ Если вы увидите синие частицы вокруг объекта, вы сможете преобразовать его.
execute as @s[scores={cutSceneTimer=851},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=850..1000}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Если вы увидите синие частицы вокруг объекта, вы сможете преобразовать его."}]

execute as @s[scores={cutSceneTimer=1000}] run function hp:music/music/swish_and_flick
execute as @s[scores={cutSceneTimer=1000}] run scoreboard players set @s queuedMusic 0

# ¤McGonagall:¤ Now, off you go. Best of luck!
# ¤McGonagall:¤ Теперь ваша очередь. Желаю удачи!
execute as @s[scores={cutSceneTimer=1000},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1000..1090}] run title @s actionbar ["",{"text":""},{"text":"Макгонагалл;","color":"dark_gray"},{"text":" Теперь ваша очередь. Желаю удачи!"}]

execute as @s[scores={cutSceneTimer=1090..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1131}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1152}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1152}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1152}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1152,playerID=1}] run tp @s 8489.66 59.00 0.39 89.75 1.24
execute as @s[scores={cutSceneTimer=1152,playerID=2}] run tp @s 8489.46 59.00 2.09 116.78 1.07
execute as @s[scores={cutSceneTimer=1152,playerID=3}] run tp @s 8488.14 59.00 2.96 164.67 3.14
execute as @s[scores={cutSceneTimer=1152,playerID=4}] run tp @s 8486.34 59.00 3.17 180.53 2.81
execute as @s[scores={cutSceneTimer=1152}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1173}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1173}] run scoreboard players set playerInVeraVertoSpellChallenge global 1
execute as @s[scores={cutSceneTimer=1173}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1173}] as @s run function hp:cutscenes/exit_cutscene