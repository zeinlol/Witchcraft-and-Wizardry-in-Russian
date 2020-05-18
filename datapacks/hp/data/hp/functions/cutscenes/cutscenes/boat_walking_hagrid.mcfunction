execute as @s[scores={cutSceneTimer=1}] run tag @e[tag=fpEngine,tag=boatWalkingHagridFpEngine,limit=1] add ignorePlayers
execute as @s[scores={cutSceneTimer=1}] run tag @e[tag=fpEngine,tag=boatWalkingHagridFpEngine,limit=1] remove interrupt
execute as @s[scores={cutSceneTimer=1}] run tag @e[tag=fpEngine,tag=boatWalkingHagridFpEngine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=1}] at @e[tag=boatWalkingHagridLayer1,limit=1] run tag @e[tag=hagrid,distance=..3] remove interactable

# Subtitles
execute as @s[scores={cutSceneTimer=50}] as @a[tag=cutsceneSlave] run tag @s add cutsceneOverrideActionbar
execute as @s[scores={cutSceneTimer=1700}] as @a[tag=cutsceneSlave] run tag @s remove cutsceneOverrideActionbar


# ¤Hagrid:¤ Right then, first years!
# 

execute as @s[scores={cutSceneTimer=50..150}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=50}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0
execute as @s[scores={cutSceneTimer=50..}] run tag @e[tag=boatWalkingHagridFpEngine,tag=cutsceneStop,limit=1] remove cutsceneStop

# ¤Hagrid:¤ Ye' all get yer firs' sight o' Hogwarts in a sec, jus' follow me ter the boats.
# 
execute as @s[scores={cutSceneTimer=151..300}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=151}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Come on now, firs' years, don’t be shy.
# 
execute as @s[scores={cutSceneTimer=301..375}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=301}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Right then, this way ter the boats. Come on now, follow me.
# 
execute as @s[scores={cutSceneTimer=376..450}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=376}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ 'Tis a beautiful sight, I tell yeh. I remember me firs' time seein' it.
# 
execute as @s[scores={cutSceneTimer=451..600}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=451}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ I got sorted into Gryffindor! House o' the brave! Some folk even say the reckless, ha!
# 
execute as @s[scores={cutSceneTimer=601..750}] run title @a[tag=cutsceneSlave] actionbar  ""
execute as @s[scores={cutSceneTimer=601}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Well I suppose McGonagall will tell yeh abou' tha'§stuff if yeh don't already know it.
# 
execute as @s[scores={cutSceneTimer=751..900}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=751}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Aw, look at yeh. I hope you all have a grand time of it here at Hogwarts!
# 
execute as @s[scores={cutSceneTimer=901..1050}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=901}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Better than mine, I shoul' say. 
# 
execute as @s[scores={cutSceneTimer=1051..1150}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1051}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Had a bit of a mishap back in my day,§so me education 'ere was cut short, yeh see.
# 
execute as @s[scores={cutSceneTimer=1151..1300}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1151}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Well, best not get into that. An' don't bother asking either. 
# 
execute as @s[scores={cutSceneTimer=1301..1425}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1301}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Thanks ter Dumbledore I'm still 'ere, as the gamekeeper.
# 
execute as @s[scores={cutSceneTimer=1426..1500}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1426}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0


# ¤Hagrid:¤ He's a good man, Dumbledore. I tell yeh!
# 
execute as @s[scores={cutSceneTimer=1500..1575}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1500}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0

# ¤Hagrid:¤ Nearly there!
# 
execute as @s[scores={cutSceneTimer=1575..1700}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=1575}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice6 master @a ~ ~ ~ 1 0.85 0
execute as @s[scores={cutSceneTimer=1700}] run title @a[tag=cutsceneSlave] actionbar ""
#####################################################################################

# When arriving
execute as @s[tag=endBoatWalkingCutscene,scores={cutSceneTimer=..4800}] run scoreboard players set @s cutSceneTimer 4800
execute as @s[scores={cutSceneTimer=4800}] as @a[tag=cutsceneSlave] run tag @s add cutsceneOverrideActionbar

# ¤Hagrid:¤ Well now. You'd best get in one of them boats, an' we'll be off ter the castle.
# 
execute as @s[scores={cutSceneTimer=4800..5000}] run title @a[tag=cutsceneSlave] actionbar ""
execute as @s[scores={cutSceneTimer=4800}] as @e[tag=boatWalkingHagridLayer3,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1 0.85 0

execute as @s[scores={cutSceneTimer=5000}] as @e[tag=fpEngine,tag=boatWalkingHagridFpEngine,limit=1] run tag @s remove ignorePlayers
execute as @s[scores={cutSceneTimer=5000}] as @a[tag=cutsceneSlave] run tag @s remove endBoatWalkingCutscene
execute as @s[scores={cutSceneTimer=5000}] as @a[tag=cutsceneSlave] run tag @s remove cutsceneOverrideActionbar
execute as @s[scores={cutSceneTimer=5000}] as @a[tag=cutsceneSlave] run tag @s add boatWalkingCutsceneHasEnded
execute as @s[scores={cutSceneTimer=5000}] as @a[tag=cutsceneSlave] run function hp:cutscenes/exit_cutscene

# Expressions 
execute as @s[scores={cutSceneTimer=50..1700}] as @e[tag=boatWalkingHagridLayer3,limit=1] run scoreboard players add @s cutSceneTimer 1
execute as @s[scores={cutSceneTimer=1701}] as @e[tag=boatWalkingHagridLayer3,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 79
execute as @s[scores={cutSceneTimer=4800..4998}] as @e[tag=boatWalkingHagridLayer3,limit=1] run scoreboard players add @s cutSceneTimer 1
execute as @s[scores={cutSceneTimer=4999}] as @e[tag=boatWalkingHagridLayer3,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 79
execute as @e[tag=boatWalkingHagridLayer3,limit=1,scores={cutSceneTimer=8}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 78
execute as @e[tag=boatWalkingHagridLayer3,limit=1,scores={cutSceneTimer=11}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 79
execute as @e[tag=boatWalkingHagridLayer3,limit=1,scores={cutSceneTimer=11}] run scoreboard players set @s cutSceneTimer 0