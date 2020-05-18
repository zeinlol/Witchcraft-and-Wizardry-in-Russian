# Commands are split up and triggered by a larger proxy area testing thing, which should help limit the number of commands. The commands are very cheap to run performance wise though, so it's not too bad

# Test for flying
execute if entity @s[scores={ambienceLocation=15}] run tag @s add playerIsOutside


### Станция 'Хогсмид'
# Станция 'Хогсмид'
execute unless entity @s[scores={ambienceLocation=15}] as @s[scores={lastRegion=3},tag=!isFastTravelling] unless entity @s[x=880,dx=12,y=0,dy=16,z=-1536,dz=15] unless entity @s[x=793,dx=15,y=50,dy=9,z=-1747,dz=6] unless entity @s[x=811,dx=18,y=58,dy=5,z=-1749,dz=9] unless entity @s[x=810,dx=9,y=50,dy=6,z=-1748,dz=10] unless entity @s[x=819,dx=3,y=50,dy=6,z=-1749,dz=10] unless entity @s[x=823,dx=8,y=50,dy=6,z=-1749,dz=10] unless entity @s[x=832,dx=7,y=50,dy=6,z=-1747,dz=6] run function hp:ambience/soundscapes/hogsmeade_station
# Станция 'Хогсмид' Building
# 793 50 -1747 808 59 -1741 - 15 9 6
# 811 58 -1749 829 63 -1740 - 18 5 9
# 810 50 -1748 819 56 -1738 - 9 6 10
# 819 50 -1749 822 56 -1738 - 3 6 10
# 823 50 -1749 831 56 -1739 - 8 6 10
# 832 50 -1747 839 56 -1741 - 7 6 6
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=793,dx=15,y=50,dy=9,z=-1747,dz=6,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=811,dx=18,y=58,dy=5,z=-1749,dz=9,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=810,dx=9,y=50,dy=6,z=-1748,dz=10,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=819,dx=3,y=50,dy=6,z=-1749,dz=10,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=823,dx=8,y=50,dy=6,z=-1749,dz=10,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house
execute unless entity @s[scores={ambienceLocation=22}] as @s[scores={lastRegion=3},x=832,dx=7,y=50,dy=6,z=-1747,dz=6,tag=!isFastTravelling] run function hp:ambience/soundscapes/hogsmeade_station_house

# Станция 'Хогсмид' Boathouse
# 880 15 -1536 892 23 -1521 - 12 8 15
execute unless entity @s[scores={ambienceLocation=19}] as @s[scores={lastRegion=3},x=880,dx=12,y=0,dy=16,z=-1536,dz=15,tag=!isFastTravelling] run function hp:ambience/soundscapes/boat_house
