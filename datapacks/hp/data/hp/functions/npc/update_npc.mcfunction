# Recover all scores from NBT
execute store result score @s npcArms run data get entity @s ArmorItems[3].tag.npcArms 1
execute store result score @s npcHead run data get entity @s ArmorItems[3].tag.npcHead 1
execute store result score @s house run data get entity @s ArmorItems[3].tag.house 1
execute store result score @s conv run data get entity @s ArmorItems[3].tag.conv 1
execute store result score @s npcRotY run data get entity @s ArmorItems[3].tag.npcRotY 1
execute store result score @s npcRotX run data get entity @s ArmorItems[3].tag.npcRotX 1
execute store result score @s clothesSlot1ID run data get entity @s ArmorItems[3].tag.clothesSlot1ID 1
execute store result score @s clothesSlot2ID run data get entity @s ArmorItems[3].tag.clothesSlot2ID 1
execute store result score @s clothesSlot3ID run data get entity @s ArmorItems[3].tag.clothesSlot3ID 1

# Arms
data merge entity @s[scores={npcArms=1},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:129}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=2},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:128}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:128}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=3},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:131}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:131}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=4},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:130}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:130}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=5},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:127}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:127}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=6},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:126}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:126}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=7},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:125}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:125}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=8},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:124}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:124}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=9},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:123}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:122}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=10},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:121}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:120}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=11},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:119}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:118}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=12},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:117}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:116}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=13},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:115}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:114}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=14},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:113}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=15},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:112}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:112}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=16},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:111}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:110}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=17},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:109}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:108}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=18},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:107}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:106}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=19},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:105}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:104}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=20},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:103}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:102}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=21},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:101}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:100}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=22},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:99}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:98}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=23},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:73}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:73}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=24},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:72}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:72}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=25},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:71}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:70}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=26},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:69}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:68}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=27},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:67}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:66}}],HandDropChances:[0.0F,0.0F]}
# Ghosts
data merge entity @s[scores={npcArms=28},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:59}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=29},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:58}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=30},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:57}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=31},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:56}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=32},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:55}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={npcArms=33},tag=studentWithoutRobe] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:54}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandDropChances:[0.0F,0.0F]}

data merge entity @s[scores={npcArms=1},tag=misc] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:61}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:61}}]}
data merge entity @s[scores={npcArms=2},tag=misc] {HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:60}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:60}}]}


execute as @s[tag=!scroll] run function hp:npc/update_npc_head_neutral

# House
data merge entity @s[scores={house=1},tag=studentWithRobe] {Profession:6}
data merge entity @s[scores={house=2},tag=studentWithRobe] {Profession:2} 
data merge entity @s[scores={house=3},tag=studentWithRobe] {Profession:3}
data merge entity @s[scores={house=4},tag=studentWithRobe] {Profession:1}

data merge entity @s[scores={house=1},tag=witch] {Profession:4}
data merge entity @s[scores={house=2},tag=witch] {Profession:5}

data merge entity @s[scores={house=1},tag=wizard] {Profession:4,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:95}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=2},tag=wizard] {Profession:4,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:94}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:94}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=3},tag=wizard] {Profession:3,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:93}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=4},tag=wizard] {Profession:3,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:92}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:92}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=5},tag=wizard] {Profession:5,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:91}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:91}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=6},tag=wizard] {Profession:5,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:90}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:90}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=7},tag=wizard] {Profession:4,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:65}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:64}}],HandDropChances:[0.0F,0.0F]}
data merge entity @s[scores={house=8},tag=wizard] {Profession:4,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:63}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:62}}],HandDropChances:[0.0F,0.0F]}

data merge entity @s[scores={house=1},tag=cat] {CatType:0}
data merge entity @s[scores={house=2},tag=cat] {CatType:1}
data merge entity @s[scores={house=3},tag=cat] {CatType:2}
data merge entity @s[scores={house=4},tag=cat] {CatType:3}

data merge entity @s[scores={house=1},tag=rabbit] {RabbitType:0}
data merge entity @s[scores={house=2},tag=rabbit] {RabbitType:1}
data merge entity @s[scores={house=3},tag=rabbit] {RabbitType:2}
data merge entity @s[scores={house=4},tag=rabbit] {RabbitType:3}
data merge entity @s[scores={house=5},tag=rabbit] {RabbitType:4}
data merge entity @s[scores={house=6},tag=rabbit] {RabbitType:5}

data merge entity @s[scores={house=1},tag=parrot] {Variant:0}
data merge entity @s[scores={house=2},tag=parrot] {Variant:1}
data merge entity @s[scores={house=3},tag=parrot] {Variant:2}
data merge entity @s[scores={house=4},tag=parrot] {Variant:3}
data merge entity @s[scores={house=5},tag=parrot] {Variant:4}

# Clothes Slot 1
execute as @s[scores={clothesSlot2ID=0}] run replaceitem entity @s armor.chest air
execute as @s[scores={clothesSlot2ID=1,house=1}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16735744}}
execute as @s[scores={clothesSlot2ID=1,house=2}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:7248624}}
execute as @s[scores={clothesSlot2ID=1,house=3}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16770365}}
execute as @s[scores={clothesSlot2ID=1,house=4}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:8453952}}
execute as @s[scores={clothesSlot2ID=1,house=5}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:9408399}}
execute as @s[scores={clothesSlot2ID=2}] run replaceitem entity @s armor.chest minecraft:iron_chestplate
execute as @s[scores={clothesSlot2ID=3}] run replaceitem entity @s armor.chest minecraft:golden_chestplate
execute as @s[scores={clothesSlot2ID=4}] run replaceitem entity @s armor.chest minecraft:diamond_chestplate
execute as @s[scores={clothesSlot2ID=5}] run replaceitem entity @s armor.chest minecraft:chainmail_chestplate


# Clothes Slot 2
execute as @s[scores={clothesSlot3ID=0}] run replaceitem entity @s armor.legs air
execute as @s[scores={clothesSlot3ID=1,house=1}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16735744}}
execute as @s[scores={clothesSlot3ID=1,house=2}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:7248624}}
execute as @s[scores={clothesSlot3ID=1,house=3}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16770365}}
execute as @s[scores={clothesSlot3ID=1,house=4}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:8453952}}
execute as @s[scores={clothesSlot3ID=1,house=5}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:9408399}}
execute as @s[scores={clothesSlot3ID=2}] run replaceitem entity @s armor.legs minecraft:iron_leggings
execute as @s[scores={clothesSlot3ID=3}] run replaceitem entity @s armor.legs minecraft:golden_leggings
execute as @s[scores={clothesSlot3ID=4}] run replaceitem entity @s armor.legs minecraft:diamond_leggings
execute as @s[scores={clothesSlot3ID=5}] run replaceitem entity @s armor.legs minecraft:chainmail_leggings

# Clothes Slot 3
execute as @s[scores={clothesSlot1ID=0}] run replaceitem entity @s armor.feet air
execute as @s[scores={clothesSlot1ID=1}] run replaceitem entity @s armor.feet minecraft:iron_boots
execute as @s[scores={clothesSlot1ID=2}] run replaceitem entity @s armor.feet minecraft:golden_boots
execute as @s[scores={clothesSlot1ID=3}] run replaceitem entity @s armor.feet minecraft:diamond_boots
execute as @s[scores={clothesSlot1ID=4}] run replaceitem entity @s armor.feet minecraft:chainmail_boots
execute as @s[scores={clothesSlot1ID=5}] run replaceitem entity @s armor.feet minecraft:leather_boots

