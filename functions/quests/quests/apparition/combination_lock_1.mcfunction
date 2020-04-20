# 4 Red
execute if score apparitionChainProgress global matches 4 if score apparitionRedChain global matches 1 run scoreboard players set apparitionLamp2 global 20
execute if score apparitionChainProgress global matches 4 if score apparitionRedChain global matches 1 run scoreboard players set apparitionChainComplete global 1
execute if score apparitionChainProgress global matches 4 if score apparitionBlueChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 4 if score apparitionOrangeChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 4 if score apparitionGreenChain global matches 1 run scoreboard players set apparitionChainError global 1

# 3 Green
execute if score apparitionChainProgress global matches 3 if score apparitionRedChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 3 if score apparitionBlueChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 3 if score apparitionOrangeChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 3 if score apparitionGreenChain global matches 1 run scoreboard players set apparitionLamp1 global 20
execute if score apparitionChainProgress global matches 3 if score apparitionGreenChain global matches 1 run scoreboard players add apparitionChainProgress global 1

# 2 Blue
execute if score apparitionChainProgress global matches 2 if score apparitionRedChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 2 if score apparitionBlueChain global matches 1 run scoreboard players set apparitionLamp4 global 20
execute if score apparitionChainProgress global matches 2 if score apparitionBlueChain global matches 1 run scoreboard players add apparitionChainProgress global 1
execute if score apparitionChainProgress global matches 2 if score apparitionOrangeChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 2 if score apparitionGreenChain global matches 1 run scoreboard players set apparitionChainError global 1

# 1 Orange
execute if score apparitionChainProgress global matches 1 if score apparitionRedChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 1 if score apparitionBlueChain global matches 1 run scoreboard players set apparitionChainError global 1
execute if score apparitionChainProgress global matches 1 if score apparitionOrangeChain global matches 1 run scoreboard players set apparitionLamp3 global 20
execute if score apparitionChainProgress global matches 1 if score apparitionOrangeChain global matches 1 run scoreboard players add apparitionChainProgress global 1
execute if score apparitionChainProgress global matches 1 if score apparitionGreenChain global matches 1 run scoreboard players set apparitionChainError global 1

# Error
execute if score apparitionChainError global matches 1 run playsound minecraft:custom.ui.error master @a 8952 76 -32 5 1
execute if score apparitionChainError global matches 1 run scoreboard players set apparitionRedLamps global 20
execute if score apparitionChainError global matches 1 run scoreboard players set apparitionChainProgress global 1
execute if score apparitionChainError global matches 1 run scoreboard players set apparitionChainError global 0

# Complete
execute if score apparitionChainComplete global matches 1 run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @a 8952 76 -32 5 2
execute if score apparitionChainComplete global matches 1 run scoreboard players set apparitionChainProgress global 1
execute if score apparitionChainComplete global matches 1 run scoreboard players set apparitionMelodyProgress global 2
execute if score apparitionChainComplete global matches 1 as ea848d49-9178-49e1-9ff6-8c095b428355 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute if score apparitionChainComplete global matches 1 run scoreboard players set apparitionChainComplete global 0

# Reset chains
scoreboard players set apparitionRedChain global 0
scoreboard players set apparitionBlueChain global 0
scoreboard players set apparitionOrangeChain global 0
scoreboard players set apparitionGreenChain global 0