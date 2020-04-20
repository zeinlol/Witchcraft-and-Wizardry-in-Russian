# Show Selection for 1 second (hasChangedSlot is handled in show_spell_selection.mcfunction)
scoreboard players set @s[tag=!hasChangedSlot,tag=!showSpellSelection] spellSelectTimer 43
scoreboard players set @s[tag=!hasChangedSlot,tag=showSpellSelection,scores={spellSelectTimer=..19}] spellSelectTimer 35