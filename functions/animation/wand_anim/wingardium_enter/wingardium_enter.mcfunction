execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumExit
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumLift
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumPutDown
execute as @s[tag=!anim_playing] run tag @s remove anim_alohomora
execute as @s[tag=!anim_playing] run tag @s remove anim_stupefy

execute as @s[tag=!anim_playing] run tag @s add anim_playing
execute as @s[scores={animTest=12}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter12
execute as @s[scores={animTest=11}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter11
execute as @s[scores={animTest=10}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter10
execute as @s[scores={animTest=9}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter9
execute as @s[scores={animTest=8}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter8
execute as @s[scores={animTest=7}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter7
execute as @s[scores={animTest=6}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter6
execute as @s[scores={animTest=5}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter5
execute as @s[scores={animTest=4}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter4
execute as @s[scores={animTest=3}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter3
execute as @s[scores={animTest=2}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter2
execute as @s[scores={animTest=1}] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter1

execute as @s[scores={animTest=1}] run scoreboard players set @s animState 1
execute as @s[scores={animTest=1}] run tag @s remove anim_playing
execute as @s[scores={animTest=1}] run tag @s remove anim_wingardiumEnter
execute as @s[scores={animTest=1}] run tag @s remove anim_playingWingardiumEnter
execute as @s[scores={animTest=1},tag=!inWingardium] run tag @s add anim_wingardiumExit