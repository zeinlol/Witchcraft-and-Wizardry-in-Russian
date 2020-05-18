data merge entity @s {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f],Head:[90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f]}}
tag @s remove burstOpen
tag @s add interactable

execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID