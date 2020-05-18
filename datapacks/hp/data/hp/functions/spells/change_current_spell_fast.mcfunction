scoreboard players set @s tmp 0

execute as @s[scores={currentSpell=2,tmp=0,unlockedSpell=3..}] store success score @s tmp run scoreboard players set @s currentSpell 3
execute as @s[scores={currentSpell=3,tmp=0,unlockedSpell=6..}] store success score @s tmp run scoreboard players set @s currentSpell 6
execute as @s[scores={currentSpell=6,tmp=0,unlockedSpell=7..}] store success score @s tmp run scoreboard players set @s currentSpell 7
execute as @s[scores={currentSpell=7,tmp=0,unlockedSpell=8..}] store success score @s tmp run scoreboard players set @s currentSpell 8
execute as @s[scores={currentSpell=8,tmp=0,unlockedSpell=2..}] store success score @s tmp run scoreboard players set @s currentSpell 2
execute as @s[scores={tmp=0,unlockedSpell=2..}] store success score @s tmp run scoreboard players set @s currentSpell 2

execute as @s[scores={tmp=1..}] run function hp:animation/clear_all_animations
execute as @s[scores={tmp=1..}] run tag @s add anim_enter