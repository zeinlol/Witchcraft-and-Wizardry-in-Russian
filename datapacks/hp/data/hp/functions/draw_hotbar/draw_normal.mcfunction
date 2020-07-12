# Draw spell selection menu

tag @s add drawingNormalHotbar

# Detect wand selection
execute as @s[tag=hasChangedSlot,scores={selectedSlot=1}] run tag @s add anim_enter
execute as @s[tag=hasChangedSlot,scores={selectedSlot=2..}] run function hp:animation/clear_all_animations
execute as @s[tag=hasChangedSlot,scores={selectedSlot=1}] run scoreboard players set @s animTest 2

# Wand animation
execute as @s[tag=hasUnlockedWand,tag=!playerIsInvisible] run function hp:animation/main_animation
execute as @s[tag=!hasUnlockedWand] run replaceitem entity @s hotbar.0 minecraft:golden_hoe{Unbreakable:1b,Damage:32,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
execute as @s[tag=playerIsInvisible] run replaceitem entity @s hotbar.0 minecraft:golden_hoe{Unbreakable:1b,Damage:32,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}
replaceitem entity @s[scores={selectedSlot=2..9}] hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-99999,Operation:0,UUIDLeast:277390,UUIDMost:248617}],Unbreakable:1b,display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b,Damage:249}

function hp:draw_hotbar/draw_quickslots

# The 9 first stages are in their own function, so it'll be more performant when you reach the final hotbar stage
replaceitem entity @s[scores={hotbar_stage=10},tag=!showMana] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:59,Unbreakable:1b,qDetect:1b}
execute as @s[scores={hotbar_stage=10..},tag=showingMana] run function hp:draw_hotbar/draw_hotbar_mana
execute as @s[scores={hotbar_stage=..9}] run function hp:draw_hotbar/draw_hotbar_stages

# Spell on hotbars
execute as @s[tag=unlockedSpells] run function hp:draw_hotbar/draw_hotbar_spell
replaceitem entity @s[tag=!unlockedSpells] hotbar.6 minecraft:golden_hoe{Unbreakable:1b,Damage:32,display:{Name:"{\"text\":\" \",\"color\":\"yellow\",\"bold\":false}"},qDetect:1b,HideFlags:63}

# Input F
scoreboard players set @s tmp 0
execute if entity @e[tag=hover,tag=convNPC] store success score @s tmp run replaceitem entity @s hotbar.7 minecraft:golden_hoe{Damage:30,Unbreakable:1b,display:{Name:"{\"text\":\"Настройки\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b} 1
execute if entity @e[tag=hover,tag=!convNPC,tag=!noInteraction,tag=!largeChest,tag=!smallChest] store success score @s tmp run replaceitem entity @s hotbar.7 minecraft:golden_hoe{Damage:29,Unbreakable:1b,display:{Name:"{\"text\":\"Настройки\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b} 1
execute if entity @e[tag=hover,tag=chest,tag=!isDroppedItem] store success score @s tmp run replaceitem entity @s hotbar.7 minecraft:golden_hoe{Damage:27,Unbreakable:1b,display:{Name:"{\"text\":\"Настройки\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b} 1
replaceitem entity @s[scores={tmp=0}] hotbar.7 minecraft:golden_hoe{Damage:31,Unbreakable:1b,display:{Name:"{\"text\":\"Настройки\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,qDetect:1b} 1

# Input Q
scoreboard players set @s tmp 0
execute as @s[scores={selectedSlot=1,hotbar_stage=7..}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:21,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
execute as @s[scores={selectedSlot=2,hotbar_stage=9..}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:24,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
execute as @s[scores={selectedSlot=3,hotbar_stage=5..}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:23,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1

# Set what the Q input indicator thing should show (consume, use, nothing)
execute as @s[scores={selectedSlot=4,quickSlot1ID=3..17}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:20,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
execute as @s[scores={selectedSlot=4,quickSlot1ID=34..200}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:19,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1

execute as @s[scores={selectedSlot=5,quickSlot2ID=3..17}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:20,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
execute as @s[scores={selectedSlot=5,quickSlot2ID=34..200}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:19,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1

execute as @s[scores={selectedSlot=6,hotbar_stage=3..}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:25,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
execute as @s[scores={selectedSlot=8}] store success score @s tmp run replaceitem entity @s[tag=!cutsceneOverrideActionbar] hotbar.8 minecraft:golden_hoe{Damage:22,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1
replaceitem entity @s[scores={tmp=0}] hotbar.8 minecraft:golden_hoe{Damage:26,Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},HideFlags:63,qDetect:1b} 1

# Lumos fade
execute as @s[tag=inLumosTransitionArea,tag=offhandCanBeReplaced] run function hp:spells/spell/lumos_screenfade
	
# Mandrake overlay
execute as @s[tag=!inLumosTransitionArea,tag=!stunnedByDarkSpirit,tag=stunnedByMandrake,tag=offhandCanBeReplaced] run replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:14}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},Damage:14,Unbreakable:1b,qDetect:1b,fDetect:1b}

# Dark Spirit fade
execute as @s[tag=!inLumosTransitionArea,tag=stunnedByDarkSpirit,tag=offhandCanBeReplaced] run function hp:creatures/dark_spirit/dark_spirit_screenfade

# Quest Animation
execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimQuestion,tag=!playingQuestAnimExit,tag=!playingQuestAnimEnter] run function hp:animation/quest_icon_exclamation
execute as @s[tag=playQuestIconAnimQuestion,tag=!playingQuestIconAnimExclamation,tag=!playingQuestAnimExit,tag=!playingQuestAnimEnter] run function hp:animation/quest_icon_question

execute as @s[tag=!showTrackedQuest,tag=showingTrackedQuest,tag=!playingQuestAnim] run function hp:animation/quest_anim_exit
execute as @s[tag=showTrackedQuest,tag=!showingTrackedQuest,tag=!playingQuestAnim] run function hp:animation/quest_anim_enter

execute as @s[tag=showingTrackedQuest,tag=playingQuestAnim] run function hp:animation/quest_anim_exit
execute as @s[tag=!showingTrackedQuest,tag=playingQuestAnim] run function hp:animation/quest_anim_enter

replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim] hotbar.1 minecraft:golden_hoe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=0},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:23,Unbreakable:1b,qDetect:1b,fDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=1},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:15}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:15,Unbreakable:1b,qDetect:1b,fDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=2},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:16}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:16,Unbreakable:1b,qDetect:1b,fDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:17}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:17,Unbreakable:1b,qDetect:1b,fDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=4},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:18}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:18,Unbreakable:1b,qDetect:1b,fDetect:1b}
replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!inLumosTransitionArea,tag=!inTravelPoint,tag=!stunnedByMandrake,tag=!stunnedByDarkSpirit,tag=!isDrowning,scores={damageOverlay=5},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:19}}]}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\" \",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:19,Unbreakable:1b,qDetect:1b,fDetect:1b}

# Quest Direction:
tag @s remove above
tag @s remove below
tag @s[scores={questRot2=40..}] add below
tag @s[scores={questRot2=..-40}] add above
execute as @s[tag=!questHasNoDirection,tag=showingTrackedQuest,tag=!playingQuestAnim,tag=!above,tag=!below] if score @s lastRegion = @s questRegion run function hp:draw_hotbar/draw_hotbar_quest_direction
execute as @s[tag=!questHasNoDirection,tag=showingTrackedQuest,tag=!playingQuestAnim,tag=above] if score @s lastRegion = @s questRegion run function hp:draw_hotbar/draw_hotbar_quest_direction_above
execute as @s[tag=!questHasNoDirection,tag=showingTrackedQuest,tag=!playingQuestAnim,tag=below] if score @s lastRegion = @s questRegion run function hp:draw_hotbar/draw_hotbar_quest_direction_below
execute as @s[tag=questHasNoDirection,tag=showingTrackedQuest,tag=!playingQuestAnim] if score @s lastRegion = @s questRegion run replaceitem entity @s hotbar.2 minecraft:stone_axe{display:{Name:"{\"text\":\"Журнал заданий\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:94,Unbreakable:1b,qDetect:1b}
execute as @s[tag=showingTrackedQuest,tag=!playingQuestAnim] unless score @s lastRegion = @s questRegion run replaceitem entity @s hotbar.2 minecraft:stone_axe{display:{Name:"{\"text\":\"Журнал заданий\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:95,Unbreakable:1b,qDetect:1b}

replaceitem entity @s[tag=!showingTrackedQuest,tag=!playingQuestAnim] hotbar.2 minecraft:golden_hoe{display:{Name:"{\"text\":\"Журнал заданий\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}

# Quest icon state
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=0},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:24}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:24,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=1},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:20}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:20,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=2},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:21}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:21,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:22}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:22,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=4},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:25}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:25,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questExclamation,tag=!playingQuestIconAnim,scores={damageOverlay=5},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:26}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:26,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
# replaceitem entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=questQuestion,tag=!playingQuestIconAnim,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:25}}]}] weapon.offhand minecraft:carrot_on_a_stick{Damage:25,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

# Clear cinematic bars
tag @s remove letterbox