# Drop under bridge
execute as @a[tag=play,x=8025,y=94,z=51,dx=16,dy=30,dz=29,tag=!inTravelPoint] run function hp:travel_point/init_patronus_1
execute as @a[tag=play,x=8060,y=20,z=126,dx=75,dy=32,dz=56,tag=!inTravelPoint] run function hp:travel_point/init_patronus_2

# Doors
function hp:quests/quests/expecto_patronum/door_1
function hp:quests/quests/expecto_patronum/door_2
function hp:quests/quests/expecto_patronum/bridge_collapse

# Draw Brdige
function hp:quests/quests/expecto_patronum/draw_bridge

# Three pillars

execute if score patronusDrawBridgeDirection global matches 1 unless score 2b9fbf8d-25eb-4dc0-8283-195150edefcb pillarState matches 3 run scoreboard players set patronusDrawBridgeDirection global 0
execute if score patronusDrawBridgeDirection global matches 1 unless score 1dec3c20-5c6c-48ca-bf80-b4cdf9773fa1 pillarState matches 4 run scoreboard players set patronusDrawBridgeDirection global 0
execute if score patronusDrawBridgeDirection global matches 1 unless score 7c5e2b9c-a206-41be-a4ef-9b6fc415ba12 pillarState matches 2 run scoreboard players set patronusDrawBridgeDirection global 0
execute if score patronusDrawBridgeDirection global matches 0 if score 2b9fbf8d-25eb-4dc0-8283-195150edefcb pillarState matches 3 if score 1dec3c20-5c6c-48ca-bf80-b4cdf9773fa1 pillarState matches 4 if score 7c5e2b9c-a206-41be-a4ef-9b6fc415ba12 pillarState matches 2 run scoreboard players set patronusDrawBridgeDirection global 1


# Make pillars rotate each other
execute if score 2b9fbf8d-25eb-4dc0-8283-195150edefcb animTest matches 29 as 7c5e2b9c-a206-41be-a4ef-9b6fc415ba12 run function hp:misc/rotate_pillar
execute if score 1dec3c20-5c6c-48ca-bf80-b4cdf9773fa1 animTest matches 29 as 2b9fbf8d-25eb-4dc0-8283-195150edefcb run function hp:misc/rotate_pillar
# execute if score 7c5e2b9c-a206-41be-a4ef-9b6fc415ba12 animTest matches 29 as 2b9fbf8d-25eb-4dc0-8283-195150edefcb run function hp:misc/rotate_pillar

# New override respawn
execute positioned 8115.43 80.00 131.91 as @a[distance=..20,scores={overrideRespawn=20}] run scoreboard players set @s overrideRespawn 21


# Chest
execute as @e[tag=dementorChest,limit=1] run function hp:quests/quests/expecto_patronum/chest_burst_open_dementor