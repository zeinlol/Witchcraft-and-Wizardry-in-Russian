# Stupefy drop
execute as @a[tag=play,x=5480,y=15,z=-84,dx=34,dy=25,dz=45,tag=!inTravelPoint] run function hp:travel_point/init_stupefy_challenge_drop

# Spawn in moving targets only when player enters area because otherwise they are sometimes invisible on lower end hardware due to a Minecraft bug
execute unless score stupefyMovingTargetsExist global matches 1 if entity @p[tag=play,x=5519,y=49,z=-77,dx=25,dy=12,dz=34] run function hp:quests/quests/stupefy/set_moving_targets

# cull and respawn parkour targets to prevent them from turning invisible due to the above bug
execute unless score stupefyParkourTargetsExist global matches 1 if entity @p[tag=play,x=5488,y=23,z=-61,dx=35,dy=100,dz=139] run function hp:quests/quests/stupefy/set_parkour_targets
execute if score stupefyParkourTargetsExist global matches 1 unless entity @p[tag=play,x=5488,y=23,z=-61,dx=35,dy=100,dz=139] run function hp:quests/quests/stupefy/remove_parkour_targets

# statues
function hp:quests/quests/stupefy/statue_1
function hp:quests/quests/stupefy/statue_2
function hp:quests/quests/stupefy/statue_3
function hp:quests/quests/stupefy/statue_4

# Drop stair if all statues are rotated
execute if score stupefyStatue1Direction global matches 1 if score stupefyStatue2Direction global matches 1 if score stupefyStatue3Direction global matches 1 if score stupefyStatue4Direction global matches 1 unless score stupefyDropStairDirection global matches 1 run scoreboard players set stupefyDropStairDirection global 1

# Drop stair
function hp:quests/quests/stupefy/drop_stair

# Kill creatures and player if they fall in pits
execute as @a[tag=play,tag=!inResetPoint,x=5497,y=15,z=10,dx=14,dy=11,dz=20] run function hp:respawn/init_respawn
execute as @e[tag=creature,x=5497,y=15,z=10,dx=14,dy=11,dz=20] run function hp:creatures/kill_creature

# Door
function hp:quests/quests/stupefy/door

# Moving targets
execute as @e[tag=MovingTarget,tag=movingRight] at @s run tp @s ~-0.15 ~ ~
execute as @e[tag=MovingTarget,tag=movingLeft] at @s run tp @s ~0.15 ~ ~
execute as @e[tag=MovingTarget,tag=movingLeft,x=5540,dx=10,y=40,dy=20,z=-58,dz=25] run tag @s add changeDirectionRight

execute as @e[tag=changeDirectionRight] run tag @s add movingRight
execute as @e[tag=changeDirectionRight] run tag @s remove movingLeft
execute as @e[tag=changeDirectionRight] run tag @s remove changeDirectionRight

execute as @e[tag=movingRight,tag=MovingTarget,x=5508,dx=10,y=40,dy=20,z=-58,dz=25] run tag @s add changeDirectionLeft
execute as @e[tag=changeDirectionLeft] run tag @s add movingLeft
execute as @e[tag=changeDirectionLeft] run tag @s remove movingRight
execute as @e[tag=changeDirectionLeft] run tag @s remove changeDirectionLeft

# Draw bridge
function hp:quests/quests/stupefy/draw_bridge

# Stone slides
function hp:quests/quests/stupefy/stone_slide_1
function hp:quests/quests/stupefy/stone_slide_2
function hp:quests/quests/stupefy/stone_slide_3


# If stuck on parkour for more than 7 minutes add a ladder
# Stuck timer. Only adds time if systick is less than 200 to prevent the timer counting up while on the main menu if you just choose to pause the game there.
execute if score systick time matches ..200 if score stupefyStuckTimerIsGoing global matches 1 run scoreboard players operation stupefyStuckTimer global += systick time

# If you have been stuck for 7 minutes extend all the platforms constantly
execute if score stupefyStuckTimerIsGoing global matches 1 if score stupefyStuckTimer global matches 420000.. run playsound minecraft:custom.gameplay_element.ding master @a 5503 42 -27 30 1 1

# Success
execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide1 global matches 100 run scoreboard players set stupefyStoneSlide1 global 1
execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide2 global matches 160 run scoreboard players set stupefyStoneSlide2 global 1
execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide3 global matches 130 run scoreboard players set stupefyStoneSlide3 global 1

execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide1 global matches 20.. run scoreboard players set stupefyStoneSlide1 global 20
execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide2 global matches 20.. run scoreboard players set stupefyStoneSlide2 global 20
execute if score stupefyStuckTimer global matches 420000.. if score stupefyStoneSlide3 global matches 20.. run scoreboard players set stupefyStoneSlide3 global 20


execute if score stupefyStuckTimerIsGoing global matches 1 if score stupefyStuckTimer global matches 420000.. run scoreboard players set stupefyStuckTimerIsGoing global 0


execute unless score stupefyStuckTimer global matches 420000.. positioned 5503 42 -29 if entity @p[tag=play,distance=..7] run scoreboard players set stupefyStuckTimerIsGoing global 1
