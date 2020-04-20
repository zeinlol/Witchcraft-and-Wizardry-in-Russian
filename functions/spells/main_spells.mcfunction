# Increment spell by one if player presses 'Q'
# When spell selection is not open
execute as @s[tag=hasPressedQ,tag=!isSneaking,scores={selectedSlot=1,hotbar_stage=8..},tag=!inCutScene,tag=!inBrewer,tag=!inPensive,tag=!inLumos,tag=!inAppiration,tag=!inConversation,tag=!inInventory,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inWingardium,tag=!stunnedByMandrake,tag=!earmuffs,tag=!invisCape,tag=!flyingBroom,tag=!inMap,tag=!isFastTravelling,tag=!inCutscene] run function hp:spells/open_spell_selection
execute as @s[tag=hasPressedQ,tag=isSneaking,scores={selectedSlot=1,hotbar_stage=8..},tag=!inCutScene,tag=!inBrewer,tag=!inPensive,tag=!inLumos,tag=!inAppiration,tag=!inConversation,tag=!inInventory,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inWingardium,tag=!stunnedByMandrake,tag=!earmuffs,tag=!invisCape,tag=!flyingBroom,tag=!inMap,tag=!isFastTravelling,tag=!inCutscene] run function hp:spells/change_current_spell_fast

# When spell selection is open
execute as @s[tag=hasPressedQ,tag=showSpellSelection,tag=!isSneaking] run function hp:spells/change_selected_spell

# Determine whether the spell selection should be shown
tag @s[tag=!showSpellSelection,scores={spellSelectTimer=1..}] add showSpellSelection

# Show spell selection to appropriate players
execute as @s[tag=showSpellSelection] run function hp:spells/show_spell_selection

# Decay Show Spell Select timer
scoreboard players remove @s[scores={spellSelectTimer=1..}] spellSelectTimer 1

# Decay spell cooldowns
scoreboard players remove @s[scores={spellCooldown1=1..}] spellCooldown1 1
scoreboard players remove @s[scores={spellCooldown2=1..}] spellCooldown2 1
scoreboard players remove @s[scores={spellCooldown3=1..}] spellCooldown3 1

#######################################################################################
# Lumos
#######################################################################################
execute unless score @s lumosDelay matches 20.. run scoreboard players add @s lumosDelay 1
execute as @s[scores={currentSpell=1,selectedSlot=1,lumosDelay=20},tag=!inWingardium,tag=hasDoubleRightClicked] run function hp:spells/spell/lumos
execute as @s[tag=inLumos] run function hp:spells/spell/in_lumos

#######################################################################################
# Stupefy
#######################################################################################
execute as @s[scores={currentSpell=2,selectedSlot=1,manaAmount=1000..},tag=!inWingardium,tag=hasDoubleRightClicked] run function hp:spells/spell/stupefy

#######################################################################################
# Brackium Emendo
#######################################################################################
execute as @s[scores={currentSpell=3,spellCooldown2=0,selectedSlot=1,manaAmount=2000..},tag=!inWingardium,tag=hasDoubleRightClicked] at @s run function hp:spells/spell/brackium

#######################################################################################
# Alohomora
#######################################################################################
execute as @s[scores={currentSpell=4,selectedSlot=1},tag=!inWingardium,tag=hasDoubleRightClicked] run function hp:spells/spell/alohomora

#######################################################################################
# Wingardium
#######################################################################################
execute as @s[scores={currentSpell=5,selectedSlot=1,animState=0},tag=!inWingardium,tag=hasDoubleRightClicked] run function hp:spells/spell/wingardium
execute as @s[tag=inWingardium] run function hp:spells/spell/in_wingardium

#######################################################################################
# bombarda
#######################################################################################
execute as @s[scores={currentSpell=6,spellCooldown1=0,selectedSlot=1,manaAmount=3000..},tag=!inWingardium,tag=hasDoubleRightClicked] run function hp:spells/spell/bombarda

#######################################################################################
# Vera Verto
#######################################################################################
execute as @s[scores={currentSpell=7,selectedSlot=1},tag=!inWingardium,tag=hasDoubleRightClicked,tag=!anim_playingAlohomora] at @s run function hp:spells/spell/vera_verto

#######################################################################################
# Expecto Patronum
#######################################################################################
execute as @s[scores={currentSpell=8,selectedSlot=1,manaAmount=5000..,spellCooldown3=0},tag=!inWingardium,tag=hasDoubleRightClicked] at @s run function hp:spells/spell/patronum
execute as @s[tag=inPatronus] run function hp:spells/spell/in_patronus

#######################################################################################
# Appiration
#######################################################################################
execute as @s[scores={currentSpell=9,selectedSlot=1,animState=0},tag=!inAppiration,tag=!inWingardium,tag=hasDoubleRightClicked] at @s run function hp:spells/spell/appiration
execute as @s[tag=inAppiration,scores={playerID=1}] run function hp:spells/spell/apparition/player_1/in_appiration
execute as @s[tag=inAppiration,scores={playerID=2}] run function hp:spells/spell/apparition/player_2/in_appiration
execute as @s[tag=inAppiration,scores={playerID=3}] run function hp:spells/spell/apparition/player_3/in_appiration
execute as @s[tag=inAppiration,scores={playerID=4}] run function hp:spells/spell/apparition/player_4/in_appiration