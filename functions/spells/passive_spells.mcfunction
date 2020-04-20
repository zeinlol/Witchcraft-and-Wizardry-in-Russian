
#################
# Lumos Logic   #
#################
# Split into seperate functions to optimise in the future!

# Check for blocks
execute at @s[tag=!inProperCutScene,tag=!inResetPoint,tag=play,tag=!inLumosAir] if block ~ ~1 ~ minecraft:cave_air run tag @s add inLumosAir
execute at @s[tag=!inProperCutScene,tag=!inResetPoint,tag=play,tag=inLumosAir] anchored eyes if block ~ ~1 ~ minecraft:air run tag @s remove inLumosAir

# On entering lumos air
execute as @s[tag=inLumosAir,tag=!isinLumosAir] run tag @s add inLumosArea
execute as @s[tag=inLumosAir,tag=!isinLumosAir] run tag @s add inLumosTransitionArea
execute as @s[tag=inLumosAir,tag=!isinLumosAir] run tag @s add isinLumosAir
# On entering exiting air
execute as @s[tag=!inLumosAir,tag=isinLumosAir] run tag @s remove isinLumosAir


# Detect if the player is in a lumos transition area
execute at @s if entity @e[tag=lumosEnterArea,limit=1,sort=nearest,distance=0..5.5] run tag @s add inLumosTransitionArea
execute at @s[tag=!inLumosAir] unless entity @e[tag=lumosEnterArea,limit=1,sort=nearest,distance=0..5.5] run tag @s remove inLumosTransitionArea

# Detect if the player is in lumos area. This is slightly after the lumos transition area which improves the visual side, especially when leaving the lumos area
execute at @s if entity @e[tag=lumosEnterArea,limit=1,sort=nearest,distance=0..3] run tag @s add inLumosArea
execute at @s[tag=!inLumosAir] unless entity @e[tag=lumosEnterArea,limit=1,sort=nearest,distance=0..3] run tag @s remove inLumosArea

# Lumos transition area where tracked quest is hidden to allow for screenfade, but where it's still too bright to use the lumos spell
# On entering lumos transition area
execute as @s[tag=inLumosTransitionArea,tag=!isInLumosTransitionArea,scores={trackedQuestID=1..}] run tag @s remove showTrackedQuest
execute as @s[tag=inLumosTransitionArea,tag=!isInLumosTransitionArea] run tag @s add isInLumosTransitionArea

# On exiting lumos transition area
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,tag=isInLumosTransitionArea,scores={trackedQuestID=1..}] run tag @s add silentQuestAnimation
execute as @s[tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,tag=isInLumosTransitionArea,scores={trackedQuestID=1..}] run tag @s add showTrackedQuest
execute as @s[tag=!isDrowning,tag=!inLumosTransitionArea,tag=isInLumosTransitionArea] run tag @s remove isInLumosTransitionArea

# On entering lumos area
execute as @s[tag=inLumosArea,tag=!isInLumosArea] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 0.05 2 0.05
execute as @s[tag=inLumosArea,tag=!isInLumosArea] run tag @s add isInLumosArea

# On exiting lumos area
execute as @s[tag=!inLumosArea,tag=isInLumosArea] run tag @s remove isInLumosArea

# Remove barrier from lumos area if player has activated lumos
execute at @s[tag=inLumosArea,tag=inLumos] as @e[tag=lumosEnterArea,tag=!openLumosEnterArea,limit=1,sort=nearest] unless entity @s[distance=5.5..] run function hp:spells/spell/open_lumos_barrier
execute as @e[tag=openLumosEnterArea] at @s unless entity @p[tag=inLumos,distance=..5.5] run function hp:spells/spell/close_lumos_barrier

# Detect exit
execute as @s[tag=inLumos,tag=!inLumosArea] run tag @s add lumosExit

# Exit lumos
execute as @s[tag=lumosExit] run tag @s remove inLumos
execute as @s[tag=lumosExit] run tag @s add anim_lumosExit
execute as @s[tag=lumosExit] run tag @s remove preventPunching
execute as @s[tag=lumosExit] run function hp:spells/spell/close_lumos_barrier
execute as @s[tag=lumosExit] at @s run playsound minecraft:custom.spell.lumos.cast master @a ~ ~ ~ 1 0.75
execute as @s[tag=lumosExit] run tag @s remove lumosExit

# Give Lumos Effects
execute at @s[tag=inLumos,tag=lumosEffectNightVision] run effect give @s minecraft:night_vision 100 1 true
execute at @s[tag=inLumos,tag=lumosEffectBlindness,tag=!AMDgraphicsCard] run effect give @s minecraft:blindness 100 1 true
execute at @s[tag=inLumos,tag=lumosEffectBlindness,tag=AMDgraphicsCard] run effect clear @s minecraft:blindness
execute at @s[tag=!inLumos,tag=!lumosEnterArea,tag=inLumosAir,tag=lumosEffectBlindness] run effect give @s minecraft:blindness 100 1 true
execute at @s[tag=!inLumos,tag=!lumosEnterArea,tag=!inLumosAir,tag=lumosEffectBlindness,tag=!anim_lumosExit] unless score @s patronusBlast matches 250.. run effect clear @s minecraft:blindness
