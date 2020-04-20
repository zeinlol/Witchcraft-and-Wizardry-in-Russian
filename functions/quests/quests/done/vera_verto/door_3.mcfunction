# This is the block animation for door 1
execute if score veraVertoDoor3Direction global matches 1 if score veraVertoDoor3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8620 72 14 5 1

execute if score veraVertoDoor3 global matches 2 run fill 8620 71 14 8620 73 14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor3 global matches 4 run fill 8620 71 14 8620 73 14 minecraft:air
execute if score veraVertoDoor3 global matches 4 run fill 8620 71 14 8620 72 14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor3 global matches 6 run fill 8620 71 14 8620 73 14 minecraft:air
execute if score veraVertoDoor3 global matches 6 run fill 8620 71 14 8620 71 14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor3 global matches 8 run fill 8620 71 14 8620 73 14 minecraft:air
execute if score veraVertoDoor3 global matches 8 as a4e8ad96-04b1-4193-b661-20c78d3a5a81 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute if score veraVertoDoor3 global matches 8 as 68094be7-2221-468a-b248-dd809e20fd5d store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute if score veraVertoDoor3 global matches 8 as 2a845776-8895-43a1-9d58-0d8d6953aa33 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7

execute if score veraVertoDoor3Direction global matches 0 if score veraVertoDoor3 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 8620 72 14 5 1

# Direction
execute if score veraVertoDoor3Direction global matches 1 unless score veraVertoDoor3 global matches 15.. run scoreboard players add veraVertoDoor3 global 1
execute if score veraVertoDoor3Direction global matches 0 unless score veraVertoDoor3 global matches ..-10 run scoreboard players remove veraVertoDoor3 global 1