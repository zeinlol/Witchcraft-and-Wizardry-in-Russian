# confirm conversation option
execute as @s[tag=confirmConvOption,scores={selectSecondary=1},tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run function hp:tools/fast_travel_init
execute as @s[tag=confirmConvOption,scores={selectSecondary=1},tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected] run tag @s add triggerOption
execute as @s[tag=confirmConvOption,scores={selectSecondary=2},tag=!softExitConv,tag=!inInventory] run tag @s add preventDoubleExecution
execute as @s[tag=confirmConvOption,scores={selectSecondary=2},tag=!softExitConv,tag=!inInventory] run tag @e[tag=confirmingOption] remove confirmingOption
execute as @s[tag=confirmConvOption,scores={selectSecondary=2},tag=!softExitConv,tag=!inInventory] run scoreboard players set @s convScroll 0
execute as @s[tag=confirmConvOption,scores={selectSecondary=2},tag=!softExitConv,tag=!inInventory] run scoreboard players set @s selectCurrent 1
execute as @s[tag=confirmConvOption,scores={selectSecondary=2},tag=!softExitConv,tag=!inInventory] run tag @s add exitConfirmConvOption
execute as @s[tag=exitConfirmConvOption] run tag @s remove confirmConvOption
execute as @s[tag=exitConfirmConvOption] run function hp:conversation/conversation_state_changed
execute as @s[tag=exitConfirmConvOption] run function hp:conversation/read_conversation
execute as @s[tag=exitConfirmConvOption] run tag @s remove exitConfirmConvOption

execute as @s[tag=!confirmConvOption,tag=!preventDoubleExecution,scores={convState=1..},tag=!softExitConv,tag=!inInventory] run scoreboard players set @s selectSecondary 1
execute as @s[tag=!confirmConvOption,tag=!preventDoubleExecution,scores={convState=1..},tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=fastTravel] run function hp:conversation/conversation_state_changed
execute as @s[tag=!confirmConvOption,tag=!preventDoubleExecution,scores={convState=1..},tag=!softExitConv,tag=!inInventory] run tag @e[tag=convOption,tag=convSelected] add confirmingOption


# Execute the command specified in the particular conversation function.
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=!fastTravel,tag=!_____buy_____,tag=!_____sell_____] run tag @s add triggerOption
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=fastTravel,tag=!_____buy_____,tag=!_____sell_____] run tag @s add confirmConvOption
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=fastTravel,tag=!_____buy_____,tag=!_____sell_____] run function hp:conversation/read_conversation
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=!fastTravel,tag=_____buy_____,tag=!_____sell_____] run tag @s add initBuy
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected,tag=!fastTravel,tag=!_____buy_____,tag=_____sell_____] run tag @s add initSell
execute as @s[tag=!preventDoubleExecution,tag=!softExitConv,tag=!inInventory] if entity @e[tag=convOption,tag=convSelected] run tag @s add preventDoubleExecution


# init buy buy
execute if entity @s[tag=initBuy] run tag @e[tag=inventory] remove inventory
execute if entity @s[tag=initBuy] as @e[tag=inConversationNPC] if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s add inventory
execute if entity @s[tag=initBuy] run tag @s add isContainer
execute if entity @s[tag=initBuy] run tag @s add buy
execute if entity @s[tag=initBuy] run scoreboard players operation @s backConvState = @s convState
execute if entity @s[tag=initBuy] run scoreboard players set @s convState -2
execute if entity @s[tag=initBuy] run tag @s add enterInventory
execute if entity @s[tag=initBuy] run tag @s remove initBuy

# init sell
execute if entity @s[tag=initSell] run tag @e[tag=inventory] remove inventory
execute if entity @s[tag=initSell,scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute if entity @s[tag=initSell,scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute if entity @s[tag=initSell,scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute if entity @s[tag=initSell,scores={playerID=4}] run tag 0-0-5-0-4 add inventory
execute if entity @s[tag=initSell] run scoreboard players operation @s backConvState = @s convState
execute if entity @s[tag=initSell] run scoreboard players set @s convState -2
execute if entity @s[tag=initSell] run tag @s add sell
execute if entity @s[tag=initSell] run tag @s add enterInventory
execute if entity @s[tag=initSell] run tag @s remove initSell