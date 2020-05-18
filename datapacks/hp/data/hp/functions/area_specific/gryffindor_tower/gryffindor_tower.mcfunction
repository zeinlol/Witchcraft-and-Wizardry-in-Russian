# Dumbledore stair

# Trigger 734 122 306 737 129 308
execute as @p[x=734,y=122,z=306,dx=3,dy=8,dz=2,tag=!inTravelPoint,tag=play] run function hp:travel_point/init_dumbledore_staircase

function hp:area_specific/gryffindor_tower/dumbledore_stair_control

# Gryffindor painting
execute as 65142c35-a7ff-4543-80f4-a46fa74c95b0 run function hp:area_specific/gryffindor_tower/gryffindor_painting