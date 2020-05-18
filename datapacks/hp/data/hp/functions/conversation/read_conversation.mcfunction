# In the old conversation system I used command block minecarts, which let me add a custom command to each conversation option for when it was executed, which was a really great trick, but it was too difficult to execute (command block minecarts have a different tick rate) and it wouldn't work well with the new way of doing multiplayer support and reusing the same entities for several players in a single tick.
# Eventually using command blocks ended up being redundant really, and since it was causing problems with quest injection I went through and changed it all. 
# Another limitation of using commandblocks is you can only have a single command per option. There are other advantages though, so it's still something that could be considered if anyone wants to make a similar system.
# There may still be comments that reference command blocks. Haven't gone through and cleaned it all up.

# Reset names:
execute as 0-0-6-0-1 if entity @s[scores={con=1..}] run data merge entity @s {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as 0-0-6-0-2 if entity @s[scores={con=1..}] run data merge entity @s {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as 0-0-6-0-3 if entity @s[scores={con=1..}] run data merge entity @s {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as 0-0-6-0-4 if entity @s[scores={con=1..}] run data merge entity @s {CustomName:"{\"text\":\"\",\"color\":\"white\"}"}

# Detect when conversation state is changed
execute unless score @s convState = @s oldConvState run function hp:conversation/conversation_state_changed

# Reset scrolling:
execute as 0-0-6-0-1 run scoreboard players operation @s[tag=!inInventory] con = @s invStartNumber
execute as 0-0-6-0-2 run scoreboard players operation @s[tag=!inInventory] con = @s invStartNumber
execute as 0-0-6-0-3 run scoreboard players operation @s[tag=!inInventory] con = @s invStartNumber
execute as 0-0-6-0-4 run scoreboard players operation @s[tag=!inInventory] con = @s invStartNumber

# Scroll offset:
scoreboard players operation 00000000-0000-0006-0000-000000000001 con += @s[tag=!inInventory] convScroll
scoreboard players operation 00000000-0000-0006-0000-000000000002 con += @s[tag=!inInventory] convScroll
scoreboard players operation 00000000-0000-0006-0000-000000000003 con += @s[tag=!inInventory] convScroll
scoreboard players operation 00000000-0000-0006-0000-000000000004 con += @s[tag=!inInventory] convScroll


# Calculate scroll area
scoreboard players set @s[tag=!inInventory] convMaxView 0

#################################
#        Conversations          #
#################################

# I use short tag names also to make the command before editing the contents of the option as short as possible
# I really tried to make it so that you wouldn't have to specify the render line number in the conversation function, but I couldn't figure out a way to do it. That's one thing that could be improved if anyone are looking to implement a similar system.
tag @s add drawOptions
function hp:conversation/conversations
tag @s remove drawOptions

# Has to be done after the conversation reader (conversation/conversations) since the tag will be overwritten by the conversation nbt otherwise. That took a while to debug haha
# Set active
tag 0-0-6-0-1 remove convSelected
tag 0-0-6-0-2 remove convSelected
tag 0-0-6-0-3 remove convSelected
tag 0-0-6-0-4 remove convSelected
execute as 0-0-6-0-1 if score @s con = @p[tag=activePlayer] selectCurrent run tag @s add convSelected
execute as 0-0-6-0-2 if score @s con = @p[tag=activePlayer] selectCurrent run tag @s add convSelected
execute as 0-0-6-0-3 if score @s con = @p[tag=activePlayer] selectCurrent run tag @s add convSelected
execute as 0-0-6-0-4 if score @s con = @p[tag=activePlayer] selectCurrent run tag @s add convSelected

execute as @s[tag=triggerOption,scores={delayConvTellraw=0}] run function hp:conversation/conversations
execute as @s[tag=triggerOption,scores={delayConvTellraw=0}] run tag @s remove triggerOption

# Fix to prevent the player overriding the qeued quest by accepting a new one too quickly
tag @s[tag=startQueingQuest] add queingQuest
tag @s[tag=startQueingQuest] remove startQueingQuest

# Give conv formatting entities players convMaxView score so the formatting can be hidden on options that do not exist (if there is less than 4 options)
scoreboard players operation 00000000-0000-0006-0000-000000000005 convMaxView = @s convMaxView
scoreboard players operation 00000000-0000-0006-0000-000000000006 convMaxView = @s convMaxView
scoreboard players operation 00000000-0000-0006-0000-000000000007 convMaxView = @s convMaxView
scoreboard players operation 00000000-0000-0006-0000-000000000008 convMaxView = @s convMaxView
# And remember that quest injections can cause more options to be visible here. questConvOffset is based off selction starting position (1) and must therefore be subtracted from 1.
scoreboard players set @s tmp 1
scoreboard players operation @s tmp -= @s questConvOffset
scoreboard players operation 00000000-0000-0006-0000-000000000005 convMaxView += @s tmp
scoreboard players operation 00000000-0000-0006-0000-000000000006 convMaxView += @s tmp
scoreboard players operation 00000000-0000-0006-0000-000000000007 convMaxView += @s tmp
scoreboard players operation 00000000-0000-0006-0000-000000000008 convMaxView += @s tmp

# Formatting - prefix, suffix
function hp:conversation/option_formatting
