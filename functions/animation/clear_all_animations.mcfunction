# Removes all animations currently running - Used when entering conversation.

scoreboard players set @s animTest 0
scoreboard players set @s[tag=!inLumos] animState 0

tag @s remove anim_playing

tag @s remove anim_enter
tag @s remove anim_playingEnter

tag @s remove anim_stupefy
tag @s remove anim_playingStupefy

tag @s remove anim_stupefy
tag @s remove anim_playingStupefy
tag @s remove castBombardium

tag @s remove anim_wingardiumEnter
tag @s remove anim_playingWingardiumEnter

tag @s remove anim_wingardiumLift
tag @s remove anim_playingWingardiumLift

tag @s remove anim_wingardiumPutDown
tag @s remove anim_playingWingardiumPutDown

tag @s remove anim_wingardiumExit
tag @s remove anim_playingWingardiumExit

tag @s remove anim_alohomora
tag @s remove anim_playingAlohomora

tag @s remove anim_lumosEnter
tag @s remove anim_playingLumosEnter

tag @s remove anim_lumosExit
tag @s remove anim_playingLumosExit