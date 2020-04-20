# Azkaban drop
execute as @a[tag=play,x=4789,dx=462,y=0,dy=40,z=9806,dz=456,tag=!inTravelPoint] run function hp:travel_point/init_azkaban_drop
execute as @e[tag=creature,x=4789,dx=462,y=0,dy=100,z=9806,dz=456,tag=!dementor] run function hp:creatures/remove_creature

# Azkaban reset creatures from hole
execute as @e[tag=creature,tag=!dementor,x=4966,y=97,z=10017,dx=31,dy=22,dz=4] run function hp:quests/quests/azkaban/move_enemy_out_of_hole
execute as @e[tag=creature,tag=!dementor,x=4968,y=97,z=10013,dx=29,dy=22,dz=8] run function hp:quests/quests/azkaban/move_enemy_out_of_hole
execute as @e[tag=creature,tag=!dementor,x=4970,y=97,z=10010,dx=27,dy=22,dz=11] run function hp:quests/quests/azkaban/move_enemy_out_of_hole

# Thunder
scoreboard players add thunderTimer global 1
execute if score thunderTimer global matches 1600.. run scoreboard players set thunderTimer global 0

execute if score thunderTimer global matches 160 run summon minecraft:lightning_bolt 4968 98 10035
execute if score thunderTimer global matches 160 run playsound minecraft:custom.thunder.thunder1 master @a 4968 98 10035 10000 1

execute if score thunderTimer global matches 340 run summon minecraft:lightning_bolt 4961 98 9991
execute if score thunderTimer global matches 340 run playsound minecraft:custom.thunder.thunder2 master @a 4961 98 9991 10000 1

execute if score thunderTimer global matches 460 run summon minecraft:lightning_bolt 5037 98 9994
execute if score thunderTimer global matches 460 run playsound minecraft:custom.thunder.thunder3 master @a 5037 98 9994 10000 1

execute if score thunderTimer global matches 620 run summon minecraft:lightning_bolt 5017 98 10035
execute if score thunderTimer global matches 620 run playsound minecraft:custom.thunder.thunder2 master @a 5017 98 10035 10000 1

execute if score thunderTimer global matches 800 run summon minecraft:lightning_bolt 4976 98 9965
execute if score thunderTimer global matches 800 run playsound minecraft:custom.thunder.thunder1 master @a 4976 98 9965 10000 1

execute if score thunderTimer global matches 1020 run summon minecraft:lightning_bolt 4995 98 10036
execute if score thunderTimer global matches 1020 run playsound minecraft:custom.thunder.thunder3 master @a 4995 98 10036 10000 1

execute if score thunderTimer global matches 1200 run summon minecraft:lightning_bolt 5045 98 10032
execute if score thunderTimer global matches 1200 run playsound minecraft:custom.thunder.thunder2 master @a 5045 98 10032 10000 1

execute if score thunderTimer global matches 1420 run summon minecraft:lightning_bolt 5020 98 9966
execute if score thunderTimer global matches 1420 run playsound minecraft:custom.thunder.thunder1 master @a 5020 98 9966 10000 1

execute if score thunderTimer global matches 1580 run summon minecraft:lightning_bolt 4999 98 9947
execute if score thunderTimer global matches 1580 run playsound minecraft:custom.thunder.thunder2 master @a 4999 98 9947 10000 1

execute as 858841fc-0b2e-445c-92f7-1b0f0779c469 run function hp:npc/helpers/helper_fire_1
execute as c0952513-9db8-4b0c-84c8-b593141e0be3 run function hp:npc/helpers/helper_fire_2
execute as 81eb56b1-d54f-48b1-be09-a678c405cf91 run function hp:npc/helpers/helper_fire_2
execute as 3a693663-ee2a-4686-b15b-75bb64a21952 run function hp:npc/helpers/helper_fire_1
execute as 58954f43-530e-4667-bffa-9b5873746976 run function hp:npc/helpers/helper_fire_1
