execute as @s[scores={toolType=0},tag=south] run setblock ~ ~ ~ minecraft:oak_door[half=lower,facing=south]
execute as @s[scores={toolType=0},tag=south] run setblock ~ ~1 ~ minecraft:oak_door[half=upper,facing=south]
execute as @s[scores={toolType=0},tag=east] run setblock ~ ~ ~ minecraft:oak_door[half=lower,facing=east]
execute as @s[scores={toolType=0},tag=east] run setblock ~ ~1 ~ minecraft:oak_door[half=upper,facing=east]
execute as @s[scores={toolType=0},tag=north] run setblock ~ ~ ~ minecraft:oak_door[half=lower,facing=north]
execute as @s[scores={toolType=0},tag=north] run setblock ~ ~1 ~ minecraft:oak_door[half=upper,facing=north]
execute as @s[scores={toolType=0},tag=west] run setblock ~ ~ ~ minecraft:oak_door[half=lower,facing=west]
execute as @s[scores={toolType=0},tag=west] run setblock ~ ~1 ~ minecraft:oak_door[half=upper,facing=west]

execute as @s[scores={toolType=1},tag=south] run setblock ~ ~ ~ minecraft:spruce_door[half=lower,facing=south]
execute as @s[scores={toolType=1},tag=south] run setblock ~ ~1 ~ minecraft:spruce_door[half=upper,facing=south]
execute as @s[scores={toolType=1},tag=east] run setblock ~ ~ ~ minecraft:spruce_door[half=lower,facing=east]
execute as @s[scores={toolType=1},tag=east] run setblock ~ ~1 ~ minecraft:spruce_door[half=upper,facing=east]
execute as @s[scores={toolType=1},tag=north] run setblock ~ ~ ~ minecraft:spruce_door[half=lower,facing=north]
execute as @s[scores={toolType=1},tag=north] run setblock ~ ~1 ~ minecraft:spruce_door[half=upper,facing=north]
execute as @s[scores={toolType=1},tag=west] run setblock ~ ~ ~ minecraft:spruce_door[half=lower,facing=west]
execute as @s[scores={toolType=1},tag=west] run setblock ~ ~1 ~ minecraft:spruce_door[half=upper,facing=west]

execute as @s[scores={toolType=2},tag=south] run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=south]
execute as @s[scores={toolType=2},tag=south] run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=south]
execute as @s[scores={toolType=2},tag=east] run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=east]
execute as @s[scores={toolType=2},tag=east] run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=east]
execute as @s[scores={toolType=2},tag=north] run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=north]
execute as @s[scores={toolType=2},tag=north] run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=north]
execute as @s[scores={toolType=2},tag=west] run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=west]
execute as @s[scores={toolType=2},tag=west] run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=west]

execute as @s[scores={toolType=3},tag=south] run setblock ~ ~ ~ minecraft:dark_oak_door[half=lower,facing=south]
execute as @s[scores={toolType=3},tag=south] run setblock ~ ~1 ~ minecraft:dark_oak_door[half=upper,facing=south]
execute as @s[scores={toolType=3},tag=east] run setblock ~ ~ ~ minecraft:dark_oak_door[half=lower,facing=east]
execute as @s[scores={toolType=3},tag=east] run setblock ~ ~1 ~ minecraft:dark_oak_door[half=upper,facing=east]
execute as @s[scores={toolType=3},tag=north] run setblock ~ ~ ~ minecraft:dark_oak_door[half=lower,facing=north]
execute as @s[scores={toolType=3},tag=north] run setblock ~ ~1 ~ minecraft:dark_oak_door[half=upper,facing=north]
execute as @s[scores={toolType=3},tag=west] run setblock ~ ~ ~ minecraft:dark_oak_door[half=lower,facing=west]
execute as @s[scores={toolType=3},tag=west] run setblock ~ ~1 ~ minecraft:dark_oak_door[half=upper,facing=west]

tag @s remove interactable
tag @s remove locked

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
data merge entity @s {HandItems:[{},{}]}