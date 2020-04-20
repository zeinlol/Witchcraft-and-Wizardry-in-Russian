# This is a proper mess: The inventory system was built on top of the old conversation system but ended up being way more efficient and generally better than the conversation system, so I redid the conversation system based on the inventory system that was based on the old conversation system. Variable names are nonsense. nothing matters. we're all gonna die.
# It even just uses the inventory option armorstands to save on entities

# Fix for injected options that aren't formatted yet.
execute as @e[tag=convOption,scores={con=..0}] if score @s con = @p[tag=activePlayer] selectCurrent run tag @s add convSelected

# In Conversation
execute as 0-0-e-0-2 at @s[tag=!softExitConv,tag=!inInventory] positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"convUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[convSelect,selectUp],UUIDMost:15,UUIDLeast:5}
execute as 0-0-e-0-2 at @s[tag=!softExitConv,tag=!inInventory] positioned ^ ^ ^-10 run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"convDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[convSelect,selectDown],UUIDMost:15,UUIDLeast:6}
execute as 0-0-e-0-2 at @s[tag=!softExitConv,tag=!inInventory] positioned ^10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"convUp\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[convSelect,selectLeft],UUIDMost:15,UUIDLeast:7}
execute as 0-0-e-0-2 at @s[tag=!softExitConv,tag=!inInventory] positioned ^-10 ^ ^ run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"convDown\"}",Radius:0.0f,Duration:0,Particle:"block air",Tags:[convSelect,selectRight],UUIDMost:15,UUIDLeast:8}

tag @s remove hasScrolled

# Scroll down
execute as @s[tag=hasChangedSlotDown,tag=!softExitConv,tag=!inInventory,tag=!hasScrolled] run function hp:conversation/conversation_scroll_down
execute at 0-0-e-0-2 as @s[distance=0.001..,tag=!softExitConv,tag=!inInventory,tag=!hasScrolled] at @s as @e[type=area_effect_cloud,tag=convSelect,limit=1,sort=nearest] if entity @s[tag=selectDown] as @p[tag=activePlayer] run function hp:conversation/conversation_scroll_down

# Scroll up
execute as @s[tag=hasChangedSlotUp,tag=!softExitConv,tag=!inInventory,tag=!hasScrolled] run function hp:conversation/conversation_scroll_up
execute at 0-0-e-0-2 as @s[distance=0.001..,tag=!softExitConv,tag=!inInventory,tag=!hasScrolled] at @s as @e[type=area_effect_cloud,tag=convSelect,limit=1,sort=nearest] if entity @s[tag=selectUp] as @p[tag=activePlayer] run function hp:conversation/conversation_scroll_up

# Indicators
execute as @s[tag=!confirmConvOption] if score 00000000-0000-0006-0000-000000000004 con matches 5.. run tag 0-0-3-0-4 add active
execute as @s[tag=!confirmConvOption] if score 00000000-0000-0006-0000-000000000004 con < @s convMaxView run tag 0-0-3-0-5 add active 


################################################################################################
# Visuals
################################################################################################

# Lock player look
execute store result score @s tmp run data get entity 0-0-e-0-2 Rotation[0] 1000
execute store result score @s tmp2 run data get entity @s Rotation[0] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP
execute store result score @s tmp run data get entity 0-0-e-0-2 Rotation[1] 1000
execute store result score @s tmp2 run data get entity @s Rotation[1] 1000
execute unless score @s tmp = @s tmp2 run tag @s add lookTP

# reset player position when triggering scroll detection.
execute at 0-0-e-0-2 as @s[distance=0.001..] run tag @s add lookTP
execute as @s[tag=lookTP,tag=!inInventory] run tp @s 0-0-e-0-2
tag @s[tag=lookTP] remove lookTP



# Cinematic focal length
effect give @s[tag=!softExitConv] minecraft:slowness 100 3 true
effect give @s[tag=!softExitConv,tag=!inInventory] minecraft:levitation 100 255 true
tag @s[tag=!softExitConv,tag=!inInventory] add isLevitating
################################################################################################

execute as @s[tag=hasPressedF,scores={delayConvTellraw=0,pressFDelay=5}] run function hp:conversation/conversation_press_f


# Has to be done after the conversation reader since the tag will be overwritten by the conversation nbt otherwise. That took a while to debug haha
# Draw conversation
# Order is opposite what you might expect to prevent glitchyness with quest option injection, so I delay the chat with 1 tick.
execute as @s[scores={animTest=0,delayConvTellraw=0},tag=!inInventory] run function hp:conversation/tellraw_conversation


# Cleanup for next player
kill 0-0-f-0-5
kill 0-0-f-0-6
kill 0-0-f-0-7
kill 0-0-f-0-8
