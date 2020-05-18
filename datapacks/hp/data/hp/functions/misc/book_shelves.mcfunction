execute as @s[tag=open,tag=!bookShelfOpen] run tag @s remove bookShelfClose
execute as @s[tag=open,tag=!bookShelfOpen] run tag @s remove close
execute as @s[tag=open,tag=!bookShelfOpen] run tag @s add changedDirectionThisTick
execute as @s[tag=open,tag=!bookShelfOpen] run tag @s add bookShelfOpen

execute as @s[tag=close,tag=!bookShelfClose] run tag @s remove bookShelfOpen
execute as @s[tag=close,tag=!bookShelfClose] run tag @s remove open
execute as @s[tag=close,tag=!bookShelfClose] run tag @s add changedDirectionThisTick
execute as @s[tag=close,tag=!bookShelfClose] run tag @s add bookShelfClose

execute at @s as @s[tag=!changedDirectionThisTick,tag=bookShelfOpen,scores={animTest=..66}] run scoreboard players add @s animTest 1
execute at @s as @s[tag=!changedDirectionThisTick,tag=bookShelfClose,scores={animTest=-6..}] run scoreboard players remove @s animTest 1


execute at @s as @s[tag=bookShelfOpen,scores={animTest=1}] run playsound minecraft:custom.gameplay_element.bookshelf.move1 master @a ~ ~ ~ 3 1
execute at @s as @s[tag=bookShelfOpen,scores={animTest=1..20}] run tp @s ^ ^ ^-0.051
execute at @s as @s[tag=bookShelfOpen,scores={animTest=21}] run playsound minecraft:custom.gameplay_element.bookshelf.move2 master @a ~ ~ ~ 3 1
execute at @s as @s[tag=bookShelfOpen,scores={animTest=21..60}] run tp @s ^-0.05 ^ ^


# Closing Animation
execute at @s as @s[tag=bookShelfClose,scores={animTest=60}] run playsound minecraft:custom.gameplay_element.bookshelf.move2 master @a ~ ~ ~ 3 1
execute at @s as @s[tag=bookShelfClose,scores={animTest=21..60}] run tp @s ^0.05 ^ ^
execute at @s as @s[tag=bookShelfClose,scores={animTest=21}] run playsound minecraft:custom.gameplay_element.bookshelf.move1 master @a ~ ~ ~ 3 1
execute at @s as @s[tag=bookShelfClose,scores={animTest=1..20}] run tp @s ^ ^ ^0.051

execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^ ^ ^ ^ ^ ^ minecraft:melon replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:melon replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^ ^1 ^ ^ ^1 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^ ^2 ^ ^ ^2 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air
execute at @s as @s[tag=bookShelfClose,scores={animTest=-5}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0

execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^ ^ ^ ^ ^ ^ minecraft:air replace minecraft:melon
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:air replace minecraft:melon
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^ ^1 ^ ^ ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^ ^2 ^ ^ ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]
execute at @s as @s[tag=bookShelfClose,scores={animTest=65}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 48

# Open animation
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^ ^ ^ ^ ^ ^ minecraft:melon replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:melon replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^ ^1 ^ ^ ^1 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^ ^2 ^ ^ ^2 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air
execute at @s as @s[tag=bookShelfOpen,scores={animTest=65}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0

execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^ ^ ^ ^ ^ ^ minecraft:air replace minecraft:melon
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:air replace minecraft:melon
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^ ^1 ^ ^ ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^ ^2 ^ ^ ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]
execute at @s as @s[tag=bookShelfOpen,scores={animTest=-5}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 48


tag @s remove changedDirectionThisTick