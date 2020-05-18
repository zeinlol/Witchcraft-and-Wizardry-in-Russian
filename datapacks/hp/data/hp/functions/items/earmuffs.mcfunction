effect give @s[tag=earmuffs] minecraft:slowness 100 1 true
tag @s[tag=earmuffs] add preventPunching

# Exit
tag @s[tag=isSneaking,scores={shiftTest=1},tag=earmuffs,tag=!exitEarmuffs] add exitEarmuffs

execute as @s[tag=!hoverLocked] at @s positioned ^ ^1 ^1 run tag @e[distance=..1,limit=1,sort=nearest,tag=mandrake] add earmuffHover

execute as @s[tag=hasPressedF,tag=!hoverLocked] at @s positioned ^ ^1 ^1 run scoreboard players set @e[distance=..1,limit=1,sort=nearest,tag=mandrake] idle 30000
execute as @s[tag=hasPressedF,tag=!hoverLocked] at @s positioned ^ ^1 ^1 run tag @e[distance=..1,limit=1,sort=nearest,tag=mandrake] add mandrakeHiding
execute as @s[tag=hasPressedF,tag=!hoverLocked] at @s positioned ^ ^1 ^1 at @e[distance=..1,limit=1,sort=nearest,tag=mandrake] run playsound minecraft:custom.creatures.mandrake.replant record @a ~ ~ ~
execute as @s[tag=!hoverLocked] at @s positioned ^ ^1 ^1 if entity @e[distance=..1,limit=1,sort=nearest,tag=mandrake,tag=!mandrakeHiding] run tag @s add isHoveringOnMandrake

# Stop sounds
stopsound @s ambient
stopsound @s block
stopsound @s hostile
stopsound @s master
stopsound @s music
stopsound @s neutral
stopsound @s player
stopsound @s weather

# Remove ear muffs when falling / jumping
execute store result score @s tmp run data get entity @s FallDistance 10
execute if score @s tmp matches 1.. run tag @s add exitEarmuffs

# Exit ear muffs
tag @s[tag=earmuffs,tag=exitEarmuffs,scores={selectedSlot=1}] add anim_enter
effect clear @s[tag=earmuffs,tag=exitEarmuffs] minecraft:slowness
tag @s[tag=earmuffs,tag=exitEarmuffs] remove preventPunching
tag @s[tag=!isDrowning,tag=earmuffs,tag=exitEarmuffs,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=earmuffs,tag=exitEarmuffs,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=earmuffs,tag=exitEarmuffs,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest
tag @s[tag=earmuffs,tag=exitEarmuffs] remove earmuffs

tag @s[tag=exitEarmuffs,tag=!earmuffs] remove exitEarmuffs