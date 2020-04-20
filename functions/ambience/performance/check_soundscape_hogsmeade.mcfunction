# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

tag @s remove hogsmeadeInterior
tag @s remove hogsmeadeShriekingShack
tag @s remove hogsmeadeInn
tag @s remove hogsmeadeHall
tag @s remove hogsmeadeZonkos
tag @s remove hogsmeadeHoneydukes


# Test for flying
execute if entity @s[scores={ambienceLocation=33}] run tag @s add playerIsOutside

execute as @s[x=5307,dx=10,y=99,dy=12,z=2429,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=0,y=99,dy=2,z=2428,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5312,dx=2,y=99,dy=6,z=2436,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5307,dx=10,y=112,dy=2,z=2431,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5295,dx=6,y=101,dy=9,z=2424,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5297,dx=2,y=110,dy=4,z=2424,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5295,dx=3,y=100,dy=6,z=2433,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5294,dx=0,y=101,dy=5,z=2427,dz=3] run tag @s add hogsmeadeInterior

execute as @s[x=5327,dx=3,y=97,dy=13,z=2431,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5326,dx=10,y=97,dy=19,z=2432,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5326,dx=10,y=116,dy=6,z=2434,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5330,dx=2,y=117,dy=3,z=2432,dz=7] run tag @s add hogsmeadeInterior

execute as @s[x=5341,dx=10,y=104,dy=26,z=2435,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5349,dx=4,y=104,dy=22,z=2436,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5350,dx=2,y=105,dy=12,z=2442,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5352,dx=1,y=110,dy=11,z=2435,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5341,dx=7,y=110,dy=15,z=2441,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5341,dx=4,y=104,dy=18,z=2441,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5342,dx=2,y=106,dy=11,z=2443,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5344,dx=4,y=105,dy=16,z=2429,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5346,dx=0,y=122,dy=3,z=2429,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=0,y=125,dy=3,z=2441,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5352,dx=1,y=127,dy=3,z=2437,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5341,dx=11,y=127,dy=3,z=2435,dz=0] run tag @s remove hogsmeadeInterior

execute as @s[x=5358,dx=9,y=106,dy=11,z=2441,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5361,dx=6,y=105,dy=12,z=2445,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5364,dx=4,y=98,dy=9,z=2412,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=2,y=98,dy=2,z=2422,dz=1] run tag @s add hogsmeadeInterior

execute as @s[x=5373,dx=14,y=101,dy=20,z=2437,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5378,dx=3,y=101,dy=20,z=2433,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5383,dx=2,y=108,dy=10,z=2444,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5383,dx=2,y=114,dy=2,z=2447,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5373,dx=14,y=114,dy=1,z=2436,dz=8] run tag @s add hogsmeadeInterior

execute as @s[x=5373,dx=15,y=121,dy=6,z=2439,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5378,dx=2,y=122,dy=14,z=2438,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5385,dx=0,y=102,dy=2,z=2437,dz=0] run tag @s remove hogsmeadeInterior

execute as @s[x=5397,dx=4,y=106,dy=16,z=2437,dz=12] run tag @s add hogsmeadeInterior
execute as @s[x=5401,dx=1,y=106,dy=4,z=2449,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5396,dx=0,y=107,dy=12,z=2437,dz=13] run tag @s add hogsmeadeInterior
execute as @s[x=5397,dx=4,y=111,dy=12,z=2450,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5393,dx=3,y=106,dy=14,z=2440,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5402,dx=0,y=113,dy=2,z=2441,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5398,dx=2,y=123,dy=0,z=2436,dz=14] run tag @s add hogsmeadeInterior
execute as @s[x=5399,dx=1,y=124,dy=1,z=2439,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5333,dx=8,y=105,dy=6,z=2454,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5330,dx=2,y=104,dy=11,z=2457,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5342,dx=0,y=104,dy=5,z=2456,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5335,dx=0,y=104,dy=3,z=2465,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5334,dx=6,y=111,dy=11,z=2455,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5333,dx=8,y=111,dy=4,z=2455,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5336,dx=2,y=122,dy=7,z=2455,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5335,dx=3,y=129,dy=15,z=2459,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5337,dx=2,y=110,dy=3,z=2453,dz=1] run tag @s add hogsmeadeInterior

execute as @s[x=5310,dx=10,y=101,dy=13,z=2450,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5321,dx=0,y=105,dy=10,z=2453,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5311,dx=2,y=101,dy=4,z=2449,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5317,dx=0,y=102,dy=0,z=2458,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=0,y=101,dy=14,z=2452,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5319,dx=1,y=114,dy=0,z=2450,dz=0] run tag @s remove hogsmeadeInterior

execute as @s[x=5295,dx=4,y=101,dy=8,z=2449,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5296,dx=2,y=110,dy=1,z=2449,dz=9] run tag @s add hogsmeadeInterior

execute as @s[x=5282,dx=4,y=99,dy=9,z=2446,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5282,dx=1,y=99,dy=9,z=2445,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5283,dx=2,y=109,dy=2,z=2447,dz=7] run tag @s add hogsmeadeInterior

execute as @s[x=5269,dx=4,y=99,dy=10,z=2443,dz=8] run tag @s add hogsmeadeInterior

execute as @s[x=5234,dx=10,y=95,dy=10,z=2430,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5231,dx=2,y=96,dy=3,z=2431,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5237,dx=5,y=106,dy=1,z=2431,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5204,dx=4,y=92,dy=13,z=2436,dz=12] run tag @s add hogsmeadeInterior
execute as @s[x=5203,dx=0,y=91,dy=7,z=2436,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5203,dx=6,y=91,dy=6,z=2440,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5203,dx=4,y=93,dy=15,z=2448,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5202,dx=6,y=94,dy=4,z=2452,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5204,dx=2,y=106,dy=0,z=2447,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5228,dx=2,y=94,dy=5,z=2452,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5200,dx=4,y=96,dy=9,z=2479,dz=12] run tag @s add hogsmeadeInterior
execute as @s[x=5198,dx=13,y=96,dy=10,z=2487,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5199,dx=6,y=97,dy=3,z=2486,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5198,dx=13,y=107,dy=1,z=2489,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5216,dx=9,y=91,dy=21,z=2489,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5219,dx=5,y=92,dy=15,z=2488,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5216,dx=2,y=102,dy=5,z=2488,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5220,dx=4,y=92,dy=7,z=2487,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5217,dx=0,y=94,dy=15,z=2495,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5223,dx=0,y=96,dy=13,z=2495,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5226,dx=9,y=92,dy=11,z=2488,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5228,dx=0,y=95,dy=13,z=2494,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5234,dx=0,y=95,dy=13,z=2494,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5237,dx=11,y=97,dy=12,z=2486,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5245,dx=1,y=97,dy=3,z=2493,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5240,dx=1,y=98,dy=2,z=2493,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5238,dx=10,y=110,dy=2,z=2485,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5241,dx=4,y=113,dy=4,z=2487,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5239,dx=2,y=104,dy=3,z=2485,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5251,dx=8,y=98,dy=15,z=2481,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5254,dx=4,y=98,dy=12,z=2489,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=2,y=98,dy=3,z=2477,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5251,dx=1,y=103,dy=3,z=2489,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5261,dx=9,y=98,dy=13,z=2478,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5263,dx=4,y=99,dy=13,z=2473,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5265,dx=4,y=111,dy=6,z=2480,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5265,dx=4,y=99,dy=18,z=2487,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5261,dx=3,y=104,dy=5,z=2487,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5261,dx=9,y=112,dy=8,z=2481,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5262,dx=2,y=111,dy=1,z=2486,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5257,dx=14,y=93,dy=5,z=2473,dz=15] run tag @s add hogsmeadeInterior

execute as @s[x=5272,dx=8,y=99,dy=15,z=2476,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5277,dx=3,y=99,dy=13,z=2485,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5273,dx=5,y=105,dy=6,z=2485,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5275,dx=2,y=105,dy=6,z=2475,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5277,dx=2,y=112,dy=5,z=2484,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5272,dx=8,y=115,dy=3,z=2478,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5272,dx=9,y=118,dy=3,z=2479,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5272,dx=8,y=122,dy=0,z=2480,dz=1] run tag @s add hogsmeadeInterior

execute as @s[x=5282,dx=12,y=99,dy=18,z=2477,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5283,dx=11,y=118,dy=2,z=2478,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5283,dx=11,y=121,dy=2,z=2479,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5289,dx=0,y=117,dy=7,z=2481,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5285,dx=1,y=100,dy=6,z=2484,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5292,dx=1,y=100,dy=6,z=2484,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5286,dx=0,y=100,dy=3,z=2477,dz=0] run tag @s remove hogsmeadeInterior

execute as @s[x=5296,dx=11,y=101,dy=18,z=2475,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5305,dx=1,y=102,dy=6,z=2482,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5298,dx=1,y=102,dy=6,z=2482,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5302,dx=4,y=101,dy=4,z=2467,dz=7] run tag @s add hogsmeadeInterior

execute as @s[x=5313,dx=6,y=101,dy=17,z=2471,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5315,dx=2,y=106,dy=11,z=2481,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5314,dx=4,y=119,dy=2,z=2471,dz=9] run tag @s add hogsmeadeInterior

execute as @s[x=5322,dx=7,y=102,dy=14,z=2470,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5325,dx=2,y=108,dy=9,z=2480,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5324,dx=4,y=117,dy=6,z=2470,dz=9] run tag @s add hogsmeadeInterior

execute as @s[x=5335,dx=3,y=104,dy=10,z=2471,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5338,dx=5,y=104,dy=23,z=2471,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5334,dx=0,y=104,dy=19,z=2470,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5335,dx=8,y=128,dy=3,z=2473,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5334,dx=0,y=127,dy=4,z=2474,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5335,dx=2,y=114,dy=10,z=2471,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5334,dx=3,y=125,dy=2,z=2472,dz=5] run tag @s add hogsmeadeInterior

execute as @s[x=5347,dx=9,y=106,dy=19,z=2465,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5352,dx=4,y=106,dy=8,z=2475,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=4,y=113,dy=5,z=2475,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5346,dx=0,y=113,dy=12,z=2469,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5353,dx=2,y=108,dy=4,z=2476,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=8,y=115,dy=8,z=2475,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5350,dx=2,y=107,dy=10,z=2462,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=9,y=126,dy=5,z=2467,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5350,dx=2,y=126,dy=5,z=2466,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=9,y=131,dy=4,z=2469,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5357,dx=14,y=112,dy=14,z=2463,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5372,dx=7,y=112,dy=11,z=2463,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5380,dx=13,y=112,dy=8,z=2464,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5394,dx=3,y=112,dy=13,z=2466,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5359,dx=13,y=113,dy=6,z=2461,dz=14] run tag @s add hogsmeadeInterior
execute as @s[x=5358,dx=4,y=118,dy=5,z=2461,dz=13] run tag @s add hogsmeadeInterior
execute as @s[x=5359,dx=2,y=123,dy=2,z=2462,dz=12] run tag @s add hogsmeadeInterior
execute as @s[x=5369,dx=11,y=121,dy=4,z=2464,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5358,dx=8,y=126,dy=4,z=2465,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5367,dx=6,y=127,dy=3,z=2465,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5371,dx=9,y=121,dy=10,z=2466,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5381,dx=6,y=121,dy=4,z=2465,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5388,dx=5,y=121,dy=4,z=2466,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5380,dx=16,y=125,dy=1,z=2467,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5381,dx=14,y=127,dy=0,z=2467,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5380,dx=3,y=127,dy=3,z=2467,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5359,dx=14,y=130,dy=4,z=2467,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5358,dx=4,y=131,dy=4,z=2466,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5362,dx=8,y=135,dy=0,z=2467,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5374,dx=19,y=128,dy=4,z=2468,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5359,dx=11,y=120,dy=0,z=2461,dz=14] run tag @s add hogsmeadeInterior

execute as @s[x=5199,dx=4,y=95,dy=10,z=2537,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5200,dx=2,y=106,dy=1,z=2537,dz=7] run tag @s add hogsmeadeInterior

execute as @s[x=5199,dx=8,y=96,dy=10,z=2513,dz=16] run tag @s add hogsmeadeInterior
execute as @s[x=5198,dx=0,y=95,dy=6,z=2521,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5202,dx=2,y=96,dy=4,z=2511,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5208,dx=1,y=96,dy=10,z=2519,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5210,dx=0,y=97,dy=3,z=2521,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5201,dx=9,y=102,dy=6,z=2522,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5200,dx=6,y=107,dy=2,z=2513,dz=16] run tag @s add hogsmeadeInterior

execute as @s[x=5217,dx=7,y=91,dy=13,z=2509,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5217,dx=5,y=104,dy=2,z=2509,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5219,dx=2,y=107,dy=5,z=2509,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5219,dx=2,y=91,dy=9,z=2508,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5230,dx=6,y=96,dy=12,z=2508,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5232,dx=2,y=98,dy=3,z=2507,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5243,dx=6,y=96,dy=12,z=2507,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5245,dx=2,y=97,dy=4,z=2506,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5245,dx=2,y=109,dy=3,z=2507,dz=9] run tag @s add hogsmeadeInterior

execute as @s[x=5256,dx=21,y=97,dy=11,z=2505,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5271,dx=6,y=98,dy=10,z=2505,dz=19] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=14,y=98,dy=10,z=2517,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=16,y=109,dy=5,z=2519,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=19,y=108,dy=6,z=2507,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5272,dx=4,y=104,dy=7,z=2504,dz=20] run tag @s add hogsmeadeInterior
execute as @s[x=5258,dx=8,y=109,dy=1,z=2506,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=2,y=98,dy=2,z=2504,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5266,dx=2,y=98,dy=3,z=2504,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5270,dx=8,y=98,dy=4,z=2504,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5256,dx=14,y=97,dy=5,z=2512,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5264,dx=4,y=103,dy=0,z=2516,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5262,dx=8,y=103,dy=0,z=2512,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5257,dx=4,y=96,dy=6,z=2520,dz=11] run tag @s add hogsmeadeInterior

execute as @s[x=5288,dx=6,y=99,dy=10,z=2499,dz=13] run tag @s add hogsmeadeInterior
execute as @s[x=5290,dx=2,y=110,dy=0,z=2499,dz=13] run tag @s add hogsmeadeInterior
execute as @s[x=5295,dx=0,y=98,dy=3,z=2508,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5284,dx=4,y=100,dy=5,z=2502,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5285,dx=3,y=107,dy=2,z=2503,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5290,dx=2,y=100,dy=4,z=2497,dz=1] run tag @s add hogsmeadeInterior

execute as @s[x=5308,dx=14,y=101,dy=12,z=2497,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5323,dx=1,y=102,dy=5,z=2500,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5319,dx=2,y=102,dy=5,z=2496,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=2,y=102,dy=5,z=2496,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5307,dx=0,y=102,dy=5,z=2501,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5308,dx=14,y=113,dy=6,z=2498,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5308,dx=14,y=120,dy=0,z=2500,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5323,dx=0,y=109,dy=8,z=2501,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5311,dx=1,y=120,dy=0,z=2503,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=2,y=110,dy=5,z=2496,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5319,dx=2,y=110,dy=5,z=2496,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5320,dx=0,y=120,dy=5,z=2502,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5340,dx=10,y=106,dy=14,z=2493,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5346,dx=2,y=106,dy=10,z=2491,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5346,dx=3,y=106,dy=19,z=2499,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5350,dx=0,y=112,dy=3,z=2500,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5347,dx=2,y=121,dy=7,z=2493,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5337,dx=2,y=106,dy=19,z=2496,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5339,dx=0,y=112,dy=7,z=2495,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5335,dx=1,y=116,dy=3,z=2496,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5366,dx=2,y=107,dy=13,z=2492,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5361,dx=4,y=106,dy=14,z=2493,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5361,dx=4,y=107,dy=3,z=2498,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5360,dx=8,y=112,dy=6,z=2488,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5361,dx=1,y=107,dy=4,z=2492,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5361,dx=7,y=118,dy=2,z=2490,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5363,dx=3,y=121,dy=2,z=2490,dz=6] run tag @s add hogsmeadeInterior

# Three broomsticks
execute as @s[x=5374,dx=33,y=100,dy=20,z=2496,dz=9] run tag @s add hogsmeadeInn
execute as @s[x=5388,dx=4,y=104,dy=20,z=2506,dz=2] run tag @s add hogsmeadeInn
execute as @s[x=5388,dx=4,y=104,dy=12,z=2509,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5392,dx=6,y=104,dy=2,z=2495,dz=14] run tag @s add hogsmeadeInn
execute as @s[x=5407,dx=0,y=117,dy=0,z=2495,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5380,dx=27,y=104,dy=13,z=2495,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5374,dx=32,y=121,dy=4,z=2499,dz=3] run tag @s add hogsmeadeInn
execute as @s[x=5370,dx=3,y=115,dy=4,z=2499,dz=4] run tag @s add hogsmeadeInn
execute as @s[x=5375,dx=2,y=120,dy=3,z=2495,dz=3] run tag @s add hogsmeadeInn
execute as @s[x=5391,dx=4,y=120,dy=20,z=2496,dz=5] run tag @s add hogsmeadeInn
execute as @s[x=5393,dx=0,y=140,dy=3,z=2497,dz=2] run tag @s add hogsmeadeInn
execute as @s[x=5403,dx=2,y=121,dy=3,z=2498,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5376,dx=25,y=105,dy=9,z=2506,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5378,dx=4,y=106,dy=8,z=2507,dz=2] run tag @s add hogsmeadeInn
execute as @s[x=5370,dx=3,y=105,dy=15,z=2500,dz=4] run tag @s add hogsmeadeInn
execute as @s[x=5370,dx=3,y=111,dy=3,z=2498,dz=2] run tag @s add hogsmeadeInn
execute as @s[x=5387,dx=0,y=122,dy=3,z=2498,dz=0] run tag @s add hogsmeadeInn
execute as @s[x=5389,dx=2,y=121,dy=1,z=2502,dz=4] run tag @s add hogsmeadeInn

# Honeydukes
execute as @s[x=5413,dx=10,y=87,dy=28,z=2477,dz=19] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5424,dx=13,y=104,dy=9,z=2478,dz=10] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5424,dx=14,y=98,dy=5,z=2478,dz=9] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5415,dx=23,y=115,dy=7,z=2480,dz=6] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5413,dx=1,y=115,dy=7,z=2480,dz=4] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5424,dx=14,y=114,dy=0,z=2479,dz=8] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5415,dx=6,y=116,dy=6,z=2479,dz=16] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5417,dx=20,y=123,dy=1,z=2482,dz=2] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5417,dx=2,y=123,dy=1,z=2484,dz=11] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5417,dx=8,y=123,dy=1,z=2481,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5421,dx=4,y=115,dy=4,z=2479,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5412,dx=13,y=99,dy=4,z=2476,dz=17] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5412,dx=0,y=104,dy=4,z=2493,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5412,dx=0,y=104,dy=4,z=2487,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5415,dx=0,y=104,dy=4,z=2476,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5423,dx=1,y=104,dy=5,z=2476,dz=1] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5428,dx=0,y=100,dy=8,z=2477,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5436,dx=0,y=100,dy=8,z=2477,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5419,dx=0,y=111,dy=3,z=2476,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5432,dx=0,y=111,dy=3,z=2477,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5432,dx=0,y=111,dy=3,z=2489,dz=0] run tag @s add hogsmeadeHoneydukes
execute as @s[x=5420,dx=13,y=88,dy=7,z=2485,dz=8] run tag @s add hogsmeadeHoneydukes

# Zonkos
execute as @s[x=5443,dx=18,y=101,dy=13,z=2477,dz=8] run tag @s add hogsmeadeZonkos
execute as @s[x=5454,dx=6,y=101,dy=13,z=2476,dz=0] run tag @s add hogsmeadeZonkos
execute as @s[x=5444,dx=6,y=100,dy=14,z=2476,dz=0] run tag @s add hogsmeadeZonkos
execute as @s[x=5443,dx=18,y=115,dy=3,z=2478,dz=6] run tag @s add hogsmeadeZonkos
execute as @s[x=5443,dx=18,y=119,dy=4,z=2480,dz=2] run tag @s add hogsmeadeZonkos
execute as @s[x=5446,dx=0,y=101,dy=3,z=2485,dz=0] run tag @s remove hogsmeadeZonkos

execute as @s[x=5470,dx=9,y=100,dy=10,z=2481,dz=4] run tag @s add hogsmeadeInterior

execute as @s[x=5436,dx=10,y=100,dy=11,z=2501,dz=7] run tag @s add hogsmeadeInterior
execute as @s[x=5447,dx=1,y=100,dy=11,z=2504,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5441,dx=2,y=100,dy=11,z=2509,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5443,dx=3,y=101,dy=5,z=2509,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5436,dx=9,y=112,dy=3,z=2503,dz=4] run tag @s add hogsmeadeInterior

execute as @s[x=5426,dx=10,y=101,dy=8,z=2522,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5434,dx=1,y=110,dy=0,z=2523,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5429,dx=2,y=101,dy=6,z=2521,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5432,dx=0,y=101,dy=3,z=2521,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5416,dx=8,y=100,dy=15,z=2497,dz=14] run tag @s add hogsmeadeInterior
execute as @s[x=5425,dx=0,y=100,dy=21,z=2507,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5415,dx=0,y=102,dy=13,z=2497,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5416,dx=0,y=116,dy=0,z=2507,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5416,dx=9,y=119,dy=2,z=2507,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5423,dx=2,y=101,dy=4,z=2512,dz=1] run tag @s remove hogsmeadeInterior

execute as @s[x=5382,dx=13,y=102,dy=3,z=2528,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5386,dx=9,y=102,dy=7,z=2528,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5385,dx=11,y=109,dy=5,z=2529,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5362,dx=2,y=102,dy=7,z=2554,dz=5] run tag @s add hogsmeadeInterior

execute as @s[x=5364,dx=10,y=102,dy=12,z=2542,dz=6] run tag @s add hogsmeadeInterior
execute as @s[x=5363,dx=0,y=107,dy=3,z=2545,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5364,dx=10,y=114,dy=6,z=2544,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5374,dx=0,y=103,dy=1,z=2543,dz=0] run tag @s remove hogsmeadeInterior

execute as @s[x=5366,dx=5,y=99,dy=21,z=2528,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5372,dx=1,y=100,dy=10,z=2531,dz=5] run tag @s add hogsmeadeInterior
execute as @s[x=5372,dx=0,y=110,dy=4,z=2528,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5369,dx=0,y=104,dy=4,z=2537,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5371,dx=2,y=99,dy=3,z=2528,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=0,y=99,dy=5,z=2528,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=0,y=104,dy=5,z=2529,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=0,y=104,dy=4,z=2535,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5364,dx=18,y=103,dy=12,z=2515,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5379,dx=2,y=102,dy=6,z=2520,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=7,y=104,dy=16,z=2511,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5374,dx=8,y=115,dy=2,z=2516,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5364,dx=0,y=105,dy=5,z=2520,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5363,dx=0,y=105,dy=5,z=2519,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5363,dx=1,y=106,dy=11,z=2513,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5365,dx=2,y=105,dy=3,z=2510,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5343,dx=5,y=106,dy=12,z=2509,dz=9] run tag @s add hogsmeadeInterior
execute as @s[x=5344,dx=3,y=119,dy=2,z=2518,dz=2829] run tag @s add hogsmeadeInterior
execute as @s[x=5343,dx=5,y=119,dy=0,z=2510,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5349,dx=0,y=107,dy=10,z=2513,dz=5] run tag @s add hogsmeadeInterior

execute as @s[x=5307,dx=6,y=102,dy=13,z=2518,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=2,y=116,dy=5,z=2518,dz=10] run tag @s add hogsmeadeInterior
execute as @s[x=5307,dx=1,y=116,dy=3,z=2523,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5308,dx=4,y=103,dy=9,z=2529,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5309,dx=1,y=113,dy=1,z=2530,dz=8] run tag @s add hogsmeadeInterior

execute as @s[x=5264,dx=2,y=98,dy=8,z=2625,dz=4] run tag @s add hogsmeadeInterior

execute as @s[x=5215,dx=9,y=99,dy=12,z=2644,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5215,dx=9,y=112,dy=2,z=2645,dz=2] run tag @s add hogsmeadeInterior

execute as @s[x=5233,dx=16,y=100,dy=10,z=2643,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5237,dx=4,y=100,dy=12,z=2641,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5233,dx=16,y=111,dy=5,z=2645,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5234,dx=1,y=110,dy=2,z=2650,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5239,dx=2,y=100,dy=12,z=2651,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5237,dx=4,y=106,dy=5,z=2640,dz=0] run tag @s add hogsmeadeInterior

execute as @s[x=5373,dx=5,y=105,dy=8,z=2685,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5372,dx=0,y=106,dy=8,z=2685,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5372,dx=0,y=110,dy=3,z=2688,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5240,dx=2,y=100,dy=10,z=2642,dz=2] run tag @s add hogsmeadeInterior


# Hogs Head
execute as @s[x=5385,dx=8,y=106,dy=11,z=2660,dz=26] run tag @s add hogsmeadeInterior
execute as @s[x=5389,dx=2,y=108,dy=4,z=2656,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5394,dx=1,y=105,dy=15,z=2675,dz=11] run tag @s add hogsmeadeInterior
execute as @s[x=5389,dx=2,y=105,dy=3,z=2686,dz=2] run tag @s add hogsmeadeInterior
execute as @s[x=5396,dx=1,y=105,dy=9,z=2681,dz=3] run tag @s add hogsmeadeInterior
execute as @s[x=5383,dx=1,y=108,dy=6,z=2665,dz=8] run tag @s add hogsmeadeInterior
execute as @s[x=5384,dx=0,y=108,dy=7,z=2660,dz=4] run tag @s add hogsmeadeInterior
execute as @s[x=5383,dx=0,y=107,dy=7,z=2661,dz=1] run tag @s add hogsmeadeInterior
execute as @s[x=5386,dx=5,y=117,dy=4,z=2660,dz=26] run tag @s add hogsmeadeInterior
execute as @s[x=5387,dx=2,y=122,dy=1,z=2662,dz=24] run tag @s add hogsmeadeInterior
execute as @s[x=5388,dx=5,y=117,dy=8,z=2675,dz=11] run tag @s add hogsmeadeInterior
execute as @s[x=5385,dx=0,y=118,dy=2,z=2680,dz=0] run tag @s add hogsmeadeInterior
execute as @s[x=5385,dx=0,y=118,dy=0,z=2661,dz=13] run tag @s add hogsmeadeInterior

# Shrieking Shack
execute as @s[x=5426,dx=7,y=25,dy=66,z=2779,dz=16] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5434,dx=2,y=80,dy=14,z=2786,dz=2] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5422,dx=3,y=64,dy=21,z=2789,dz=5] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5425,dx=0,y=75,dy=11,z=2781,dz=4] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5423,dx=2,y=75,dy=4,z=2780,dz=4] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5421,dx=4,y=77,dy=10,z=2789,dz=4] run tag @s add hogsmeadeShriekingShack
execute as @s[x=5425,dx=0,y=86,dy=0,z=2794,dz=0] run tag @s add hogsmeadeShriekingShack

# Caves and cellars and that
execute as @s[x=5412,dx=18,y=59,dy=44,z=2477,dz=18] run tag @s add hogsmeadeHall
execute as @s[x=5428,y=99,z=2478,dx=9,dy=4,dz=11] run tag @s add hogsmeadeHall
execute as @s[x=5409,y=79,z=2473,dx=46,dy=18,dz=24] run tag @s add hogsmeadeHall
execute as @s[x=5457,y=79,z=2481,dx=49,dy=8,dz=14] run tag @s add hogsmeadeHall
execute as @s[x=5290,y=32,z=2796,dx=89,dy=32,dz=39] run tag @s add hogsmeadeHall


execute as @s[x=5287,y=33,z=2801,dx=142,dy=23,dz=23] run tag @s add hogsmeadeHall
execute as @s[x=5347,y=40,z=2774,dx=82,dy=24,dz=48] run tag @s add hogsmeadeHall


execute unless entity @s[scores={ambienceLocation=34}] as @s[tag=hogsmeadeShriekingShack,tag=!isFastTravelling] run function hp:ambience/soundscapes/shrieking_shack
execute unless entity @s[scores={ambienceLocation=3}] as @s[tag=hogsmeadeInn,tag=!isFastTravelling] run function hp:ambience/soundscapes/leaky_cauldron
execute unless entity @s[scores={ambienceLocation=21}] as @s[tag=hogsmeadeHall,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=6}] as @s[tag=hogsmeadeZonkos,tag=!isFastTravelling] run function hp:ambience/soundscapes/diagon_alley_store
execute unless entity @s[scores={ambienceLocation=17}] as @s[tag=hogsmeadeHoneydukes,tag=!hogsmeadeHall	,tag=!isFastTravelling] run function hp:ambience/soundscapes/great_hall_full
execute unless entity @s[scores={ambienceLocation=6}] as @s[tag=hogsmeadeInterior,tag=!hogsmeadeShriekingShack,tag=!hogsmeadeInn,tag=!hogsmeadeHall,tag=!hogsmeadeZonkos,tag=!hogsmeadeHoneydukes,tag=!isFastTravelling] run function hp:ambience/soundscapes/diagon_alley_store

execute unless entity @s[scores={ambienceLocation=33}] as @s[tag=!hogsmeadeInterior,tag=!hogsmeadeShriekingShack,tag=!hogsmeadeInn,tag=!hogsmeadeHall,tag=!hogsmeadeZonkos,tag=!hogsmeadeHoneydukes,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_winds