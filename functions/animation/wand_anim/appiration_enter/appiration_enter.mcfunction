execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumExit
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumLift
execute as @s[tag=!anim_playing] run tag @s remove anim_wingardiumPutDown
execute as @s[tag=!anim_playing] run tag @s remove anim_alohomora
execute as @s[tag=!anim_playing] run tag @s remove anim_stupefy
execute as @s[tag=!anim_playing] run tag @s remove anim_lumosEnter
execute as @s[tag=!anim_playing] run tag @s remove anim_lumosExit

execute as @s[tag=!anim_playing] run tag @s add anim_playing
execute as @s[scores={animTest=10}] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @s ~ ~ ~ 0.5 0.7
execute as @s[scores={animTest=10}] run function hp:animation/wand_anim/appiration_enter/appiration_enter10
execute as @s[scores={animTest=9}] run function hp:animation/wand_anim/appiration_enter/appiration_enter9
execute as @s[scores={animTest=8}] run function hp:animation/wand_anim/appiration_enter/appiration_enter8
execute as @s[scores={animTest=7}] run function hp:animation/wand_anim/appiration_enter/appiration_enter7
execute as @s[scores={animTest=6}] run function hp:animation/wand_anim/appiration_enter/appiration_enter6
execute as @s[scores={animTest=5}] run function hp:animation/wand_anim/appiration_enter/appiration_enter5
execute as @s[scores={animTest=4}] run function hp:animation/wand_anim/appiration_enter/appiration_enter4
execute as @s[scores={animTest=3}] run function hp:animation/wand_anim/appiration_enter/appiration_enter3
execute as @s[scores={animTest=2}] run function hp:animation/wand_anim/appiration_enter/appiration_enter2
execute as @s[scores={animTest=1}] run function hp:animation/wand_anim/appiration_enter/appiration_enter1

execute as @s[scores={animTest=1}] run scoreboard players set @s animState 4
execute as @s[scores={animTest=1}] run tag @s remove anim_playing
execute as @s[scores={animTest=1}] run tag @s remove anim_appirationEnter
execute as @s[scores={animTest=1}] run tag @s remove anim_playingAppirationEnter