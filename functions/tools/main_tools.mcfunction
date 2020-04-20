execute as @s[tag=hasPressedQ] run function hp:tools/tools_use
# Fast travel
execute as @s[tag=isFastTravelling] run function hp:tools/fast_travel


execute as @s[scores={hotbar_stage=2},tag=hasPressedF] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.25 1
execute as @s[scores={hotbar_stage=2},tag=hasPressedF] run scoreboard players set @s hotbar_stage 3