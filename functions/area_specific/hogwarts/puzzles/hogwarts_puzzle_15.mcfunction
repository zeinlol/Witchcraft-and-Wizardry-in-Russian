# Pillars + door
function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_pillar1_15
function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_pillar2_15
function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_pillar3_15
function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_door_15

# Skeletons in maze
execute if entity @p[x=627,y=3,z=-50,dx=52,dy=20,dz=42,tag=play] if score puzzle15MazeIsEmpty global matches 1 run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_15_spawn_skeletons
execute if entity @p[x=627,y=3,z=-50,dx=52,dy=20,dz=42,tag=play] if score puzzle15MazeIsEmpty global matches 1 run scoreboard players set puzzle15MazeIsEmpty global 0