# Ravenclaw Tower
execute as @s[x=770,dx=16,y=0,dy=100,z=66,dz=120] run tag @s add hogwartsInterior
execute as @s[x=768,dx=20,y=85,dy=42,z=141,dz=20] run tag @s add hogwartsInterior
execute as @s[x=769,dx=18,y=128,dy=13,z=142,dz=18] run tag @s add hogwartsInterior
execute as @s[x=774,dx=8,y=148,dy=9,z=143,dz=16] run tag @s add hogwartsInterior
execute as @s[x=770,dx=16,y=148,dy=9,z=147,dz=8] run tag @s add hogwartsInterior
execute as @s[x=773,dx=10,y=151,dy=6,z=146,dz=10] run tag @s add hogwartsInterior
execute as @s[x=774,dx=8,y=141,dy=33,z=147,dz=8] run tag @s add hogwartsInterior
execute as @s[x=775,dx=6,y=175,dy=6,z=148,dz=6] run tag @s add hogwartsInterior
execute as @s[x=780,dx=6,y=141,dy=9,z=153,dz=6] run tag @s add hogwartsInterior
execute as @s[x=784,dx=4,y=128,dy=19,z=157,dz=4] run tag @s add hogwartsInterior
execute as @s[x=784,dx=4,y=128,dy=19,z=141,dz=4] run tag @s add hogwartsInterior
execute as @s[x=768,dx=4,y=128,dy=19,z=141,dz=4] run tag @s add hogwartsInterior
execute as @s[x=768,dx=4,y=128,dy=19,z=157,dz=4] run tag @s add hogwartsInterior
execute as @s[x=768,dx=50,y=0,dy=100,z=146,dz=10] run tag @s add hogwartsInterior
execute as @s[x=736,dx=82,y=0,dy=82,z=157,dz=8] run tag @s add hogwartsInterior

# Use hogwartsInterior as masking for this:
# Ravenclaw
execute as @s[tag=hogwartsInterior,x=767,dx=23,y=127,dy=15,z=139,dz=23] unless entity @s[x=784,dx=4,y=127,dy=19,z=157,dz=4] run tag @s add hogwartsRavenclaw