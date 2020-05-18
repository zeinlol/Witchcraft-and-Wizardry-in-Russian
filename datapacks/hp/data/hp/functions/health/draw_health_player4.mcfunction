execute store result score @s tmp run data get entity @s Health 1
execute store result score @s tmp2 run data get entity @s AbsorptionAmount 1
scoreboard players remove @s tmp 500
scoreboard players operation @s tmp += @s tmp2
execute unless score @s tmp = @s currentHealth run function hp:health/health_changed_player4

execute as @s[scores={playHealthAnim=1..}] run function hp:health/health_anim_player4

execute if score @s currentHealth < @s maxHealth run scoreboard players add @s timeSinceDamage 1

# Potion effects
execute if score @s currentHealth < @s maxHealth run tag @s[scores={timeSinceDamage=200..},tag=!brackiumEmendoHealing,tag=!healing] add healing

execute as @s[tag=healing,tag=!isHealing] run effect give @s minecraft:regeneration 100 3 true
execute as @s[tag=healing,tag=!isHealing] run tag @s add isHealing

execute as @s[tag=brackiumEmendoHealing,tag=!isBrackiumEmendoHealing] run effect give @s minecraft:regeneration 100 7 true
execute as @s[tag=brackiumEmendoHealing,tag=!isBrackiumEmendoHealing] run tag @s add isBrackiumEmendoHealing

execute as @s[tag=!healing,tag=isHealing] run effect clear @s minecraft:regeneration
execute as @s[tag=!healing,tag=isHealing] run tag @s remove isHealing

execute as @s[tag=!brackiumEmendoHealing,tag=isBrackiumEmendoHealing] run effect clear @s minecraft:regeneration
execute as @s[tag=!brackiumEmendoHealing,tag=isBrackiumEmendoHealing,tag=healing] run effect give @s minecraft:regeneration 100 3 true
execute as @s[tag=!brackiumEmendoHealing,tag=isBrackiumEmendoHealing,tag=healing] run tag @s remove isBrackiumEmendoHealing


execute as @s[tag=brackiumEmendoHealing] at @s unless entity @e[tag=brackiumArea] run tag @s remove brackiumEmendoHealing


# Hunger
effect give @s minecraft:saturation 1000000 100 true

# Poisoned
scoreboard players remove @s[scores={poisoned=1..}] poisoned 1
execute as @s[scores={poisoned=1}] run bossbar set minecraft:player4health color red
effect clear @s[scores={poisoned=1}] minecraft:poison

execute as @s[scores={currentHealth=26..}] run scoreboard players set @s damageOverlay 0
execute as @s[scores={currentHealth=26..}] run scoreboard players set @s heartBeatLength 0

execute as @s[scores={currentHealth=..25}] run function hp:health/low_health

# Respawn
execute as @s[scores={currentHealth=..0,relogTimer=0},tag=!inProperCutScene,tag=!inResetPoint,tag=play] run function hp:respawn/init_respawn