# Reset old input
tag @s remove hasPressedQ
tag @s remove hasPressedF
tag @s remove hasChangedSlot
tag @s remove hasChangedSlotUp
tag @s remove hasChangedSlotDown
tag @s remove hasRightClicked
tag @s remove hasDoubleRightClicked

# Detect Q
execute as @s[scores={pressQ=1..},tag=takeOverInventory] run tag @s add hasPressedQ
execute as @s[tag=hasPressedQ] run scoreboard players set @s pressQ 0
# hide the animation when you get a new item in your hand by overwriting this item instead
execute as @s[tag=hasPressedQ] run replaceitem entity @s weapon.mainhand minecraft:golden_hoe{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:32,Unbreakable:1b,qDetect:1b}

# Detect F
scoreboard players remove @s[scores={pressFDelay=1..}] pressFDelay 1
execute as @s[tag=takeOverInventory,tag=!altFDetection,tag=!isFastTravelling] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{fDetect:1b}}]}] run tag @s add hasPressedF
execute as @s[tag=takeOverInventory,tag=altFDetection,tag=!isFastTravelling] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{altFDetect:1b}}]}] run tag @s add hasPressedF
execute as @s[scores={pressFDelay=0},tag=hasPressedF] run scoreboard players set @s pressFDelay 5
execute as @s[tag=hasPressedF] run scoreboard players set @s idle 0

# Increase idle score
scoreboard players add @s idle 1

# Right Click
execute as @s[scores={rightClick=1..}] run tag @s add hasRightClicked
# Double Right Click
execute as @s[scores={rightClick=1..,rightClickWait=1..}] run tag @s add hasDoubleRightClicked
execute as @s[scores={rightClick=1..}] unless score @s rightClickWait matches 1.. run scoreboard players set @s rightClickWait 10
execute as @s[scores={rightClick=1..}] run scoreboard players set @s rightClick 0
execute as @s[scores={rightClickWait=1..}] run scoreboard players remove @s rightClickWait 1

# Detect Hotbar Slot
execute store result score @s selectedSlot run data get entity @s SelectedItemSlot
scoreboard players add @s selectedSlot 1
execute as @s unless score @s selectedSlot = @s iniSelectSlot run tag @s add hasChangedSlot



execute as @s[tag=hasChangedSlot,tag=!invisCape,tag=!omnioculars,tag=!earmuffs,tag=!isFastTravelling,tag=!flyingBroom,tag=!inInventory,tag=!inConversation,tag=!inMap,tag=!inQuestBook,tag=!inLetter,tag=!inBrewer,tag=!inPensive,tag=!inLumos,tag=!inAppiration,tag=!inProperCutScene,tag=!inResetPoint] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s unless entity @s[scores={selectedSlot=8..9,iniSelectSlot=1..2}] if score @s selectedSlot > @s iniSelectSlot run tag @s add hasChangedSlotDown
execute as @s unless entity @s[scores={selectedSlot=1..2,iniSelectSlot=8..9}] if score @s selectedSlot < @s iniSelectSlot run tag @s add hasChangedSlotUp
execute as @s[scores={selectedSlot=1..2,iniSelectSlot=8..9}] run tag @s add hasChangedSlotDown
execute as @s[scores={selectedSlot=8..9,iniSelectSlot=1..2}] run tag @s add hasChangedSlotUp
# On slot changed
# Set new initial slot
scoreboard players operation @s iniSelectSlot = @s selectedSlot


# Sneak
tag @s[tag=isSneaking] remove isSneaking
tag @s[scores={sneak=1..}] add isSneaking
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players add @s[tag=isSneaking] shiftTest 1
scoreboard players set @s[tag=!isSneaking] shiftTest 0


# Player movement
execute store result score @s movX run data get entity @s Pos[0] 100
execute store result score @s movY run data get entity @s Pos[1] 100
execute store result score @s movZ run data get entity @s Pos[2] 100
scoreboard players operation @s movX -= @s movXlastFrame
scoreboard players operation @s movY -= @s movYlastFrame
scoreboard players operation @s movZ -= @s movZlastFrame
execute store result score @s movXlastFrame run data get entity @s Pos[0] 100
execute store result score @s movYlastFrame run data get entity @s Pos[1] 100
execute store result score @s movZlastFrame run data get entity @s Pos[2] 100

# Clean up
tag @s remove preventDoubleExecution
