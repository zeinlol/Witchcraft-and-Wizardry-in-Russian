execute if score apparitionMelody1 global matches 80 run playsound minecraft:block.note_block.chime master @a 8952 76 -32 5 0.9
execute if score apparitionMelody1 global matches 61..80 run particle minecraft:dust 1 0.5 0 1.25 8952 78 -32 0.1 0.1 0.1 1 10
execute if score apparitionMelody1 global matches 60 run playsound minecraft:block.note_block.chime master @a 8952 76 -32 5 0.7
execute if score apparitionMelody1 global matches 41..60 run particle minecraft:dust 0.5 0.5 1 1.25 8952 78 -32 0.1 0.1 0.1 1 10
execute if score apparitionMelody1 global matches 40 run playsound minecraft:block.note_block.chime master @a 8952 76 -32 5 0.8
execute if score apparitionMelody1 global matches 21..40 run particle minecraft:dust 0.25 0.75 0.25 1.25 8952 78 -32 0.1 0.1 0.1 1 10
execute if score apparitionMelody1 global matches 20 run playsound minecraft:block.note_block.chime master @a 8952 76 -32 5 1
execute if score apparitionMelody1 global matches 1..20 run particle minecraft:dust 0.75 0.25 0.25 1.25 8952 78 -32 0.1 0.1 0.1 1 10

# Direction
execute unless score apparitionMelody1 global matches ..0 run scoreboard players remove apparitionMelody1 global 1