# Check if spit has hit player. All these tests are done to get a thin vertical slice to test with
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~1 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~0.8 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~0.6 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~0.4 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~0.2 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~ ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-0.2 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-0.4 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-0.6 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-0.8 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-1.0 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-1.2 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-1.4 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] at @s positioned ~ ~-1.6 ~ as @p[distance=..1.5,tag=play,team=all,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add playerHitBySpiderSpit

execute as @s[tag=!hasHitPlayer] as @p[tag=playerHitBySpiderSpit] run effect give @s minecraft:slowness 2 2 true
execute as @s[tag=!hasHitPlayer] as @p[tag=playerHitBySpiderSpit] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[tag=!hasHitPlayer] as @p[tag=playerHitBySpiderSpit] run tag @s remove playerHitBySpiderSpit
execute as @s[tag=!hasHitPlayer] if entity @p[tag=playerHitBySpiderSpit] run tag @s add hasHitPlayer