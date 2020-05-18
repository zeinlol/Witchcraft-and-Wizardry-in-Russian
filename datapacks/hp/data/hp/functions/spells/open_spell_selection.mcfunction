scoreboard players operation @s selectedSpell = @s currentSpell
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
function hp:spells/change_current_spell