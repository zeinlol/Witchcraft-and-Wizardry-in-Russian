
# Cleanup before next cycle (has to be in between tellraw and read_conversation after new order to support quest option injection since it is used in tellraw)
tag @s[tag=longHeader] remove longHeader
tag @e[tag=headerEnding] remove active
tag @e[tag=headerEntity] remove headerEntity
tag @e[tag=scrollIndicator,tag=!inInventory] remove active

execute as @s[scores={animTest=0..1}] run function hp:conversation/read_conversation


# Reset quest offset
scoreboard players set @s questConvOffset 1

# When player presses shift
execute as @s[scores={backConvState=0..,shiftTest=1},tag=isSneaking,tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run scoreboard players operation @s convState = @s backConvState
execute as @s[scores={backConvState=0..,shiftTest=1},tag=isSneaking,tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run scoreboard players set @s convScroll 0
execute as @s[scores={backConvState=0..,shiftTest=1},tag=isSneaking,tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run scoreboard players set @s selectCurrent 1
execute as @s[scores={backConvState=0..,shiftTest=1},tag=isSneaking,tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run tag @s add preventDoubleExecution
# execute as @s[tag=exitInventory] run function hp:inventory/exit_inventory


execute as @s[scores={backConvState=-1,shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run tag @s add exitConversation
execute as @s[scores={backConvState=-1,shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=!confirmConvOption] run tag @s add preventDoubleExecution

execute as @s[scores={shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=confirmConvOption] run tag @e[tag=confirmingOption] remove confirmingOption
execute as @s[scores={shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=confirmConvOption] run scoreboard players set @s convScroll 0
execute as @s[scores={shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=confirmConvOption] run scoreboard players set @s selectCurrent 1
execute as @s[scores={shiftTest=1},tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory,tag=confirmConvOption] run tag @s add exitConfirmConvOption
execute as @s[tag=exitConfirmConvOption] run tag @s remove confirmConvOption
execute as @s[tag=exitConfirmConvOption] run function hp:conversation/conversation_state_changed
execute as @s[tag=exitConfirmConvOption] run function hp:conversation/read_conversation
execute as @s[tag=exitConfirmConvOption] run tag @s remove exitConfirmConvOption

# I use convstate -1 as an easy way to define a conversation exit in the conversation functions
execute as @s[scores={convState=-1},tag=!preventDoubleExecution] run tag @s add exitConversation

# Exit no matter what when holding shift for 1 second (gives the player a way to exit if the system bugs out and they are trapped in a conversation with no exit state - Which of course shouldn't happen, but it's better to be on the safe side)
execute as @s[scores={shiftTest=20}] run tag @s add exitConversation

# If the player has exited a store while still in the inventory the state needs to be set here which is actually one tick delayed to allow for proper quest Injection.
execute as @s[tag=exitInventoryInConversation] run scoreboard players operation @s convState = @s backConvState
execute as @s[tag=exitInventoryInConversation] run tag @s remove exitInventoryInConversation

# Soft Exit
execute as @s[tag=isFastTravelling,tag=!softExitConv,tag=!inInventory] run function hp:conversation/soft_exit_conversation


