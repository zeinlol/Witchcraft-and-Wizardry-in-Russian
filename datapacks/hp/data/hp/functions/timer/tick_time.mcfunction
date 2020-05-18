## Many thanks to NOPEname
# Basically creates a Time.deltaTime variable in systick

#stores amount of milliseconds that have passed since the last execution of these commands (in this case since the last tick)
#copy and paste them after calling a function to measure the time Minecraft needed to process it
execute store result score systick time run worldborder get
scoreboard players operation systick time %= const1000000 time


#run these commands only once every tick!
worldborder set 50000000
worldborder set 60000000 10000


#increases the score of any targeted entity by the amount of milliseconds Minecraft needed to process the last tick -> exact timer
execute if score systick time matches 51.. run scoreboard players add performance time 1
execute if score systick time matches ..50 if score performance time matches 1.. run scoreboard players remove performance time 1