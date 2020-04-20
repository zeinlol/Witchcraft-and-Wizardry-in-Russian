# This is the block animation for the room of requirement entrance door
execute if score gryffindorEntranceDirection global matches 1 if score gryffindorEntrance global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 718 113 307 2 1
execute if score gryffindorEntranceDirection global matches 1 if score gryffindorEntrance global matches 2 run playsound minecraft:custom.fx.open_door master @a 718 113 307 2 1

execute if score gryffindorEntranceDirection global matches 0 if score gryffindorEntrance global matches 1 run fill 718 113 307 718 115 306 barrier replace air
execute if score gryffindorEntranceDirection global matches 0 if score gryffindorEntrance global matches 1 run tag @s add interactable
execute if score gryffindorEntranceDirection global matches 1 if score gryffindorEntrance global matches 1 run fill 718 113 307 718 115 306 minecraft:air replace barrier
execute if score gryffindorEntranceDirection global matches 1 if score gryffindorEntrance global matches 1 run tag @s remove interactable

execute if score gryffindorEntrance global matches 1 positioned 719.06 113.05 308.01 rotated 0 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 2 positioned 719.06 113.05 308.01 rotated 0.522777 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 3 positioned 719.06 113.05 308.01 rotated 2.0419 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 4 positioned 719.06 113.05 308.01 rotated 4.48358 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 5 positioned 719.06 113.05 308.01 rotated 7.774 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 6 positioned 719.06 113.05 308.01 rotated 11.8394 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 7 positioned 719.06 113.05 308.01 rotated 16.6058 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 8 positioned 719.06 113.05 308.01 rotated 21.9997 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 9 positioned 719.06 113.05 308.01 rotated 27.947 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 10 positioned 719.06 113.05 308.01 rotated 34.3741 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 11 positioned 719.06 113.05 308.01 rotated 41.2071 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 12 positioned 719.06 113.05 308.01 rotated 48.3722 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 13 positioned 719.06 113.05 308.01 rotated 55.7956 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 14 positioned 719.06 113.05 308.01 rotated 63.4036 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 15 positioned 719.06 113.05 308.01 rotated 71.1222 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 16 positioned 719.06 113.05 308.01 rotated 78.8778 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 17 positioned 719.06 113.05 308.01 rotated 86.5964 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 18 positioned 719.06 113.05 308.01 rotated 94.2044 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 19 positioned 719.06 113.05 308.01 rotated 101.628 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 20 positioned 719.06 113.05 308.01 rotated 108.793 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 21 positioned 719.06 113.05 308.01 rotated 115.626 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 22 positioned 719.06 113.05 308.01 rotated 122.053 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 23 positioned 719.06 113.05 308.01 rotated 128 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 24 positioned 719.06 113.05 308.01 rotated 133.394 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 25 positioned 719.06 113.05 308.01 rotated 138.161 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 26 positioned 719.06 113.05 308.01 rotated 142.226 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 27 positioned 719.06 113.05 308.01 rotated 145.516 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 28 positioned 719.06 113.05 308.01 rotated 147.958 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 29 positioned 719.06 113.05 308.01 rotated 149.477 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~
execute if score gryffindorEntrance global matches 30 positioned 719.06 113.05 308.01 rotated 150 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~ ~90 ~

execute if score gryffindorEntranceDirection global matches 0 if score gryffindorEntrance global matches 27 run playsound minecraft:custom.fx.wood_creak master @a 718 113 307 2 1

# Timer to automatically close
execute if score gryffindorEntranceTimer global matches 1.. run scoreboard players operation gryffindorEntranceTimer global -= systick time
execute if score gryffindorEntranceDirection global matches 1 if score gryffindorEntranceTimer global matches ..0 run scoreboard players set gryffindorEntranceDirection global 0


# Direction
execute if score gryffindorEntranceDirection global matches 1 unless score gryffindorEntrance global matches 31.. run scoreboard players add gryffindorEntrance global 1
execute if score gryffindorEntranceDirection global matches 0 unless score gryffindorEntrance global matches ..-1 run scoreboard players remove gryffindorEntrance global 1