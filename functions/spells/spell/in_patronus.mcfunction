scoreboard players remove @s[scores={patronusBlast=0..}] patronusBlast 1

execute as @s[scores={patronusBlast=0..}] as @e[tag=dementorEngine] run data merge entity @s {HurtTime:10s}

execute as @s[scores={patronusBlast=0}] as @e[tag=patronus] if score @s playerID = @p[tag=activePlayer] playerID run kill @s
execute as @s[scores={patronusBlast=295}] run effect clear @s night_vision
execute as @s[scores={patronusBlast=0}] run tag @s remove inPatronus