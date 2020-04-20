execute as @s[tag=stupefyDirection] run function hp:spells/spell/stupefy_spell
execute as @s[tag=bombardaDirection] run function hp:spells/spell/bombarda_spell
execute as @s[tag=wingardium] run function hp:spells/spell/wingardium_box
execute as @s[tag=BrackiumArea] run function hp:spells/spell/brackium_area
execute as @s[tag=AlohomoraUnlockedDoor] run function hp:spells/spell/alohomora_door
execute as @s[tag=stupefyTarget,scores={animTest=1..}] run function hp:spells/spell/stupefy_target
execute as @s[tag=snakeChain,scores={animTest=1..}] run function hp:misc/snake_chain
execute as @s[tag=lever,scores={animTest=1..}] run function hp:misc/lever
execute as @s[tag=rotatingPillar] run function hp:misc/rotating_pillar
execute as @s[tag=bookshelf_door] run function hp:misc/book_shelves
execute as @s[tag=fakeChest,tag=burstOpen] run function hp:misc/fake_chest

# Brooms
execute as @s[tag=broomElytra] run function hp:items/broom_base

# Vera Verto Objects
execute as @s[tag=magnet,scores={animTest=1..}] run function hp:spells/spell/vera_verto_magnet
execute as @s[tag=jumpPlant,scores={animTest=1..}] run function hp:spells/spell/vera_verto_jump_plant
execute as @s[tag=activeVeraVertoObject,scores={animTest=0}] run function hp:spells/spell/vera_verto_jump_plant
execute as @s[tag=activeVeraVertoObject] run function hp:spells/spell/active_vera_verto_object

# magnet
execute as @s[tag=magneticObject,scores={magnetPriority=1}] run function hp:spells/spell/vera_verto_magnetic_object
execute as @s[tag=magneticObject,tag=magneticObjectHasBeenReset] run function hp:misc/reset_magnetic_object_fill

# Quickslot
execute as @s[tag=weatherInABottle] run function hp:items/weather_in_a_bottle
execute as @s[tag=fireworksRocketDirection] run function hp:items/fireworks_rocket

# Patronus
execute as @s[tag=patronus,tag=lion] run function hp:spells/spell/lion_patronus
execute as @s[tag=patronus,tag=owl] run function hp:spells/spell/owl_patronus
execute as @s[tag=patronus,tag=niffler] run function hp:spells/spell/niffler_patronus
execute as @s[tag=patronus,tag=wolf] run function hp:spells/spell/wolf_patronus
execute as @s[tag=patronus,tag=stag] run function hp:spells/spell/stag_patronus

# Radio and gramophone
execute as @s[tag=radio] run function hp:misc/radio
execute as @s[tag=gramophone] run function hp:misc/gramophone

# Owl
execute as @s[tag=owl,tag=!patronus] run function hp:misc/owl/owl

# Pigeons
execute as @s[tag=pigeonFlock] run function hp:misc/pigeons
execute as @s[tag=pigeon] run function hp:misc/pigeons_fly_away


# Helper spell
execute as @s[tag=helperSpellDirection] at @s run function hp:npc/helpers/helper_spell
