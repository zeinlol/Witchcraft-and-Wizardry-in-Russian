execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumExit
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumLift
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumPutDown
execute as @s[tag=!anim_playing] run tag @s remove anim_alohomora
execute as @s[tag=!anim_playing] run tag @s remove anim_stupefy

execute as @s[tag=!anim_playing] run tag @s add anim_playing
execute as @s[scores={animTest=14}] run function hp:animation/wand_anim/lumos_enter/lumos_enter14
execute as @s[scores={animTest=13}] run function hp:animation/wand_anim/lumos_enter/lumos_enter13
execute as @s[scores={animTest=12}] run function hp:animation/wand_anim/lumos_enter/lumos_enter12
execute as @s[scores={animTest=11}] run function hp:animation/wand_anim/lumos_enter/lumos_enter11
execute as @s[scores={animTest=10}] run function hp:animation/wand_anim/lumos_enter/lumos_enter10
execute as @s[scores={animTest=9}] run function hp:animation/wand_anim/lumos_enter/lumos_enter9
execute as @s[scores={animTest=8}] run function hp:animation/wand_anim/lumos_enter/lumos_enter8
execute as @s[scores={animTest=7}] run function hp:animation/wand_anim/lumos_enter/lumos_enter7
execute as @s[scores={animTest=6}] run function hp:animation/wand_anim/lumos_enter/lumos_enter6
execute as @s[scores={animTest=5}] run function hp:animation/wand_anim/lumos_enter/lumos_enter5
execute as @s[scores={animTest=4}] run function hp:animation/wand_anim/lumos_enter/lumos_enter4
execute as @s[scores={animTest=3}] run function hp:animation/wand_anim/lumos_enter/lumos_enter3
execute as @s[scores={animTest=2}] run function hp:animation/wand_anim/lumos_enter/lumos_enter2
execute as @s[scores={animTest=1}] run function hp:animation/wand_anim/lumos_enter/lumos_enter1


execute as @s[scores={animTest=10},tag=!inLumosArea] run tag @s add lumosEffectNightVision
execute as @s[scores={animTest=10},tag=!inLumosArea] run tag @s add lumosEffectBlindness
execute as @s[scores={animTest=14},tag=inLumosArea] run tag @s add lumosEffectNightVision
execute as @s[scores={animTest=14},tag=inLumosArea] run tag @s add lumosEffectBlindness

execute as @s[scores={animTest=14}] run tag @s add lumosScreenFade
execute as @s[scores={animTest=1}] run scoreboard players set @s animState 3
execute as @s[scores={animTest=1}] run tag @s remove anim_playing
execute as @s[scores={animTest=1}] run tag @s remove anim_lumosEnter
execute as @s[scores={animTest=1}] run tag @s remove anim_playingLumosEnter