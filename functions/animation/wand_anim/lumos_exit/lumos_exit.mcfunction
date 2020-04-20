execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumExit
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumLift
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumPutDown
execute as @s[tag=!anim_playing] run tag @s remove anim_alohomora
execute as @s[tag=!anim_playing] run tag @s remove anim_stupefy

execute as @s[tag=!anim_playing] run tag @s add anim_playing
execute as @s[scores={animTest=12}] run function hp:animation/wand_anim/lumos_exit/lumos_exit12
execute as @s[scores={animTest=11}] run function hp:animation/wand_anim/lumos_exit/lumos_exit11
execute as @s[scores={animTest=10}] run function hp:animation/wand_anim/lumos_exit/lumos_exit10
execute as @s[scores={animTest=9}] run function hp:animation/wand_anim/lumos_exit/lumos_exit9
execute as @s[scores={animTest=8}] run function hp:animation/wand_anim/lumos_exit/lumos_exit8
execute as @s[scores={animTest=7}] run function hp:animation/wand_anim/lumos_exit/lumos_exit7
execute as @s[scores={animTest=6}] run function hp:animation/wand_anim/lumos_exit/lumos_exit6
execute as @s[scores={animTest=5}] run function hp:animation/wand_anim/lumos_exit/lumos_exit5
execute as @s[scores={animTest=4}] run function hp:animation/wand_anim/lumos_exit/lumos_exit4
execute as @s[scores={animTest=3}] run function hp:animation/wand_anim/lumos_exit/lumos_exit3
execute as @s[scores={animTest=2}] run function hp:animation/wand_anim/lumos_exit/lumos_exit2
execute as @s[scores={animTest=1}] run function hp:animation/wand_anim/lumos_exit/lumos_exit1


execute as @s[scores={animTest=4},tag=inLumosArea] run effect clear @s minecraft:night_vision
execute as @s[scores={animTest=4},tag=inLumosArea] run tag @s remove lumosEffectNightVision
execute as @s[scores={animTest=3},tag=inLumosArea,tag=!inLumosAir] run effect clear @s minecraft:blindness
execute as @s[scores={animTest=3},tag=inLumosArea,tag=!inLumosAir] run tag @s remove lumosEffectBlindness

execute as @s[scores={animTest=11}] run tag @s remove inLumos

execute as @s[scores={animTest=7},tag=!inLumosArea] run effect clear @s minecraft:night_vision
execute as @s[scores={animTest=7},tag=!inLumosArea] run tag @s remove lumosEffectNightVision
execute as @s[scores={animTest=6},tag=!inLumosArea,tag=!inLumosAir] run effect clear @s minecraft:blindness
execute as @s[scores={animTest=6},tag=!inLumosArea,tag=!inLumosAir] run tag @s remove lumosEffectBlindness

execute as @s[scores={animTest=7}] run tag @s remove lumosScreenFade

execute as @s[scores={animTest=1}] run scoreboard players set @s animState 0
execute as @s[scores={animTest=1}] run tag @s remove anim_playing
execute as @s[scores={animTest=1}] run tag @s remove anim_lumosExit
execute as @s[scores={animTest=1}] run tag @s remove anim_playingLumosExit