# When spell selection is open
execute as @s[tag=hasPressedQ,tag=showSpellSelection] unless score @s currentSpell > @s unlockedSpell run scoreboard players add @s currentSpell 1
execute as @s[tag=hasPressedQ,tag=showSpellSelection] unless score @s currentSpell <= @s unlockedSpell run scoreboard players set @s currentSpell 1
execute as @s[tag=hasPressedQ,tag=showSpellSelection] run scoreboard players operation @s selectedSpell = @s currentSpell
execute as @s[tag=hasPressedQ,tag=showSpellSelection] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute as @s[tag=hasPressedQ,tag=showSpellSelection] run function hp:spells/change_current_spell