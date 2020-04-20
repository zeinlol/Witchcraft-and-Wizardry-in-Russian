scoreboard players add challengeChambersID global 1

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2008 792 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2008 808 1 1 false @s
setblock 2004 10 798 minecraft:barrier
setblock 2004 10 799 minecraft:barrier
setblock 2004 10 800 minecraft:barrier
setblock 2004 11 798 minecraft:barrier
setblock 2004 11 800 minecraft:barrier
setblock 2004 12 798 minecraft:barrier
setblock 2004 12 799 minecraft:conduit[waterlogged=false]{}
setblock 2004 12 800 minecraft:barrier
setblock 2004 13 798 minecraft:barrier
setblock 2004 13 799 minecraft:barrier
setblock 2004 13 800 minecraft:barrier
setblock 2004 14 798 minecraft:barrier
setblock 2004 14 800 minecraft:barrier
setblock 2004 15 798 minecraft:barrier
setblock 2004 15 799 minecraft:barrier
setblock 2004 15 800 minecraft:barrier
setblock 2004 11 799 minecraft:repeater[delay=2,facing=north,locked=true,powered=false]
setblock 2004 14 799 minecraft:repeater[delay=2,facing=west,locked=true,powered=false]

scoreboard players set mirrorOfErisedLocation global 0
scoreboard players set challengeChambersSecondSpawnPointUnlocked global 0
scoreboard players set hasCollectedFlyingKey sharedQuests 0

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 312 1 1 false @s
setblock 705 94 308 air
setblock 704 94 308 air
setblock 705 93 308 air
setblock 704 93 308 air
setblock 704 92 308 minecraft:sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false]
setblock 705 92 308 minecraft:sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false]
setblock 705 92 307 minecraft:spruce_planks
setblock 704 92 307 minecraft:spruce_planks	
setblock 705 92 306 minecraft:spruce_planks
setblock 704 92 306 minecraft:spruce_planks

scoreboard players set challengeChambersHasTriggeredTroll global 0


scoreboard players set challengeChambersMagnetBlock1Direction global 0
scoreboard players set challengeChambersMagnetBlock2Direction global 0
scoreboard players set challengeChambersDoor1Direction global 0

scoreboard players set challengeChambersMagnetBlock1 global -5
scoreboard players set challengeChambersMagnetBlock2 global -5
scoreboard players set challengeChambersDoor1 global -10

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1900 741 1 1 false @s
fill 1902 35 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1896 728 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1896 712 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1880 712 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1880 728 1 1 false @s
setblock 1897 35 719 minecraft:air
setblock 1897 35 720 minecraft:air
setblock 1897 35 721 minecraft:air
setblock 1897 34 719 minecraft:smooth_stone
setblock 1897 34 720 minecraft:smooth_stone
setblock 1897 34 721 minecraft:smooth_stone
setblock 1897 33 719 minecraft:sticky_piston[extended=false,facing=up]
setblock 1897 33 720 minecraft:sticky_piston[extended=false,facing=up]
setblock 1897 33 721 minecraft:sticky_piston[extended=false,facing=up]
setblock 1897 32 719 minecraft:smooth_stone
setblock 1897 32 720 minecraft:smooth_stone
setblock 1897 32 721 minecraft:smooth_stone

setblock 1891 34 720 minecraft:smooth_stone
setblock 1891 33 720 minecraft:sticky_piston[extended=false,facing=up]
setblock 1891 32 720 minecraft:smooth_stone
setblock 1889 34 722 minecraft:smooth_stone
setblock 1889 33 722 minecraft:sticky_piston[extended=false,facing=up]
setblock 1889 32 722 minecraft:smooth_stone
setblock 1887 32 720 minecraft:smooth_stone
setblock 1887 33 720 minecraft:sticky_piston[extended=false,facing=up]
setblock 1887 34 720 minecraft:smooth_stone
setblock 1889 32 718 minecraft:smooth_stone
setblock 1889 33 718 minecraft:sticky_piston[extended=false,facing=up]
setblock 1889 34 718 minecraft:smooth_stone

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 1896 648 1 1 false @s
function hp:quests/quests/challenge_chambers/spawn_brooms

kill @e[tag=chunkLoader]