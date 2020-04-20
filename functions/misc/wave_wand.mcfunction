execute as @s[tag=hasDoubleRightClicked,scores={hotbar_stage=7..}] run tag @s add anim_alohomora
execute as @s[tag=hasDoubleRightClicked,scores={hotbar_stage=7}] run scoreboard players set @s hotbar_stage 8
execute as @s[tag=hasDoubleRightClicked,scores={hotbar_stage=7..}] at @s run particle minecraft:portal ^ ^1.25 ^1 0.15 0.15 0.15 1 50 force @a
execute as @s[tag=hasDoubleRightClicked,scores={hotbar_stage=7..}] at @s run playsound minecraft:custom.spell.alohomora.cast master @a