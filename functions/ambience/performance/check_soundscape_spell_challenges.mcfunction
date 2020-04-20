# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad


# Spell challenges
# Lumos 5028 93 0 5104 119 92
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},tag=!isFastTravelling,x=5028,dx=76,y=93,dy=26,z=0,dz=92] run function hp:ambience/soundscapes/hall

# Stupefy 5443 4 -113 5582 130 41
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=5460,dx=57,y=15,dy=51,z=-84,dz=82,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=5443,dx=139,y=4,dy=126,z=-113,dz=154,tag=!isFastTravelling] unless entity @s[x=5460,dx=57,y=15,dy=51,z=-84,dz=82] run function hp:ambience/soundscapes/hall

# Brackium Emendo 5977 25 -31 6030 75 28
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=5977,dx=53,y=25,dy=50,z=-31,dz=59,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave

# Alohomora 6438 3 -47 
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=6432,dx=191,y=0,dy=87,z=-48,dz=95,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall

# Wingardium Leviosa
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=6912,dx=255,y=0,dy=151,z=-80,dz=119,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall

# Bombarda Maxima
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=7393,dx=190,y=16,dy=206,z=-116,dz=594,tag=!isFastTravelling] unless entity @s[x=7407,dx=29,y=90,dy=25,z=-37,dz=69] unless entity @s[x=7480,dx=63,y=81,dy=122,z=313,dz=114] unless entity @s[x=7471,dx=29,y=90,dy=56,z=310,dz=47] unless entity @s[x=7479,dx=35,y=102,dy=56,z=256,dz=68] run function hp:ambience/soundscapes/cave
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=8},x=7407,dx=29,y=90,dy=25,z=-37,dz=69,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogwarts_hall
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=7480,dx=63,y=81,dy=122,z=313,dz=114,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=7471,dx=29,y=90,dy=56,z=310,dz=47,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=7479,dx=35,y=102,dy=56,z=256,dz=68,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall

# Vera Verto
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=8432,dx=263,y=40,dy=126,z=-81,dz=160,tag=!isFastTravelling] unless entity @s[x=8543,dx=132,y=57,dy=73,z=-54,dz=118] unless entity @s[x=8607,dx=26,y=63,dy=6,z=8,dz=19] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=24}] as @s[scores={lastRegion=8},x=8543,dx=132,y=57,dy=73,z=-54,dz=118,tag=!isFastTravelling] unless entity @s[x=8607,dx=26,y=63,dy=6,z=8,dz=19] run function hp:ambience/soundscapes/greenhouse
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=8607,dx=26,y=63,dy=6,z=8,dz=19,tag=!isFastTravelling] run function hp:ambience/soundscapes/hall

# Expecto Patronum
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=7970,dx=173,y=0,dy=175,z=-50,dz=277,tag=!isFastTravelling] unless entity @s[x=8019,dx=135,y=7,dy=116,z=40,dz=209] unless entity @s[x=8016,dx=133,y=14,dy=101,z=36,dz=204] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=8019,dx=135,y=7,dy=116,z=40,dz=209,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave

# Apparition
execute unless entity @s[scores={ambienceLocation=36}] as @s[scores={lastRegion=8},x=8811,dx=345,y=0,dy=256,z=-88,dz=342,tag=!isFastTravelling] unless entity @s[x=9013,y=55,z=67,dx=105,dy=99,dz=95] run function hp:ambience/soundscapes/ministry_hall
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=9013,y=55,z=67,dx=105,dy=99,dz=95,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave

# Underground library
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=6917,y=24,z=4888,dx=151,dy=91,dz=159,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave

# Тайная Комната
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=6388,y=17,z=838,dx=294,dy=128,dz=160,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave

# Challenge Chambers
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=1811,dx=48,y=47,dy=37,z=622,dz=43,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=1810,y=0,z=609,dx=194,dy=105,dz=167,tag=!isFastTravelling] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] run function hp:ambience/soundscapes/hall
execute unless entity @s[scores={ambienceLocation=21}] as @s[scores={lastRegion=8},x=1897,y=0,z=766,dx=129,dy=105,dz=56,tag=!isFastTravelling] unless entity @s[x=1811,dx=48,y=47,dy=37,z=622,dz=43] run function hp:ambience/soundscapes/hall

# Dungeon Delving
execute unless entity @s[scores={ambienceLocation=20}] as @s[scores={lastRegion=8},x=1641,y=2,z=761,dx=253,dy=139,dz=211,tag=!isFastTravelling] run function hp:ambience/soundscapes/cave