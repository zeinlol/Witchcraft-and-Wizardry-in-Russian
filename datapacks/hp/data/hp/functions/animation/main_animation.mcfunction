# Decay
scoreboard players remove @s[scores={animTest=1..}] animTest 1

# Enter 
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_enter,tag=!anim_playingEnter] run scoreboard players set @s animTest 16
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_enter,tag=!anim_playingEnter] run tag @s add anim_playingEnter
execute as @s[scores={animState=4},tag=!anim_playing,tag=anim_enter,tag=!anim_playingEnter] run scoreboard players set @s animTest 16
execute as @s[scores={animState=4},tag=!anim_playing,tag=anim_enter,tag=!anim_playingEnter] run tag @s add anim_playingEnter
execute as @s[tag=anim_playingEnter] run function hp:animation/wand_anim/enter

# Stupefy
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_stupefy,tag=!anim_playingStupefy] run scoreboard players set @s animTest 23
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_stupefy,tag=!anim_playingStupefy] run tag @s add anim_playingStupefy
execute as @s[tag=anim_playingStupefy] run function hp:animation/wand_anim/stupefy

# Wingardium Enter
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_wingardiumEnter,tag=!anim_playingWingardiumEnter] run scoreboard players set @s animTest 12
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_wingardiumEnter,tag=!anim_playingWingardiumEnter] run tag @s add anim_playingWingardiumEnter
execute as @s[tag=anim_playingWingardiumEnter] run function hp:animation/wand_anim/wingardium_enter/wingardium_enter
 
# Wingardium Lift
execute as @s[scores={animState=1},tag=!anim_playing,tag=anim_wingardiumLift,tag=!anim_playingWingardiumLift] run scoreboard players set @s animTest 8
execute as @s[scores={animState=1},tag=!anim_playing,tag=anim_wingardiumLift,tag=!anim_playingWingardiumLift] run tag @s add anim_playingWingardiumLift
execute as @s[tag=anim_playingWingardiumLift] run function hp:animation/wand_anim/wingardium_lift/wingardium_lift

# Wingardium Put Down
execute as @s[scores={animState=2},tag=!anim_playing,tag=anim_wingardiumPutDown,tag=!anim_playingWingardiumPutDown] run scoreboard players set @s animTest 9
execute as @s[scores={animState=2},tag=!anim_playing,tag=anim_wingardiumPutDown,tag=!anim_playingWingardiumPutDown] run tag @s add anim_playingWingardiumPutDown
execute as @s[tag=anim_playingWingardiumPutDown] run function hp:animation/wand_anim/wingardium_put_down/wingardium_put_down

# Wingardium Exit
execute as @s[scores={animState=1},tag=!anim_playing,tag=anim_wingardiumExit,tag=!anim_playingWingardiumExit] run scoreboard players set @s animTest 12
execute as @s[scores={animState=1},tag=!anim_playing,tag=anim_wingardiumExit,tag=!anim_playingWingardiumExit] run tag @s add anim_playingWingardiumExit
execute as @s[tag=anim_playingWingardiumExit] run function hp:animation/wand_anim/wingardium_exit/wingardium_exit

# Alohomora
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_alohomora,tag=!anim_playingAlohomora] run scoreboard players set @s animTest 26
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_alohomora,tag=!anim_playingAlohomora] run tag @s add anim_playingAlohomora
execute as @s[tag=anim_playingAlohomora] run function hp:animation/wand_anim/alohomora


# Lumos Enter
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_lumosEnter,tag=!anim_playingLumosEnter] run scoreboard players set @s animTest 14
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_lumosEnter,tag=!anim_playingLumosEnter] run tag @s add anim_playingLumosEnter
execute as @s[tag=anim_playingLumosEnter] run function hp:animation/wand_anim/lumos_enter/lumos_enter

# Lumos Exit
execute as @s[scores={animState=3},tag=!anim_playing,tag=anim_lumosExit,tag=!anim_playingLumosExit] run scoreboard players set @s animTest 12
execute as @s[scores={animState=3},tag=!anim_playing,tag=anim_lumosExit,tag=!anim_playingLumosExit] run tag @s add anim_playingLumosExit
execute as @s[tag=anim_playingLumosExit] run function hp:animation/wand_anim/lumos_exit/lumos_exit

# Appiration Enter
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_appirationEnter,tag=!anim_playingAppirationEnter] run scoreboard players set @s animTest 10
execute as @s[scores={animState=0},tag=!anim_playing,tag=anim_appirationEnter,tag=!anim_playingAppirationEnter] run tag @s add anim_playingAppirationEnter
execute as @s[tag=anim_playingAppirationEnter] run function hp:animation/wand_anim/appiration_enter/appiration_enter

# Idle
execute as @s[tag=!anim_playingLumosExit,tag=!anim_playingLumosEnter,tag=!anim_playingStupefy,tag=!anim_playingWingardiumEnter,tag=!anim_playingWingardiumLift,tag=!anim_playingWingardiumPutDown,tag=!anim_playingWingardiumExit,tag=!anim_playingAlohomora,tag=!anim_playingEnter,tag=!anim_playingAppirationEnter] run function hp:animation/wand_anim/idle