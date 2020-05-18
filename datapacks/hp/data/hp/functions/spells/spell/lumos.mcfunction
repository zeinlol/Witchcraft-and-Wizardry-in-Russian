# Enter      
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumos,tag=hasDoubleRightClicked] run tag @s add preventDoubleExecution
# execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumos,tag=hasDoubleRightClicked] at @s run playsound minecraft:custom.spell.wingardium.exit master @a
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumos,tag=hasDoubleRightClicked] at @s run tag @s add anim_lumosExit
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumos,tag=hasDoubleRightClicked] run scoreboard players set @s lumosDelay 0
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumos,tag=hasDoubleRightClicked] run tag @s add lumosExit
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] at @s run playsound minecraft:custom.spell.lumos.cast master @a
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run tag @s add anim_lumosEnter
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run tag @s add openLumos
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run tag @s add preventPunching
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run scoreboard players set @s lumosDelay 0
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run tag @s add inLumos

execute as @s[scores={currentSpell=1,selectedSlot=1},tag=!inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run title @s times 5 20 5
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=!inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run title @s title {"text":" "}
execute as @s[scores={currentSpell=1,selectedSlot=1},tag=!inLumosArea,tag=!preventDoubleExecution,tag=!inLumos,tag=hasDoubleRightClicked] run title @s subtitle {"text":"Тут достаточно света!","bold":false,"color":"red"}