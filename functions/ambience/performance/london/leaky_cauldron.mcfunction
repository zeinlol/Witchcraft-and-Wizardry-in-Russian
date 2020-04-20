# Дырявый Котёл
execute unless entity @s[scores={ambienceLocation=3}] as @s[scores={lastRegion=2},x=2832,dx=57,y=54,dy=20,z=757,dz=31,tag=!isFastTravelling] unless entity @s[x=2810,dx=45,y=63,dy=23,z=761,dz=26] unless entity @s[x=2855,dx=9,y=70,dy=17,z=764,dz=30] unless entity @s[x=2840,dx=15,y=61,dy=16,z=788,dz=5] run function hp:ambience/soundscapes/leaky_cauldron
# Дырявый Котёл Rooms
# 2827 63 761 2855 86 787 - 28 23 26
execute unless entity @s[scores={ambienceLocation=0}] as @s[scores={lastRegion=2},x=2810,dx=45,y=63,dy=23,z=761,dz=26,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_interior
# 2855 70 764 2864 87 794 - 9 17 30
execute unless entity @s[scores={ambienceLocation=0}] as @s[scores={lastRegion=2},x=2855,dx=9,y=70,dy=17,z=764,dz=30,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_interior
