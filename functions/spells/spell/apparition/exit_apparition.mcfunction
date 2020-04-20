# Exit
effect clear @s minecraft:slowness
effect clear @s minecraft:jump_boost
tag @s remove inAppiration
playsound minecraft:custom.spell.wingardium.exit master @a
execute as @s[scores={playerID=1}] run kill 0-0-10-0-1
execute as @s[scores={playerID=2}] run kill 0-0-10-0-2
execute as @s[scores={playerID=3}] run kill 0-0-10-0-3
execute as @s[scores={playerID=4}] run kill 0-0-10-0-4
execute as @s[scores={selectedSlot=1}] run tag @s add anim_enter
execute as @s[scores={selectedSlot=2..}] run scoreboard players set @s animState 0
tag @s remove exitApparition