execute as @s[tag=inConversation,tag=!isFastTravelling,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint] run function hp:draw_hotbar/draw_conversation

# Spells
execute as @s[tag=showSpellSelection] run function hp:draw_hotbar/draw_spell_selection
execute as @s[tag=inWingardium] run function hp:draw_hotbar/draw_wingardium
execute as @s[tag=inAppiration] run function hp:draw_hotbar/draw_appiration
execute as @s[tag=inLumos,tag=!inInventory,tag=!inBrewer,tag=!inPensive,tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint] run function hp:draw_hotbar/draw_lumos

# Tools
execute as @s[tag=inSettings] run function hp:draw_hotbar/draw_settings
execute as @s[tag=isFastTravelling] run function hp:draw_hotbar/draw_fast_travel
execute as @s[tag=inInventory] run function hp:draw_hotbar/draw_inventory
execute as @s[tag=inMap,tag=!softExitMap] run function hp:draw_hotbar/draw_map
execute as @s[tag=inConversation,tag=inMap] run function hp:draw_hotbar/draw_marauders_map
execute as @s[tag=inQuestBook] run function hp:draw_hotbar/draw_questbook

# Items
execute as @s[tag=flyingBroom] run function hp:draw_hotbar/draw_broom
execute as @s[tag=invisCape] run function hp:draw_hotbar/draw_invisibility_cape
execute as @s[tag=omnioculars] run function hp:draw_hotbar/draw_omnioculars
execute as @s[tag=earmuffs] run function hp:draw_hotbar/draw_earmuffs
execute as @s[tag=inBrewer] run function hp:draw_hotbar/draw_brewer
execute as @s[tag=inPensive] run function hp:draw_hotbar/draw_pensive

# Misc
execute as @s[tag=inLetter] run function hp:draw_hotbar/draw_hogwarts_letter

# Cutscenes
execute as @s[tag=inProperCutScene] run function hp:draw_hotbar/draw_cut_scene
execute as @s[tag=inResetPoint] run function hp:draw_hotbar/draw_reset_point