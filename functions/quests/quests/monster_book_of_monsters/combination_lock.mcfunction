# 9 green
execute if score secondHandBooksChainProgress global matches 9 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 9 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 9 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 9 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainComplete global 1

# 8 blue
execute if score secondHandBooksChainProgress global matches 8 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 8 if score secondHandBooksBlueChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 8 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 8 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 7 Red
execute if score secondHandBooksChainProgress global matches 7 if score secondHandBooksRedChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 7 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 7 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 7 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 6 Orange
execute if score secondHandBooksChainProgress global matches 6 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 6 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 6 if score secondHandBooksOrangeChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 6 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 5 Green
execute if score secondHandBooksChainProgress global matches 5 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 5 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 5 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 5 if score secondHandBooksGreenChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1

# 4 Red
execute if score secondHandBooksChainProgress global matches 4 if score secondHandBooksRedChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 4 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 4 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 4 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 3 Orange
execute if score secondHandBooksChainProgress global matches 3 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 3 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 3 if score secondHandBooksOrangeChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 3 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 2 Red
execute if score secondHandBooksChainProgress global matches 2 if score secondHandBooksRedChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 2 if score secondHandBooksBlueChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 2 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 2 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# 1 Blue
execute if score secondHandBooksChainProgress global matches 1 if score secondHandBooksRedChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 1 if score secondHandBooksBlueChain global matches 1 run scoreboard players add secondHandBooksChainProgress global 1
execute if score secondHandBooksChainProgress global matches 1 if score secondHandBooksOrangeChain global matches 1 run scoreboard players set secondHandBooksChainError global 1
execute if score secondHandBooksChainProgress global matches 1 if score secondHandBooksGreenChain global matches 1 run scoreboard players set secondHandBooksChainError global 1

# Error
execute if score secondHandBooksChainError global matches 1 run playsound minecraft:custom.ui.error master @a 2821 50 800 2 1
execute if score secondHandBooksChainError global matches 1 run scoreboard players set secondHandBooksChainProgress global 1
execute if score secondHandBooksChainError global matches 1 run scoreboard players set secondHandBooksChainError global 0

# Complete
execute if score secondHandBooksChainComplete global matches 1 run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @a 2821 50 800 2 2
execute if score secondHandBooksChainComplete global matches 1 run tag 3f0646a8-b08e-47d8-b6a4-7ac2acb6ef19 add open
execute if score secondHandBooksChainComplete global matches 1 run scoreboard players set secondHandBooksChainProgress global 1
execute if score secondHandBooksChainComplete global matches 1 run scoreboard players set secondHandBooksChainComplete global 0

# Reset chains
scoreboard players set secondHandBooksRedChain global 0
scoreboard players set secondHandBooksBlueChain global 0
scoreboard players set secondHandBooksOrangeChain global 0
scoreboard players set secondHandBooksGreenChain global 0

# If entering 
execute if score secondHandBroomCellarIsEmpty global matches 1 run tag cd6aea63-d9ed-4a56-951b-422fb9d2cebf remove disable
execute if score secondHandBroomCellarIsEmpty global matches 1 run scoreboard players set secondHandBroomCellarIsEmpty global 0