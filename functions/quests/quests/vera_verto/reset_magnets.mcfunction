# reset magnets
execute as da3c69b1-1228-402f-a876-e39a5e7a4175 run function hp:misc/reset_magnetic_object
execute as da3c69b1-1228-402f-a876-e39a5e7a4175 at @s run particle minecraft:poof ~ ~1.5 ~ 1.1 1.5 1.1 0.02 200 force
execute as 6f086cec-858d-48cf-bdff-24a939839517 run function hp:misc/reset_magnetic_object
execute as 6f086cec-858d-48cf-bdff-24a939839517 at @s run particle minecraft:poof ~ ~.5 ~ 1.1 0.5 1.1 0.02 200 force
execute as ced58aeb-0c8a-4474-bbce-800ac50973fa run function hp:misc/reset_magnetic_object
execute as ced58aeb-0c8a-4474-bbce-800ac50973fa at @s run particle minecraft:poof ~ ~2 ~ 1.1 2 1.1 0.02 200 force
execute as 7b082f65-e785-47ba-91dc-b4e89c06cb58 run function hp:misc/reset_magnetic_object
execute as 7b082f65-e785-47ba-91dc-b4e89c06cb58 at @s run particle minecraft:poof ~ ~1 ~ 1.1 1 1.1 0.02 200 force

playsound minecraft:custom.fx.rocks_move_short master @a 8460 58 0 2 1
playsound minecraft:custom.fx.rocks_impact master @a 8460 58 0 2 1

# Reset transfigured objects
scoreboard players add veraVertoID global 1

