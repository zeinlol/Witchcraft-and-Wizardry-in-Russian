# Edit tool

execute as @s[tag=p,tag=!showPathPoints] run tag @s remove n
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove editNPC
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove play
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove takeOverInventory
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove g
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove editGameplay
execute as @s[tag=p,tag=!showPathPoints] run clear @s
execute as @s[tag=p,tag=!showPathPoints] run tag @s remove gameLeader
execute as @s[tag=p,tag=!showPathPoints] run tag @s add showPathPoints

execute as @s[tag=n,tag=!editNPC] run tag @s remove p
execute as @s[tag=n,tag=!editNPC] run tag @s remove showPathPoints
execute as @s[tag=n,tag=!editNPC] run tag @s remove play
execute as @s[tag=n,tag=!editNPC] run tag @s remove takeOverInventory
execute as @s[tag=n,tag=!editNPC] run tag @s remove g
execute as @s[tag=n,tag=!editNPC] run tag @s remove editGameplay
execute as @s[tag=n,tag=!editNPC] run clear @s
execute as @s[tag=n,tag=!editNPC] run tag @s remove gameLeader
execute as @s[tag=n,tag=!editNPC] run tag @s add editNPC

execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove n
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove editNPC
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove p
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove showPathPoints
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove takeOverInventory
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove g
execute as @s[tag=play,tag=!takeOverInventory] run tag @s remove editGameplay
execute as @s[tag=play,tag=!takeOverInventory] run clear @s
execute as @s[tag=play,tag=!takeOverInventory] run execute as @e[tag=creaturePoint] run tag @s remove interactable
execute as @s[tag=play,tag=!takeOverInventory] run execute as @e[tag=creaturePoint] run data merge entity @s {Invisible:1b,Marker:1b}
execute as @s[tag=play,tag=!takeOverInventory] run function hp:misc/update_bossbars
execute as @s[tag=play,tag=!takeOverInventory] run scoreboard players set @s relogTimer 20
execute as @s[tag=play,tag=!takeOverInventory] as @s[scores={playerID=1}] run function hp:health/health_changed_player1
execute as @s[tag=play,tag=!takeOverInventory] as @s[scores={playerID=2}] run function hp:health/health_changed_player2
execute as @s[tag=play,tag=!takeOverInventory] as @s[scores={playerID=3}] run function hp:health/health_changed_player3
execute as @s[tag=play,tag=!takeOverInventory] as @s[scores={playerID=4}] run function hp:health/health_changed_player4
execute as @s[tag=play,tag=!takeOverInventory] run tag @s add takeOverInventory

execute as @s[tag=e] run tag @s remove n
execute as @s[tag=e] run tag @s remove editNPC
execute as @s[tag=e] run tag @s remove play
execute as @s[tag=e] run tag @s remove takeOverInventory
execute as @s[tag=e] run tag @s remove p
execute as @s[tag=e] run tag @s remove showPathPoints
execute as @s[tag=e] run tag @s remove g
execute as @s[tag=e] run tag @s remove editGameplay
execute as @s[tag=e] run clear @s
execute as @s[tag=e] run function hp:misc/update_bossbars
execute as @s[tag=e] run tag @s remove gameLeader
execute as @s[tag=e] run tag @s remove e

execute as @s[tag=g,tag=!editGameplay] run tag @s remove p
execute as @s[tag=g,tag=!editGameplay] run tag @s remove showPathPoints
execute as @s[tag=g,tag=!editGameplay] run tag @s remove play
execute as @s[tag=g,tag=!editGameplay] run tag @s remove takeOverInventory
execute as @s[tag=g,tag=!editGameplay] run tag @s remove n
execute as @s[tag=g,tag=!editGameplay] run tag @s remove editNPC
execute as @s[tag=g,tag=!editGameplay] run clear @s
execute as @s[tag=g,tag=!editGameplay] run execute as @e[tag=creaturePoint] run tag @s add interactable
execute as @s[tag=g,tag=!editGameplay] run execute as @e[tag=creaturePoint] run data merge entity @s {Invisible:0b,Marker:0b}
execute as @s[tag=g,tag=!editGameplay] run scoreboard players set @s editStick -10
execute as @s[tag=e,tag=!editGameplay] run tag @s remove gameLeader
execute as @s[tag=g,tag=!editGameplay] run tag @s add editGameplay

execute as @s[tag=showPathPoints] run function hp:npc/edit_path_inventory

execute as @s[tag=reloadPathPointsDisplay] run tag @s add showPathPoints
execute as @s[tag=reloadPathPointsDisplay] run tag @s remove reloadPathPointsDisplay

execute as @s[tag=editNPC] run function hp:npc/edit_npc
execute as @s[tag=editGameplay] run function hp:creation_tools/edit_gameplay

# add or remove items from chests
execute as @s[tag=initAddItems] run function hp:creation_tools/setup_add_items
execute as @s[tag=initAddItems] run tag @s remove initAddItems
execute as @s[tag=initRemoveItems] run function hp:creation_tools/setup_remove_items
execute as @s[tag=initRemoveItems] run tag @s remove initRemoveItems
execute as @s[tag=initEditNPCStore] run function hp:creation_tools/setup_edit_npc_store
execute as @s[tag=initEditNPCStore] run tag @s remove initEditNPCStore
execute as @s[tag=initMakeConvNPC] as @e[tag=hover,limit=1,tag=npc,tag=!convNPC] run function hp:npc/make_conv_npc
execute as @s[tag=initMakeConvNPC] run tag @s remove initMakeConvNPC
execute as @s[tag=initGiveNPCUncommonHead] as @e[tag=hover,limit=1,tag=npc] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{Unbreakable:1b,Damage:131,npcHead:100}}]}
execute as @s[tag=initGiveNPCUncommonHead] as @e[tag=hover,limit=1,tag=npc] run scoreboard players set @s npcHead 100
execute as @s[tag=initGiveNPCUncommonHead] as @e[tag=hover,limit=1,tag=npc] run tag @s add uncommonHead
execute as @s[tag=initGiveNPCUncommonHead] as @e[tag=hover,limit=1,tag=npc] run function hp:npc/update_npc_head_neutral
execute as @s[tag=initGiveNPCUncommonHead] run tag @s remove initGiveNPCUncommonHead