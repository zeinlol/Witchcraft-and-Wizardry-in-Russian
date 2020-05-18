# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill small spider
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/small_spider/small_spider_death

# Poison player
execute at @s as @p[distance=..1.5] if entity @s[nbt=!{HurtTime:0s},scores={poisoned=0},tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run function hp:health/poison


# Glow timer - If the mob is alive for a long duration of time during waves it's a good indicator that it is lost or that the player for some reason is unable to find the mob, so it gets highlighted
execute as @s[tag=glowWaveCreature] run scoreboard players operation @s glowTimer += systick time
execute as @s[tag=glowWaveCreature,scores={glowTimer=200000..}] run effect give @s minecraft:glowing 1 1 true