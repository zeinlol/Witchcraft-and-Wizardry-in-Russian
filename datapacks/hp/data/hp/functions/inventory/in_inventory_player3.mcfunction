# This function holds commands that are only triggered when the player has their inventory open.

execute store result score @s falling run data get entity 0-0-c-0-3 FallDistance 10

# enter animation
execute as @s[scores={animTest=1..}] run scoreboard players remove @s animTest 1
# Set invInspectItem for this player
scoreboard players set  InvItemNumber 1
execute as 0-0-1-0-1 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-1-0-2 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-1-0-3 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-1-0-4 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-1-0-5 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-1-0-6 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-1 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-2 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-3 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-4 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-5 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem
execute as 0-0-2-0-6 if score @s convRenderLine = @p[tag=activePlayer] inspectedItem run tag @s add inspectedItem

# If the drop / chest does no longer exist exit the inventory
execute unless entity @e[type=!item_frame,tag=inventory,limit=1] run tag @s add exitInventory

# Read player inventory (needs to be done every time since the same entities are reused for all players). This also assigns the "selected" tag, which is required for scrolling to work properly.
execute as @s[scores={animTest=0..1}] as @e[type=!item_frame,tag=inventory,limit=1] run function hp:inventory/read_inventory

##############################################
#               Scrolling                    #
##############################################
tag @s remove hasScrolled

# Scroll testers
execute at 0-0-c-0-3 positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[invSelect,selectUp],UUIDMost:11,UUIDLeast:9}
execute at 0-0-c-0-3 positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[invSelect,selectDown],UUIDMost:11,UUIDLeast:10}
execute at 0-0-c-0-3 positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invLeft\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[invSelect,selectLeft],UUIDMost:11,UUIDLeast:11}
execute at 0-0-c-0-3 positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"invRight\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[invSelect,selectRight],UUIDMost:11,UUIDLeast:12}

# reset scroll indicators
tag 0-0-3-0-4 remove active
tag 0-0-3-0-5 remove active

# Sideways Scroll
execute as @s[tag=dropItem,tag=!hasScrolled] at 0-0-c-0-3 run function hp:inventory/side_scroll
execute as @s[tag=moveToQuickSlot,tag=!hasScrolled] at 0-0-c-0-3 run function hp:inventory/side_scroll

# Scroll down
execute as @s[tag=hasChangedSlotDown,tag=!dropItem,tag=!moveToQuickSlot,tag=!hasScrolled] run function hp:inventory/inventory_scroll_down
execute at 0-0-c-0-3 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!dropItem,tag=!moveToQuickSlot,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=invSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:inventory/inventory_scroll_down

# Scroll up
execute as @s[tag=hasChangedSlotUp,tag=!dropItem,tag=!moveToQuickSlot,tag=!hasScrolled] run function hp:inventory/inventory_scroll_up
execute at 0-0-c-0-3 unless block ~ ~ ~ water as @s[distance=0.001..,tag=!dropItem,tag=!moveToQuickSlot,tag=!hasScrolled,scores={falling=0}] at @s as @e[type=area_effect_cloud,tag=invSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:inventory/inventory_scroll_up


# Indicators
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000004 InvItemNumber matches 5.. run tag 0-0-3-0-4 add active
execute as @s[tag=!invInspectItem] if score 00000000-0000-0001-0000-000000000006 InvItemNumber < @s convMaxView run tag 0-0-3-0-5 add active 

############################################
#               Visuals                    #
############################################

# slowness is just for zoom effect thing. Levitation is to prevent viewbobbing and general akwardness. Nightvision is so the item preview wont be affected by the lightlevel of where the player is standing.
effect give @s minecraft:slowness 100 2 true
effect give @s minecraft:levitation 1 255 true
tag @s add isLevitating
execute as @s[scores={animTest=0}] run effect give @s minecraft:night_vision 100 10 true

# Lock player look
# On servers you can't tp twice every tick without the server getting proper funky, so I only teleport if the player has changed their rotation
execute store result score @s tmp run data get entity 0-0-c-0-3 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-c-0-3 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-c-0-3 as @s[distance=0.001..] run tag @s add lookTP
execute as @s[tag=lookTP,tag=!delayInventoryOneTick] run tp @s 0-0-c-0-3
tag @s[tag=lookTP] remove lookTP

##############################################
#               Functionality                #
##############################################

# When pressing shift
execute as @s[tag=isSneaking,scores={shiftTest=1}] run function hp:inventory/inventory_press_shift
# When pressing F
execute as @s[tag=hasPressedF] run function hp:inventory/inventory_press_f

tag @s[tag=preventDoubleExecution] remove preventDoubleExecution

# Draw in chat
# Read again if something has changed. This is kind of hacky and bad and obviously not great for performance, but I didn't have multiplayer in mind when I did this, and you get weird visual delays and all sorts of odd stuff happening without this fix. It's only needed if you change the view somehow, by interacting with something or scrolling.
execute as @s[scores={animTest=0..1,viewChanged=1..}] as @e[type=!item_frame,tag=inventory,limit=1] run function hp:inventory/read_inventory
execute as @s[scores={animTest=0..1}] run function hp:inventory/tellraw_inventory
scoreboard players set @s[scores={viewChanged=1..}] viewChanged 0

# Cleanup for next player
tag @s remove delayInventoryOneTick
kill 0-0-b-0-9
kill 0-0-b-0-a
kill 0-0-b-0-b
kill 0-0-b-0-c

# Store inspected item for next player
scoreboard players set @s inspectedItem 0
execute as 0-0-1-0-1 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 1
execute as 0-0-1-0-2 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 2
execute as 0-0-1-0-3 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 3
execute as 0-0-1-0-4 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 4
execute as 0-0-1-0-5 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 5
execute as 0-0-1-0-6 if entity @s[tag=inspectedItem] run scoreboard players set @p[tag=activePlayer] inspectedItem 6
execute as 0-0-1-0-1 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-1-0-2 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-1-0-3 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-1-0-4 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-1-0-5 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-1-0-6 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-1 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-2 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-3 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-4 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-5 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem
execute as 0-0-2-0-6 if entity @s[tag=inspectedItem] run tag @s remove inspectedItem

