# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

tag @s remove residencesInterior
tag @s remove residencesMill

# Test for flying
execute if entity @s[scores={ambienceLocation=1}] run tag @s add playerIsOutside

# Weasley
execute as @s[x=5390,dx=7,y=17,dy=20,z=4514,dz=6] run tag @s add residencesInterior
execute as @s[x=5398,dx=2,y=17,dy=4,z=4517,dz=10] run tag @s add residencesInterior
execute as @s[x=5388,dx=9,y=16,dy=5,z=4521,dz=7] run tag @s add residencesInterior
execute as @s[x=5389,dx=0,y=16,dy=4,z=4520,dz=0] run tag @s add residencesInterior
execute as @s[x=5388,dx=1,y=17,dy=3,z=4529,dz=0] run tag @s add residencesInterior
execute as @s[x=5398,dx=0,y=26,dy=6,z=4517,dz=1] run tag @s add residencesInterior
execute as @s[x=5392,dx=4,y=22,dy=2,z=4522,dz=4] run tag @s add residencesInterior
execute as @s[x=5393,dx=2,y=23,dy=0,z=4527,dz=0] run tag @s add residencesInterior
execute as @s[x=5396,dx=0,y=21,dy=3,z=4521,dz=0] run tag @s add residencesInterior
execute as @s[x=5391,dx=5,y=25,dy=13,z=4512,dz=1] run tag @s add residencesInterior
execute as @s[x=5391,dx=7,y=33,dy=3,z=4511,dz=3] run tag @s add residencesInterior
execute as @s[x=5394,dx=3,y=24,dy=8,z=4513,dz=0] run tag @s add residencesInterior
execute as @s[x=5392,dx=4,y=38,dy=1,z=4516,dz=14] run tag @s add residencesInterior
execute as @s[x=5393,dx=2,y=40,dy=0,z=4514,dz=9] run tag @s add residencesInterior
execute as @s[x=5392,dx=4,y=31,dy=16,z=4521,dz=9] run tag @s add residencesInterior
execute as @s[x=5391,dx=6,y=31,dy=5,z=4525,dz=4] run tag @s add residencesInterior
execute as @s[x=5391,dx=6,y=39,dy=9,z=4525,dz=4] run tag @s add residencesInterior
execute as @s[x=5391,dx=6,y=36,dy=2,z=4524,dz=5] run tag @s add residencesInterior
execute as @s[x=5392,dx=4,y=40,dy=7,z=4521,dz=2] run tag @s remove residencesInterior
execute as @s[x=5399,dx=1,y=16,dy=4,z=4527,dz=2] run tag @s remove residencesInterior


# Lovegood
execute as @s[x=5162,dx=14,y=105,dy=6,z=4410,dz=29] run tag @s add residencesInterior
execute as @s[x=5167,dx=5,y=130,dy=11,z=4429,dz=7] run tag @s add residencesInterior
execute as @s[x=5167,dx=5,y=102,dy=21,z=4420,dz=13] run tag @s add residencesInterior
execute as @s[x=5169,dx=2,y=124,dy=8,z=4420,dz=14] run tag @s add residencesInterior
execute as @s[x=5169,dx=2,y=114,dy=5,z=4419,dz=0] run tag @s add residencesInterior
execute as @s[x=5165,dx=1,y=112,dy=6,z=4422,dz=11] run tag @s add residencesInterior
execute as @s[x=5164,dx=0,y=115,dy=4,z=4427,dz=3] run tag @s add residencesInterior
execute as @s[x=5166,dx=0,y=119,dy=0,z=4423,dz=8] run tag @s add residencesInterior
execute as @s[x=5165,dx=1,y=121,dy=5,z=4425,dz=6] run tag @s add residencesInterior
execute as @s[x=5167,dx=1,y=124,dy=3,z=4422,dz=11] run tag @s add residencesInterior
execute as @s[x=5168,dx=1,y=132,dy=4,z=4427,dz=1] run tag @s add residencesInterior
execute as @s[x=5165,dx=1,y=134,dy=8,z=4432,dz=3] run tag @s add residencesInterior
execute as @s[x=5168,dx=0,y=128,dy=1,z=4426,dz=6] run tag @s add residencesInterior
execute as @s[x=5169,dx=0,y=123,dy=4,z=4434,dz=0] run tag @s add residencesInterior
execute as @s[x=5169,dx=4,y=111,dy=11,z=4434,dz=0] run tag @s add residencesInterior
execute as @s[x=5173,dx=2,y=113,dy=13,z=4424,dz=9] run tag @s add residencesInterior
execute as @s[x=5173,dx=1,y=113,dy=8,z=4421,dz=2] run tag @s add residencesInterior
execute as @s[x=5172,dx=3,y=112,dy=0,z=4423,dz=10] run tag @s add residencesInterior
execute as @s[x=5165,dx=2,y=112,dy=0,z=4421,dz=0] run tag @s add residencesInterior
execute as @s[x=5172,dx=1,y=123,dy=4,z=4423,dz=10] run tag @s add residencesInterior
execute as @s[x=5176,dx=0,y=113,dy=3,z=4429,dz=2] run tag @s add residencesInterior
execute as @s[x=5174,dx=0,y=122,dy=0,z=4422,dz=2] run tag @s add residencesInterior
execute as @s[x=5176,dx=0,y=116,dy=8,z=4425,dz=5] run tag @s add residencesInterior
execute as @s[x=5164,dx=0,y=121,dy=0,z=4428,dz=2] run tag @s add residencesInterior
execute as @s[x=5171,dx=3,y=127,dy=7,z=4428,dz=5] run tag @s add residencesInterior
execute as @s[x=5172,dx=2,y=134,dy=7,z=4430,dz=6] run tag @s add residencesInterior
execute as @s[x=5170,dx=0,y=133,dy=0,z=4419,dz=7] run tag @s add residencesInterior
execute as @s[x=5170,dx=2,y=129,dy=4,z=4426,dz=2] run tag @s add residencesInterior
execute as @s[x=5175,dx=0,y=127,dy=3,z=4428,dz=0] run tag @s add residencesInterior
execute as @s[x=5166,dx=0,y=129,dy=4,z=4431,dz=4] run tag @s add residencesInterior
execute as @s[x=5175,dx=0,y=138,dy=3,z=4434,dz=0] run tag @s add residencesInterior
execute as @s[x=5171,dx=1,y=134,dy=3,z=4428,dz=0] run tag @s add residencesInterior
execute as @s[x=5169,dx=0,y=136,dy=4,z=4437,dz=0] run tag @s add residencesInterior

# Mill
execute as @s[x=5673,dx=4,y=100,dy=19,z=4349,dz=4] run tag @s add residencesMill
execute as @s[x=5674,dx=2,y=100,dy=2,z=4354,dz=0] run tag @s add residencesMill
execute as @s[x=5672,dx=0,y=100,dy=1,z=4350,dz=2] run tag @s add residencesMill


execute unless entity @s[scores={ambienceLocation=0}] as @s[tag=residencesInterior,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_interior
execute unless entity @s[scores={ambienceLocation=21}] as @s[tag=residencesMill,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall

execute unless entity @s[scores={ambienceLocation=1}] as @s[tag=!residencesInterior,tag=!residencesMill,tag=!isFastTravelling] run function hp:ambience/soundscapes/little_whinging_exterior