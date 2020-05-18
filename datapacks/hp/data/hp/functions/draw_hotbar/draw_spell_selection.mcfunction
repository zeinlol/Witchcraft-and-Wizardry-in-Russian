# lumos stupefy brackium alohomora wingardium bombarda respiratio patronus appiration

replaceitem entity @s[scores={spellSelectTimer=43..},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:21}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:21,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=42},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:22}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:22,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=41},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:23}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:23,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=40},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:24}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:24,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=39},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:25}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:25,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=38},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:26}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:26,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=37},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:27}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:27,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=36},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:28}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:28,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={spellSelectTimer=..35},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:29}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:29,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}

replaceitem entity @s hotbar.0 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.1 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.2 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.3 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.5 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.6 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.7 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}
replaceitem entity @s hotbar.8 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63}

#######################################
# Spell unlocked and selected
#######################################
# Lumos
execute as @s[scores={selectedSpell=1,unlockedSpell=1..}] run data merge entity @e[scores={spellDisplay=0},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Stupefy
execute as @s[scores={selectedSpell=2,unlockedSpell=2..}] run data merge entity @e[scores={spellDisplay=1},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Brackium
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=0..8}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=9..16}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=17..24}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=25..32}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=33..40}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=41..48}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=49..56}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=57..64}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=65..72}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=73..80}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=81..88}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=89..96}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=97..104}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=105..112}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=113..120}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=121..128}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=129..136}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=137..144}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=145..152}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=153..160}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=161..168}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=169..176}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=177..184}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=185..192}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=193..200}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=201..208}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=209..216}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=217..224}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=225..232}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=233..240}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=241..248}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=249..256}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=257..264}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=265..272}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=273..280}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=281..288}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=289..296}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=299..304}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=305..312}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=313..320}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..,spellCooldown2=321..328}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Alohomora
execute as @s[scores={selectedSpell=4,unlockedSpell=4..}] run data merge entity @e[scores={spellDisplay=3},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Wingardium
execute as @s[scores={selectedSpell=5,unlockedSpell=5..}] run data merge entity @e[scores={spellDisplay=4},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Bombarda
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=0..3}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=4..7}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=8..11}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=12..15}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=16..19}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=20..23}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=24..27}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=28..31}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=32..35}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=36..39}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=40..43}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=44..47}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=48..51}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=52..55}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=56..59}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=60..63}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=64..67}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=68..71}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=72..75}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=76..79}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=80..83}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=84..87}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=88..91}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=92..95}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=96..99}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=100..103}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=104..107}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=108..111}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=112..115}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=116..119}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=120..123}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=124..127}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=128..131}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=132..135}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=136..139}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=140..143}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=144..147}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=148..151}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=152..155}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=156..159}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..,spellCooldown1=160..163}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\" \",\"color\":\"white\"}]"}

# Vera Verto
execute as @s[scores={selectedSpell=7,unlockedSpell=7..}] run data merge entity @e[scores={spellDisplay=6},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Patronus
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=0..9}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=10..19}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=20..29}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=30..39}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=40..49}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=50..59}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=60..69}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=70..79}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=80..89}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=90..99}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=100..109}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=110..119}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=120..129}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=130..139}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=140..149}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=150..159}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=160..169}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=170..179}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=180..189}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=190..199}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=200..209}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=210..219}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=220..229}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=230..239}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=240..249}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=250..259}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=260..269}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=270..279}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=280..289}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=290..299}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=300..309}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=310..319}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=320..329}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=330..339}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=340..349}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=350..359}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=360..369}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=370..379}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=380..389}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=390..399}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..,spellCooldown3=400..409}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}

# Apparition
execute as @s[scores={selectedSpell=9,unlockedSpell=9..}] run data merge entity @e[scores={spellDisplay=8},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}



###############################################
# Spell unlocked and not selected
###############################################
# Lumos
execute as @s[scores={unlockedSpell=1..}] unless entity @s[scores={selectedSpell=1}] run data merge entity @e[scores={spellDisplay=0},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}


# Stupefy
execute as @s[scores={unlockedSpell=2..}] unless entity @s[scores={selectedSpell=2}] run data merge entity @e[scores={spellDisplay=1},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}


# Brackium
execute as @s[scores={unlockedSpell=3..,spellCooldown2=0..8}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=9..16}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=23..24}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=25..32}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=33..40}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=41..48}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=49..56}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=57..64}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=65..72}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=73..80}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=81..88}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=89..96}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=97..104}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=105..112}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=113..120}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=121..128}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=129..136}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=137..144}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=145..152}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=153..160}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=161..168}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=169..176}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=177..184}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=185..192}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=193..200}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=201..208}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=209..216}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=217..224}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=225..232}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=233..240}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=241..248}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=249..256}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=257..264}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=265..272}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=273..280}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=281..288}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=289..296}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=297..304}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=305..312}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=313..320}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=3..,spellCooldown2=321..328}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Alohomora
execute as @s[scores={unlockedSpell=4..}] unless entity @s[scores={selectedSpell=4}] run data merge entity @e[scores={spellDisplay=3},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Wingardium
execute as @s[scores={unlockedSpell=4..}] unless entity @s[scores={selectedSpell=5}] run data merge entity @e[scores={spellDisplay=4},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Bombarda
execute as @s[scores={unlockedSpell=6..,spellCooldown1=0..3}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=4..7}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=8..11}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=12..15}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=16..19}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=20..23}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=24..27}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=28..31}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=32..35}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=36..39}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=40..43}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=44..47}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=48..51}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=52..55}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=56..59}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=60..63}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=64..67}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=68..71}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=72..75}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=76..79}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=80..83}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=84..87}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=88..91}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=92..95}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=96..99}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=100..103}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=104..117}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=108..111}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=112..115}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=116..119}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=120..123}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=124..127}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=128..131}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=132..135}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=136..139}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=140..143}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=144..147}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=148..151}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=152..155}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=156..159}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=6..,spellCooldown1=160..163}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Vera Verto
execute as @s[scores={unlockedSpell=7..}] unless entity @s[scores={selectedSpell=7}] run data merge entity @e[scores={spellDisplay=6},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Patronus
execute as @s[scores={unlockedSpell=8..,spellCooldown3=0..9}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=10..19}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=20..29}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=30..39}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=40..49}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=50..59}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=60..69}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=70..79}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=80..89}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=90..99}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=100..109}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=110..119}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=120..129}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=130..139}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=140..149}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=150..159}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=160..169}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=170..179}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=180..189}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=190..199}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=200..209}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=210..219}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=220..229}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=230..239}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=240..249}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=250..259}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=260..269}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=270..279}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=280..289}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=290..299}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=300..309}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=310..319}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=320..329}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=330..339}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=340..349}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=350..359}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=360..369}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=370..379}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=380..389}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=390..399}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=8..,spellCooldown3=400..409}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}

# Appiration
execute as @s[scores={unlockedSpell=9..}] unless entity @s[scores={selectedSpell=9}] run data merge entity @e[scores={spellDisplay=8},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}



# Spell locked and selected
execute as @s[scores={selectedSpell=1,unlockedSpell=0}] run data merge entity @e[scores={spellDisplay=0},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=2,unlockedSpell=..1}] run data merge entity @e[scores={spellDisplay=1},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=3,unlockedSpell=..2}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=4,unlockedSpell=..3}] run data merge entity @e[scores={spellDisplay=3},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=5,unlockedSpell=..4}] run data merge entity @e[scores={spellDisplay=4},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=6,unlockedSpell=..5}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=7,unlockedSpell=..6}] run data merge entity @e[scores={spellDisplay=6},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=8,unlockedSpell=..7}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}
execute as @s[scores={selectedSpell=9,unlockedSpell=..8}] run data merge entity @e[scores={spellDisplay=8},limit=1] {CustomName:"[\"\",{\"text\":\"\",\"color\":\"white\"}]"}



# Spell locked and not selected
execute as @s[scores={unlockedSpell=0}] unless entity @s[scores={selectedSpell=1}] run data merge entity @e[scores={spellDisplay=0},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..1}] unless entity @s[scores={selectedSpell=2}] run data merge entity @e[scores={spellDisplay=1},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..2}] unless entity @s[scores={selectedSpell=3}] run data merge entity @e[scores={spellDisplay=2},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..3}] unless entity @s[scores={selectedSpell=4}] run data merge entity @e[scores={spellDisplay=3},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..4}] unless entity @s[scores={selectedSpell=5}] run data merge entity @e[scores={spellDisplay=4},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..5}] unless entity @s[scores={selectedSpell=6}] run data merge entity @e[scores={spellDisplay=5},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..6}] unless entity @s[scores={selectedSpell=7}] run data merge entity @e[scores={spellDisplay=6},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..7}] unless entity @s[scores={selectedSpell=8}] run data merge entity @e[scores={spellDisplay=7},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}
execute as @s[scores={unlockedSpell=..8}] unless entity @s[scores={selectedSpell=9}] run data merge entity @e[scores={spellDisplay=8},limit=1] {CustomName:"[\"\",{\"text\":\"ˈˈˈˈ\",\"color\":\"white\"}]"}


# Spell info unlocked
execute as @s[scores={selectedSpell=1,unlockedSpell=1..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:121,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=2,unlockedSpell=2..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:120,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=3,unlockedSpell=3..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:119,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=4,unlockedSpell=4..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:118,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=5,unlockedSpell=5..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:117,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=6,unlockedSpell=6..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:116,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=7,unlockedSpell=7..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:115,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=8,unlockedSpell=8..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:114,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=9,unlockedSpell=9..}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:113,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}

# Spell info locked
execute as @s[scores={selectedSpell=1,unlockedSpell=0}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=2,unlockedSpell=..1}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=3,unlockedSpell=..2}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=4,unlockedSpell=..3}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=5,unlockedSpell=..4}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=6,unlockedSpell=..5}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=7,unlockedSpell=..6}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=8,unlockedSpell=..7}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={selectedSpell=9,unlockedSpell=..8}] run replaceitem entity @s hotbar.4 minecraft:iron_shovel{Unbreakable:1b,Damage:112,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}


# title
title @s times 0 0 0
title @s title ""
title @s actionbar ["",{"selector":"@e[scores={spellDisplay=0},limit=1]"},{"selector":"@e[scores={spellDisplay=1},limit=1]"},{"selector":"@e[scores={spellDisplay=2},limit=1]"},{"selector":"@e[scores={spellDisplay=3},limit=1]"},{"selector":"@e[scores={spellDisplay=4},limit=1]"},{"selector":"@e[scores={spellDisplay=5},limit=1]"},{"selector":"@e[scores={spellDisplay=6},limit=1]"},{"selector":"@e[scores={spellDisplay=7},limit=1]"},{"selector":"@e[scores={spellDisplay=8},limit=1]"}]

# Clear cinematic bars
tag @s remove letterbox