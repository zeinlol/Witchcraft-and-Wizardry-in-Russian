# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

### London
# Exterior																																																																																																						
execute unless entity @s[scores={ambienceLocation=2}] as @s[scores={lastRegion=2},tag=!isFastTravelling] unless entity @s[x=2810,dx=45,y=63,dy=23,z=761,dz=26] unless entity @s[x=2802,dx=39,y=49,dy=6,z=790,dz=20] unless entity @s[x=2953,dx=200,y=0,dy=129,z=1098,dz=203] unless entity @s[x=2422,dx=63,y=52,dy=40,z=-271,dz=43] unless entity @s[x=2827,dx=12,y=50,dy=21,z=791,dz=1] unless entity @s[x=2783,dx=8,y=53,dy=12,z=873,dz=10] unless entity @s[x=2876,dx=17,y=57,dy=6,z=811,dz=5] unless entity @s[x=2860,dx=30,y=57,dy=23,z=793,dz=18] unless entity @s[x=2810,dx=30,y=47,dy=24,z=792,dz=12] unless entity @s[x=2826,dx=15,y=57,dy=15,z=804,dz=4] unless entity @s[x=2829,dx=8,y=57,dy=13,z=809,dz=0] unless entity @s[x=2802,dx=39,y=49,dy=6,z=790,dz=20] unless entity @s[x=2827,dx=28,y=63,dy=23,z=761,dz=26] unless entity @s[x=2855,dx=9,y=70,dy=17,z=764,dz=30] unless entity @s[x=2730,dx=91,y=0,dy=135,z=986,dz=90] unless entity @s[x=2445,dx=16,y=46,dy=8,z=310,dz=51] unless entity @s[x=2830,dx=14,y=61,dy=7,z=-55,dz=14] unless entity @s[x=2830,dx=72,y=60,dy=12,z=-84,dz=27] unless entity @s[x=2903,dx=16,y=61,dy=12,z=-79,dz=22] unless entity @s[x=2920,dx=10,y=61,dy=12,z=-73,dz=16] unless entity @s[x=2883,dx=11,y=61,dy=8,z=-85,dz=7] unless entity @s[x=2714,dx=10,y=61,dy=5,z=-65,dz=14] unless entity @s[x=2725,dx=1,y=60,dy=6,z=-63,dz=7] unless entity @s[x=2702,dx=22,y=62,dy=5,z=-30,dz=7] unless entity @s[x=2711,dx=15,y=61,dy=5,z=-38,dz=13] unless entity @s[x=2819,dx=12,y=60,dy=6,z=107,dz=29] unless entity @s[x=2819,dx=13,y=61,dy=6,z=111,dz=4] unless entity @s[x=2819,dx=13,y=61,dy=6,z=116,dz=4] unless entity @s[x=2820,dx=12,y=61,dy=6,z=121,dz=4] unless entity @s[x=2813,dx=13,y=60,dy=6,z=68,dz=18] unless entity @s[x=2817,dx=15,y=60,dy=6,z=87,dz=9] unless entity @s[x=2780,dx=6,y=62,dy=5,z=76,dz=26] unless entity @s[x=2779,dx=8,y=62,dy=5,z=77,dz=25] unless entity @s[x=2788,dx=1,y=62,dy=5,z=84,dz=18] unless entity @s[x=2790,dx=1,y=62,dy=5,z=93,dz=9] unless entity @s[x=2780,dx=9,y=61,dy=4,z=135,dz=8] unless entity @s[x=2781,dx=8,y=61,dy=6,z=146,dz=8] unless entity @s[x=2722,dx=16,y=61,dy=6,z=33,dz=5] unless entity @s[x=2729,dx=7,y=62,dy=5,z=22,dz=10] unless entity @s[x=2737,dx=1,y=61,dy=5,z=23,dz=3] unless entity @s[x=2731,dx=8,y=61,dy=5,z=12,dz=9] unless entity @s[x=2732,dx=6,y=60,dy=7,z=0,dz=10] unless entity @s[x=2739,dx=0,y=61,dy=6,z=1,dz=9] unless entity @s[x=2684,dx=47,y=55,dy=12,z=0,dz=22] unless entity @s[x=2846,dx=11,y=61,dy=7,z=152,dz=8] unless entity @s[x=2700,dx=20,y=59,dy=7,z=-103,dz=20] unless entity @s[x=2687,dx=34,y=61,dy=5,z=-122,dz=19] unless entity @s[x=2886,dx=10,y=55,dy=8,z=749,dz=25] unless entity @s[x=2832,dx=57,y=54,dy=20,z=757,dz=31] unless entity @s[x=2821,dx=211,y=61,dy=18,z=-36,dz=65] unless entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] unless entity @s[x=2700,dx=400,y=0,dy=255,z=799,dz=323] run function hp:ambience/soundscapes/london_exterior

execute as @s[x=2608,dx=567,y=0,dy=100,z=-231,dz=509] run function hp:ambience/performance/london/london_stores

execute as @s[x=2808,dx=247,y=44,dy=57,z=-125,dz=174] run function hp:ambience/performance/london/kings_cross

execute as @s[x=2797,dx=94,y=40,dy=50,z=740,dz=56] run function hp:ambience/performance/london/leaky_cauldron

execute as @s[x=2698,dx=236,y=0,dy=125,z=770,dz=358] run function hp:ambience/performance/london/diagon_alley

# London Toilets to Ministry
# 2445 46 310 2461 54 361 - 16 8 51
execute unless entity @s[scores={ambienceLocation=23}] as @s[scores={lastRegion=2},x=2445,dx=16,y=46,dy=8,z=310,dz=51,tag=!isFastTravelling] run function hp:ambience/soundscapes/london_store

# Платформа номер девять и три четверти
execute unless entity @s[scores={ambienceLocation=14}] as @s[scores={lastRegion=2},x=2870,dx=268,y=54,dy=26,z=-465,dz=39,tag=!isFastTravelling] run function hp:ambience/soundscapes/platform_9_3_4

# площадь Гриммо 2422 52 -271 2485 92 -228
execute unless entity @s[scores={ambienceLocation=23}] as @s[scores={lastRegion=2},x=2422,dx=63,y=52,dy=40,z=-271,dz=43,tag=!isFastTravelling] run function hp:ambience/soundscapes/london_store

# Gringotts vaults
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=2},x=2953,dx=200,y=0,dy=129,z=1098,dz=203,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave