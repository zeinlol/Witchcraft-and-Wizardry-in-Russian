# function hp:conversation/conv/conv_confirmation_exit
tag @p[tag=activePlayer] add isFastTravelling
scoreboard players set @p[tag=activePlayer] fastTravelTimer 100
function hp:tools/fast_travel_set_score
function hp:tools/fast_travel_store_destination_transform

# Music
function hp:music/music/silence