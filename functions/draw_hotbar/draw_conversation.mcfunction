replaceitem entity @s hotbar.0 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.1 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.2 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.3 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[tag=!letterbox] hotbar.4 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[tag=letterbox] hotbar.4 minecraft:golden_axe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:8,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.5 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.6 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
tag @s[scores={idle=250..}] add showConversationControls
replaceitem entity @s[tag=showConversationControls] hotbar.7 minecraft:golden_hoe{Damage:28,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63} 1
replaceitem entity @s[tag=!showConversationControls] hotbar.7 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s hotbar.8 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{Damage:32,Unbreakable:1b,qDetect:1b,fDetect:1b}}]}] weapon.offhand minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b,fDetect:1b}

# Cinematic bars
tag @s add letterbox