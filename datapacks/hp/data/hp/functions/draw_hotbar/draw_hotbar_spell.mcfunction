# Lumos
replaceitem entity @s[scores={currentSpell=..1}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:250,Unbreakable:1b,qDetect:1b}

# Stupefy
replaceitem entity @s[scores={currentSpell=2}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:249,Unbreakable:1b,qDetect:1b}

# Brackium Emmendo
replaceitem entity @s[scores={currentSpell=3,spellCooldown2=0..8}] hotbar.6 minecraft:iron_shovel{Unbreakable:1b,Damage:204,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={currentSpell=3,spellCooldown2=9..}] run function hp:draw_hotbar/draw_hotbar_spell_brackium

# Alohomora
replaceitem entity @s[scores={currentSpell=4}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:248,Unbreakable:1b,qDetect:1b}

# Wingardium Leviosa
replaceitem entity @s[scores={currentSpell=5}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:247,Unbreakable:1b,qDetect:1b}

# Bombarda
replaceitem entity @s[scores={currentSpell=6,spellCooldown1=0..3}] hotbar.6 minecraft:iron_shovel{Unbreakable:1b,Damage:163,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={currentSpell=6,spellCooldown1=4..}] run function hp:draw_hotbar/draw_hotbar_spell_bombarda

# Vera Verto
replaceitem entity @s[scores={currentSpell=7}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:246,Unbreakable:1b,qDetect:1b}

# Patronus
replaceitem entity @s[scores={currentSpell=8,spellCooldown3=0..9}] hotbar.6 minecraft:iron_shovel{Unbreakable:1b,Damage:122,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[scores={currentSpell=8,spellCooldown3=4..}] run function hp:draw_hotbar/draw_hotbar_spell_patronus

# Apparate
replaceitem entity @s[tag=unlockedSpells,scores={currentSpell=9}] hotbar.6 minecraft:iron_shovel{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:245,Unbreakable:1b,qDetect:1b}