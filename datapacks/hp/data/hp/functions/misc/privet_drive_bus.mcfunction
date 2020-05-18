# There's probably a way to do this properly but I just changed the order around until it worked

setblock 2342 64 -779 minecraft:jungle_fence_gate[facing=south,in_wall=true,open=true,powered=false]
setblock 2342 64 -778 minecraft:jungle_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock 2345 64 -778 minecraft:jungle_fence_gate[facing=west,in_wall=false,open=false,powered=false]
setblock 2345 64 -779 minecraft:jungle_fence_gate[facing=west,in_wall=true,open=true,powered=false]
setblock 2348 64 -779 minecraft:jungle_fence_gate[facing=north,in_wall=true,open=true,powered=false]
setblock 2348 64 -778 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=false]
setblock 2351 64 -778 minecraft:jungle_fence_gate[facing=east,in_wall=false,open=false,powered=false]
setblock 2351 64 -779 minecraft:jungle_fence_gate[facing=east,in_wall=true,open=true,powered=false]
setblock 2351 67 -778 minecraft:jungle_fence_gate[facing=east,in_wall=false,open=true,powered=false]
setblock 2351 67 -779 minecraft:jungle_fence_gate[facing=south,in_wall=false,open=false,powered=true]
setblock 2348 67 -778 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=true,powered=false]
setblock 2348 67 -779 minecraft:jungle_fence_gate[facing=west,in_wall=false,open=false,powered=true]
setblock 2345 67 -778 minecraft:jungle_fence_gate[facing=west,in_wall=false,open=true,powered=false]
setblock 2345 67 -779 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=true]
setblock 2342 67 -778 minecraft:jungle_fence_gate[facing=south,in_wall=false,open=true,powered=false]
setblock 2342 67 -779 minecraft:jungle_fence_gate[facing=east,in_wall=false,open=false,powered=true]

# I can't do /setblock with the powered or in_wall tag if set next to another fence gate, so I need to pack it into 2 fencegates >:I
setblock 2342 70 -778 minecraft:birch_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock 2342 70 -779 minecraft:birch_fence_gate[facing=south,in_wall=false,open=true,powered=false]
setblock 2345 70 -778 minecraft:birch_fence_gate[facing=west,in_wall=false,open=false,powered=false]
setblock 2345 70 -779 minecraft:birch_fence_gate[facing=west,in_wall=false,open=true,powered=false]
setblock 2348 70 -778 minecraft:birch_fence_gate[facing=north,in_wall=false,open=false,powered=false]
setblock 2348 70 -779 minecraft:birch_fence_gate[facing=north,in_wall=false,open=true,powered=false]
setblock 2351 70 -778 minecraft:birch_fence_gate[facing=east,in_wall=false,open=false,powered=false]
setblock 2351 70 -779 minecraft:birch_fence_gate[facing=east,in_wall=false,open=true,powered=false]

# windows
setblock 2351 71 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=true,powered=false,south=true,west=false]
setblock 2351 71 -778 minecraft:tripwire[attached=false,disarmed=true,east=true,north=false,powered=false,south=true,west=true]

setblock 2348 71 -779 minecraft:tripwire[attached=true,disarmed=false,east=true,north=false,powered=false,south=true,west=false]
setblock 2348 71 -778 minecraft:tripwire[attached=false,disarmed=true,east=false,north=true,powered=false,south=true,west=false]

setblock 2345 71 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=false,powered=false,south=true,west=true]
setblock 2345 71 -778 minecraft:tripwire[attached=false,disarmed=true,east=false,north=true,powered=false,south=true,west=true]

setblock 2342 71 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=true,powered=false,south=true,west=true]
setblock 2342 71 -778 minecraft:tripwire[attached=true,disarmed=true,east=false,north=false,powered=false,south=true,west=true]

setblock 2342 69 -779 minecraft:tripwire[attached=true,disarmed=false,east=true,north=true,powered=false,south=true,west=false]
setblock 2342 69 -778 minecraft:tripwire[attached=true,disarmed=true,east=true,north=true,powered=false,south=true,west=false]

setblock 2345 69 -778 minecraft:tripwire[attached=true,disarmed=true,east=false,north=true,powered=false,south=false,west=false]
setblock 2345 69 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=true,powered=false,south=false,west=false]

setblock 2348 69 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=false,powered=false,south=true,west=false]
setblock 2348 69 -778 minecraft:tripwire[attached=true,disarmed=true,east=false,north=false,powered=false,south=true,west=false]

setblock 2351 69 -778 minecraft:tripwire[attached=true,disarmed=true,east=true,north=true,powered=false,south=false,west=false]
setblock 2351 69 -779 minecraft:tripwire[attached=true,disarmed=false,east=true,north=true,powered=false,south=false,west=false]

setblock 2351 66 -778 minecraft:tripwire[attached=false,disarmed=true,east=false,north=true,powered=false,south=false,west=false]
setblock 2351 66 -779 minecraft:tripwire[attached=true,disarmed=true,east=true,north=true,powered=false,south=false,west=true]

setblock 2348 66 -778 minecraft:tripwire[attached=true,disarmed=true,east=false,north=false,powered=true,south=true,west=false]
setblock 2348 66 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=false,powered=true,south=true,west=false]

setblock 2345 66 -778 minecraft:tripwire[attached=true,disarmed=true,east=false,north=true,powered=true,south=false,west=false]
setblock 2345 66 -779 minecraft:tripwire[attached=true,disarmed=false,east=false,north=true,powered=true,south=false,west=false]

setblock 2342 66 -778 minecraft:tripwire[attached=true,disarmed=true,east=true,north=true,powered=true,south=true,west=false]
setblock 2342 66 -779 minecraft:tripwire[attached=true,disarmed=false,east=true,north=true,powered=true,south=true,west=false]

# Fix
setblock 2351 67 -779 minecraft:jungle_fence_gate[facing=south,in_wall=false,open=false,powered=true]
setblock 2348 66 -779 minecraft:tripwire[attached=true,disarmed=true,east=true,north=false,powered=false,south=false,west=false]


setblock 2342 67 -779 minecraft:jungle_fence_gate[facing=east,in_wall=false,open=false,powered=true]
setblock 2345 67 -779 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=true]
setblock 2348 67 -779 minecraft:jungle_fence_gate[facing=west,in_wall=false,open=false,powered=true]