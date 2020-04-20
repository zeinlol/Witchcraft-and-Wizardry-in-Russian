# Start timer that automatically opens gate after some time passes to prevent people getting stuck and frustrated
execute if score alohomoraStuckTimerIsGoing global matches 0 run scoreboard players set alohomoraStuckTimerIsGoing global 1


scoreboard players operation alohomoraChainTimer global += systick time

# Play ticking sound once every second
scoreboard players operation alohomoraChainTimerSeconds global += systick time
execute if score alohomoraChainTimerSeconds global matches 1000.. run playsound custom.gameplay_element.ticking master @a 6478 45 -12 30 1 1
execute if score alohomoraChainTimerSeconds global matches 1000.. run scoreboard players remove alohomoraChainTimerSeconds global 1000

# Detect if all chains have been pulled
execute if score alohomoraChain1 global matches 1 if score alohomoraChain2 global matches 1 if score alohomoraChain3 global matches 1 run scoreboard players set alohomoraChainTimer global -20000
execute if score alohomoraChainTimer global matches -20000 run playsound minecraft:custom.gameplay_element.ding master @a 6478 45 -12 30 1 1

# Success
execute if score alohomoraChainTimer global matches -20000 as @p[scores={trackedQuestID=17}] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=16}] run tag @s add cutsceneLeader
execute if score alohomoraChainTimer global matches -20000 as @a[scores={trackedQuestID=17}] run scoreboard players set @s cutSceneID 16
execute if score alohomoraChainTimer global matches -20000 as @a[scores={trackedQuestID=17}] run function hp:cutscenes/init_cutscene
execute if score alohomoraChainTimer global matches -20000 unless entity @p[tag=cutsceneLeader,scores={cutSceneID=16}] run tag @s add cutsceneLeader

execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraChainTimerIsGoing global 0
execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraChain1 global 0
execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraChain2 global 0
execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraChain3 global 0
execute if score alohomoraChainTimer global matches -20000 as 71967295-9b99-4d6c-819b-c21f418e3114 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraChainTimer global matches -20000 as 6395fce8-cb41-45d0-bd64-52e00c33034d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraChainTimer global matches -20000 as 1c9ad97b-afda-44ef-8a8d-207280cb97ad store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraStuckTimerIsGoing global 0
execute if score alohomoraChainTimer global matches -20000 run scoreboard players set alohomoraChainTimer global 0

# Failure (Timer ran out)
execute if score alohomoraChainTimer global matches 26500.. run playsound minecraft:custom.ui.error master @a 6478 45 -12 30 1 1
execute if score alohomoraChainTimer global matches 26500.. as 71967295-9b99-4d6c-819b-c21f418e3114 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score alohomoraChainTimer global matches 26500.. as 6395fce8-cb41-45d0-bd64-52e00c33034d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score alohomoraChainTimer global matches 26500.. as 1c9ad97b-afda-44ef-8a8d-207280cb97ad store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraChainTimerIsGoing global 0
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraChain1 global 0
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraChain2 global 0
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraChain3 global 0
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraTimerComplete global 0
execute if score alohomoraChainTimer global matches 26500.. run scoreboard players set alohomoraChainTimer global 0