# This is the block animation for door 1
execute if score chamberOfSecretTunnelsEntranceDirection global matches 1 if score chamberOfSecretTunnelsEntrance global matches -8 run playsound minecraft:custom.fx.chamber_of_secrets.open master @a 793 53 152 2 1.2

execute if score chamberOfSecretTunnelsEntrance global matches 6 run playsound minecraft:custom.fx.rocks_move_short master @a 793 53 152 2
execute if score chamberOfSecretTunnelsEntrance global matches 6 run setblock 802 63 155 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 6 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 12 run setblock 802 63 154 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 12 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntranceDirection global matches 1 if score chamberOfSecretTunnelsEntrance global matches 18 run playsound minecraft:custom.fx.long_stone_slide master @a 793 53 152 2 1
execute if score chamberOfSecretTunnelsEntrance global matches 18 run setblock 802 63 153 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 18 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 24 run setblock 802 63 152 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 24 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 30 run setblock 802 63 151 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 30 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntranceDirection global matches 0 if score chamberOfSecretTunnelsEntrance global matches 36 run playsound minecraft:custom.fx.long_stone_slide master @a 793 53 152 2 1
execute if score chamberOfSecretTunnelsEntrance global matches 36 run playsound minecraft:custom.fx.rocks_move_short master @a 793 53 152 2
execute if score chamberOfSecretTunnelsEntrance global matches 36 run setblock 802 63 150 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 36 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 42 run setblock 802 63 149 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 42 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 48 run setblock 802 63 148 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 48 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 54 run setblock 802 63 147 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 54 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntrance global matches 60 run playsound minecraft:custom.fx.rocks_move_short master @a 793 53 152 2
execute if score chamberOfSecretTunnelsEntrance global matches 60 run setblock 802 63 146 minecraft:redstone_block
execute if score chamberOfSecretTunnelsEntrance global matches 60 run fill 802 63 155 802 63 146 minecraft:quartz_block

execute if score chamberOfSecretTunnelsEntranceDirection global matches 0 if score chamberOfSecretTunnelsEntrance global matches 68 run playsound minecraft:custom.fx.chamber_of_secrets.open master @a 793 53 152 2 1.2

# Direction
execute if score chamberOfSecretTunnelsEntranceDirection global matches 1 unless score chamberOfSecretTunnelsEntrance global matches 70.. run scoreboard players add chamberOfSecretTunnelsEntrance global 1
execute if score chamberOfSecretTunnelsEntranceDirection global matches 0 unless score chamberOfSecretTunnelsEntrance global matches ..-10 run scoreboard players remove chamberOfSecretTunnelsEntrance global 1