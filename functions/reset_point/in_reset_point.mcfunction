# Respawn sequence
execute as @s[scores={resetPointType=1}] run function hp:reset_point/reset_points/respawn
# Barrier reset
execute as @s[scores={resetPointType=2}] run function hp:reset_point/reset_points/barrier_reset

# Technical
execute store result score @s tmp2 run data get entity @s DeathTime
execute as @s[scores={tmp2=0}] run scoreboard players add @s resetPointTimer 1
scoreboard players add @s[tag=resetPointFadeIn,tag=!fastFade] resetPointFade 1
scoreboard players add @s[tag=resetPointFadeIn,tag=fastFade] resetPointFade 2
scoreboard players remove @s[tag=resetPointFadeOut,tag=!fastFade] resetPointFade 1
scoreboard players remove @s[tag=resetPointFadeOut,tag=fastFade] resetPointFade 2
tag @s[tag=resetPointFadeIn,scores={resetPointFade=21..}] remove resetPointFadeIn
tag @s[tag=resetPointFadeOut,scores={resetPointFade=..0}] remove resetPointFadeOut

effect give @s[tag=resetPointLevitate,tag=!hasResetPointLevitate] minecraft:levitation 999999 255 true
tag @s[tag=resetPointLevitate,tag=!hasResetPointLevitate] add isLevitating
tag @s[tag=resetPointLevitate,tag=!hasResetPointLevitate] add hasResetPointLevitate
effect clear @s[tag=!resetPointLevitate,tag=hasResetPointLevitate] minecraft:levitation
tag @s[tag=!resetPointLevitate,tag=hasResetPointLevitate] remove hasResetPointLevitate
tag @s[tag=!resetPointLevitate,tag=hasResetPointLevitate] remove isLevitating