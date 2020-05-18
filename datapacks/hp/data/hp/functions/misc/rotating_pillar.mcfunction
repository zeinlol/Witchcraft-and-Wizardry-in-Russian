# Executed as rotating pillar
execute as @s[scores={animTest=1..}] store result entity @s Pose.Head[1] float 1 run scoreboard players add @s pillarRotation 3
scoreboard players remove @s[scores={animTest=1..}] animTest 1
tag @s[scores={animTest=0}] remove rotatingPillar
tag @s[scores={animTest=0}] remove pillarRotate