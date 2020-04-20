# This is to prevent the ding sound being played multiple times the same tick or in two or more ticks right after each other. This would e.g. happen in singleplayer with the "wait for everyone to arrive" quest state immediately be completed.
execute unless score @s questDing matches 1.. at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 10000 1 1

# Animated exclamation point
execute unless entity @s[tag=inLumosTransitionArea] unless score @s questDing matches 1.. run tag @s add playQuestIconAnimExclamation

execute unless score @s questDing matches 1.. run scoreboard players set @s questDing 5