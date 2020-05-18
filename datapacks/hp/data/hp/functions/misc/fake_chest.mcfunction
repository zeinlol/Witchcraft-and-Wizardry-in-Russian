# Particles
execute as @s[scores={animTest=3}] at @s run particle minecraft:smoke ~ ~1.25 ~ 0.2 0.2 0.2 0.03 100 force
execute as @s[scores={animTest=1}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 2 1

execute as @s[scores={animTest=..1}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[90f,0f,0f]}}
execute as @s[scores={animTest=2}] run data merge entity @s {Pose:{RightArm:[-0.100918f,-0.139287f,-0.447029f],Head:[87.7024f,-0.92916f,0f]}}
execute as @s[scores={animTest=3}] run data merge entity @s {Pose:{RightArm:[-0.160754f,-0.285833f,-0.917354f],Head:[80.8095f,-3.71664f,0f]}}
execute as @s[scores={animTest=4}] run data merge entity @s {Pose:{RightArm:[-0.219428f,-0.45531f,-1.46127f],Head:[69.3213f,-3.38644f,0f]}}
execute as @s[scores={animTest=5}] run data merge entity @s {Pose:{RightArm:[-0.265589f,-0.621494f,-1.99463f],Head:[53.2378f,-3.80879f,0f]}}
execute as @s[scores={animTest=6}] run data merge entity @s {Pose:{RightArm:[-0.284858f,-0.752236f,-2.41423f],Head:[32.5591f,-4.15434f,0f]}}
execute as @s[scores={animTest=7}] run data merge entity @s {Pose:{RightArm:[-0.255333f,-0.806812f,-2.58939f],Head:[7.28515f,-4.42311f,0f]}}
execute as @s[scores={animTest=8}] run data merge entity @s {Pose:{RightArm:[-0.16676f,-0.701252f,-2.20252f],Head:[-22.5841f,-3.1273f,0f]}}
execute as @s[scores={animTest=9}] run data merge entity @s {Pose:{RightArm:[-0.019138f,-0.38457f,-1.04191f],Head:[-57.0486f,0.760125f,0f]}}
execute as @s[scores={animTest=10}] run data merge entity @s {Pose:{RightArm:[0.070411f,0.143232f,0.892442f],Head:[-79.7022f,2.74132f,0f]}}
execute as @s[scores={animTest=11}] run data merge entity @s {Pose:{RightArm:[0.014047f,0.463403f,2.06584f],Head:[-63.201f,1.91671f,0f]}}
execute as @s[scores={animTest=12}] run data merge entity @s {Pose:{RightArm:[0.016731f,0.261879f,1.32727f],Head:[-51.295f,3.68372f,0f]}}
execute as @s[scores={animTest=13}] run data merge entity @s {Pose:{RightArm:[0.078464f,0.271475f,1.36244f],Head:[-43.9844f,3.54451f,0f]}}
execute as @s[scores={animTest=14}] run data merge entity @s {Pose:{RightArm:[0.082124f,0.492192f,1.17135f],Head:[-41.269f,3.97287f,0f]}}
execute as @s[scores={animTest=15}] run data merge entity @s {Pose:{RightArm:[0.100912f,0.505278f,1.21931f],Head:[-43.1489f,3.72456f,0f]}}
execute as @s[scores={animTest=16}] run data merge entity @s {Pose:{RightArm:[0.105548f,0.572453f,1f],Head:[-49.624f,2.97965f,0f]}}
execute as @s[scores={animTest=17}] run data merge entity @s {Pose:{RightArm:[0.105548f,0.589029f,1.3f],Head:[-60.6945f,1.73811f,0f]}}
execute as @s[scores={animTest=18}] run data merge entity @s {Pose:{RightArm:[0.093076f,0.519427f,1.2f],Head:[-76.3601f,-0.000035f,0f]}}
execute as @s[scores={animTest=19}] run data merge entity @s {Pose:{RightArm:[0.05566f,0.310621f,0.5f],Head:[-80.2149f,0.744885f,0f]}}
execute as @s[scores={animTest=20}] run data merge entity @s {Pose:{RightArm:[0.003195f,0.017832f,0.076478f],Head:[-74.993f,0.993192f,0f]}}
execute as @s[scores={animTest=21}] run data merge entity @s {Pose:{RightArm:[0.024738f,0.138054f,-0.292089f],Head:[-74.3663f,0.744885f,0f]}}
execute as @s[scores={animTest=22}] run data merge entity @s {Pose:{RightArm:[0.021336f,0.119071f,-0.110677f],Head:[-78.335f,-0.000034f,0f]}}
execute as @s[scores={animTest=23}] run data merge entity @s {Pose:{RightArm:[0.002886f,0.016106f,-0.069077f],Head:[-84.1645f,0.248272f,0f]}}
execute as @s[scores={animTest=24}] run data merge entity @s {Pose:{RightArm:[0.00402f,0.022434f,-0.096215f],Head:[-82.2846f,-0.000035f,0f]}}
execute as @s[scores={animTest=25}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-85f,0f,0f]}}


# Spawn Monsters
execute as @s[scores={animTest=10}] at @s run function hp:misc/fake_chest_enemies
execute as @s[tag=pixies,scores={animTest=10}] at @s run playsound minecraft:custom.creatures.pixie.idle master @a
execute as @s[tag=pixies,scores={animTest=15}] at @s run playsound minecraft:custom.creatures.pixie.idle master @a
execute as @s[tag=pixies,scores={animTest=20}] at @s run playsound minecraft:custom.creatures.pixie.idle master @a

execute as @s[tag=poltergeists,scores={animTest=10}] at @s run playsound minecraft:entity.vex.ambient master @a
execute as @s[tag=poltergeists,scores={animTest=15}] at @s run playsound minecraft:entity.vex.ambient master @a
execute as @s[tag=poltergeists,scores={animTest=20}] at @s run playsound minecraft:entity.vex.ambient master @a

execute as @s[tag=monsterBooks,scores={animTest=10}] at @s run playsound minecraft:custom.creatures.monster_book.attack master @a
execute as @s[tag=monsterBooks,scores={animTest=15}] at @s run playsound minecraft:custom.creatures.monster_book.attack master @a
execute as @s[tag=monsterBooks,scores={animTest=20}] at @s run playsound minecraft:custom.creatures.monster_book.attack master @a



# Jump
execute as @s[scores={animTest=..3}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~ ~
execute as @s[scores={animTest=4}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.070654 ~
execute as @s[scores={animTest=5}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.12829 ~
execute as @s[scores={animTest=6}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.27781 ~
execute as @s[scores={animTest=7}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.342335 ~
execute as @s[scores={animTest=8}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.322541 ~
execute as @s[scores={animTest=9}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.26316 ~
execute as @s[scores={animTest=10}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.164191 ~
execute as @s[scores={animTest=11}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.025634 ~
execute as @s[scores={animTest=12}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~ ~

scoreboard players add @s[scores={animTest=..45}] animTest 1