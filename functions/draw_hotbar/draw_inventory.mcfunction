# Draw spell selection menu



# Hidden
execute as @s[scores={InvSelectItemID=-1},tag=!moveToQuickSlot] run function hp:draw_hotbar/draw_inventory_item/hidden

# This is split into seperate functions for performance
execute as @s[scores={InvSelectItemID=1..75}] run function hp:draw_hotbar/draw_inventory_item/split1
execute as @s[scores={InvSelectItemID=76..158}] run function hp:draw_hotbar/draw_inventory_item/split2

# Tutorial
execute as @s[scores={InvSelectItemID=1..},tag=!moveToQuickSlot,tag=invTutorial] run function hp:draw_hotbar/draw_inventory_item/tutorial

# Enter animation
replaceitem entity @s[scores={animTest=0},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:27}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:27,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=1},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:26}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:25,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=2},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:25}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:23,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=3},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:24}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:21,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=4},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:23}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:19,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=5},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:21}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:17,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=6},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:19}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:15,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=7},tag=!inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:17}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:13,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}

replaceitem entity @s[scores={animTest=0},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:27}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:27,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=1},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:26}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:25,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=2},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:25}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:23,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=3},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:24}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:21,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=4},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:23}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:19,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}
replaceitem entity @s[scores={animTest=5..},tag=inConversation,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:golden_pickaxe",tag:{Damage:21}}]}] weapon.offhand minecraft:golden_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:17,Unbreakable:1b,qDetect:1b,fDetect:1b,HideFlags:63}


# Place in quickslot
replaceitem entity @s[tag=moveToQuickSlot] hotbar.0 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot] hotbar.1 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot,scores={quickSlot=1}] hotbar.2 minecraft:iron_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:248,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot,scores={quickSlot=2}] hotbar.2 minecraft:iron_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:247,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot] hotbar.5 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot] hotbar.6 minecraft:iron_pickaxe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:249,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot] hotbar.7 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
replaceitem entity @s[tag=moveToQuickSlot] hotbar.8 minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}]}
execute as @s[tag=moveToQuickSlot] run function hp:draw_hotbar/draw_quickslots

tag @s[scores={animTest=6}] remove letterbox