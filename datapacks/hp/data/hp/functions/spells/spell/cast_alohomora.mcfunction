# Cast alohomora
execute as @s[scores={animTest=1}] run scoreboard players set @s animState 0
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] at @s run particle minecraft:block clay ^0.3 ^1.1 ^0.5 0.1 0.1 0.1 1 20
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] at @s run playsound minecraft:custom.spell.alohomora.lock master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] at @s run function hp:misc/open_door
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] at @s run scoreboard players set @s tmp3 450
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] run tag @s add AlohomoraUnlockedDoor
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] run tag @s add spellEntity
execute as @s[scores={animTest=1}] run execute as @e[tag=doorOpened] run tag @s remove doorOpened

execute as @s[scores={animTest=1}] run tag @s remove castAlohomora
