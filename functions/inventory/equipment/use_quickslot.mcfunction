################
## Quickslots ##
################

# Quickslot 1
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=3}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=4}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=6}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=7}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=8}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=9}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=11}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=12}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=13}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=14}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=15}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=16}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=17}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=34,placeBroomTimer=0}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=34,placeBroomTimer=0}] run tag @s add summonBasicBroom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=34,placeBroomTimer=0}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=35,placeBroomTimer=0}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=35,placeBroomTimer=0}] run tag @s add summonNimbus2000
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=35,placeBroomTimer=0}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=36,placeBroomTimer=0}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=36,placeBroomTimer=0}] run tag @s add summonNimbus2001
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=36,placeBroomTimer=0}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=37,placeBroomTimer=0}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=37,placeBroomTimer=0}] run tag @s add summonFirebolt
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=37,placeBroomTimer=0}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=38}] run tag @s add invisCape
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=38}] at @s run playsound minecraft:custom.inventory.pickup.cloth master @a
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=110,cloudInABottle=0}] at @s run function hp:items/summon_weather_in_a_bottle
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=111,fireworks=0}] at @s run function hp:items/launch_fireworks
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=112}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=112}] run tag @s add omnioculars
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=113,dungbomb=0}] at @s run function hp:items/dungbomb

# Quickslot 2
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=3}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=4}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=6}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=7}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=8}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=9}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=11}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=12}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=13}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=14}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=15}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=16}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=17}] run function hp:inventory/equipment/consume_item
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=34}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=34}] run tag @s add summonBasicBroom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=34}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=35}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=35}] run tag @s add summonNimbus2000
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=35}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=36}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=36}] run tag @s add summonNimbus2001
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=36}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=37}] as @e[tag=broomVisual] if score @s broomID = @p[tag=activePlayer,limit=1] broomID at @s run function hp:items/pick_up_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=37}] run tag @s add summonFirebolt
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=37}] at @s run function hp:items/summon_broom
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=38}] run tag @s add invisCape
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=38}] at @s run playsound minecraft:custom.inventory.pickup.cloth master @a
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=110,cloudInABottle=0}] at @s run function hp:items/summon_weather_in_a_bottle
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=111,fireworks=0}] at @s run function hp:items/launch_fireworks
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=112}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=112}] run tag @s add omnioculars
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=113,dungbomb=0}] at @s run function hp:items/dungbomb


tag @s remove useQuickSlot1
tag @s remove useQuickSlot2