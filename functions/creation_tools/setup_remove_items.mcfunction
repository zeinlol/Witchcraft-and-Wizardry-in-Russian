tag @s add editRemoveItems
execute if entity @e[tag=hover,limit=1,tag=NPCStore] run function hp:creation_tools/edit_npc_store
execute if entity @e[tag=hover,limit=1,tag=chest] run function hp:inventory/open_chest
tag @s remove initRemoveItems