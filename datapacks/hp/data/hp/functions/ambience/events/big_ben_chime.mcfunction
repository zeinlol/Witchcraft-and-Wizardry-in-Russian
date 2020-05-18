playsound minecraft:custom.ambient.bell.big_ben_chime master @a 2796 167 423 20 1
scoreboard players set bigBenChime global 1
execute as @p unless entity @s[scores={lastLocation=33}] as @s[tag=!isFastTravelling,tag=!inConversation,tag=!inProperCutScene,tag=!inInventory] at @s run playsound minecraft:custom.music.ambient_safe record @s ~ ~ ~ 1000000 1 1
execute as @p unless entity @s[scores={lastLocation=33}] as @s[tag=!isFastTravelling,tag=!inConversation,tag=!inProperCutScene,tag=!inInventory] run function hp:discovery/locations/big_ben