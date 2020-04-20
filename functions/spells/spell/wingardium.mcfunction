execute at @s run playsound minecraft:custom.spell.wingardium.enter master @a
execute at @s run tag @s add anim_wingardiumEnter
tag @s add inWingardium
tag @s add preventDoubleExecution
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["rc_ray_disabled","rc_rayIsBeingSpawned"]}
execute as @e[tag=rc_rayIsBeingSpawned,limit=1] run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
execute as @e[tag=rc_rayIsBeingSpawned,limit=1] run tag @s remove rc_rayIsBeingSpawned
scoreboard players set @s wingardiumInput 6