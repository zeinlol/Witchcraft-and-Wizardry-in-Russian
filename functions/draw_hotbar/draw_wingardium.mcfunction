# Clear Hotbar
# Wand animation
function hp:animation/main_animation

replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:14}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:14,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}


# Cinematic bars
tag @s remove letterbox