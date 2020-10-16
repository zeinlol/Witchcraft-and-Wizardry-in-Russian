# Clear Hotbar
# Wand animation
function hp:animation/main_animation
# replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.6 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.7 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}
# replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Волшебная Палочка\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b}

execute as @s[tag=inLumosTransitionArea,tag=offhandCanBeReplaced] run function hp:spells/spell/lumos_screenfade


