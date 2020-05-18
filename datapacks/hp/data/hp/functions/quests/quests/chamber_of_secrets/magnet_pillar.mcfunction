# This is the block animation for the magnet pillar
execute if score chamberOfSecretsMagnetPillarDirection global matches 1 if score chamberOfSecretsMagnetPillar global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 6474 41 918 3 1

execute if score chamberOfSecretsMagnetPillar global matches 2 run setblock 6474 43 918 air
execute if score chamberOfSecretsMagnetPillar global matches 2 run setblock 6474 42 918 air
execute if score chamberOfSecretsMagnetPillar global matches 2 run setblock 6474 41 918 minecraft:chiseled_sandstone
execute if score chamberOfSecretsMagnetPillar global matches 2 run tp @e[tag=cosPillarMagnet,limit=1] 6474 41 919
execute if score chamberOfSecretsMagnetPillar global matches 2 run tag @e[tag=cosPillarMagnet,limit=1] remove interactable
execute if score chamberOfSecretsMagnetPillar global matches 4 run setblock 6474 41 918 minecraft:sponge
execute if score chamberOfSecretsMagnetPillar global matches 4 run setblock 6474 42 918 minecraft:chiseled_sandstone
execute if score chamberOfSecretsMagnetPillar global matches 4 run setblock 6474 43 918 air
execute if score chamberOfSecretsMagnetPillar global matches 4 run tp @e[tag=cosPillarMagnet,limit=1] 6474 42 919
execute if score chamberOfSecretsMagnetPillar global matches 6 run setblock 6474 41 918 minecraft:sponge
execute if score chamberOfSecretsMagnetPillar global matches 6 run setblock 6474 42 918 minecraft:sponge
execute if score chamberOfSecretsMagnetPillar global matches 6 run setblock 6474 43 918 minecraft:chiseled_sandstone
execute if score chamberOfSecretsMagnetPillar global matches 6 run tp @e[tag=cosPillarMagnet,limit=1] 6474 43 919
execute if score chamberOfSecretsMagnetPillar global matches 6 run tag @e[tag=cosPillarMagnet,limit=1] add interactable

execute if score chamberOfSecretsMagnetPillarDirection global matches 0 if score chamberOfSecretsMagnetPillar global matches 8 run playsound minecraft:custom.fx.rocks_move_short master @a 6474 41 918 3 1

# Direction
execute if score chamberOfSecretsMagnetPillarDirection global matches 1 unless score chamberOfSecretsMagnetPillar global matches 10.. run scoreboard players add chamberOfSecretsMagnetPillar global 1
execute if score chamberOfSecretsMagnetPillarDirection global matches 0 unless score chamberOfSecretsMagnetPillar global matches ..-2 run scoreboard players remove chamberOfSecretsMagnetPillar global 1
