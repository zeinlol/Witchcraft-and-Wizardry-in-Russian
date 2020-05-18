execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumEnter
execute as @s[tag=!anim_playing] run tag @s remove anim_alohomora
execute as @s[tag=!anim_playing] run tag @s remove anim_stupefy


execute as @s[tag=!anim_playing] run tag @s add anim_playing
execute as @s[scores={animTest=8}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift8
execute as @s[scores={animTest=7}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift7
execute as @s[scores={animTest=6}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift6
execute as @s[scores={animTest=5}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift5
execute as @s[scores={animTest=4}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift4
execute as @s[scores={animTest=3}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift3
execute as @s[scores={animTest=2}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift2
execute as @s[scores={animTest=1}] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift1



execute as @s[scores={animTest=1}] run scoreboard players set @s animState 2
execute as @s[scores={animTest=1}] run tag @s remove anim_playing
execute as @s[scores={animTest=1}] run tag @s remove anim_wingardiumLift
execute as @s[scores={animTest=1}] run tag @s remove anim_playingWingardiumLift