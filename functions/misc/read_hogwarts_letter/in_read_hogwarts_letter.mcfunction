# enter animation
execute as @s[tag=inLetter,scores={animTest=1..}] run scoreboard players remove @s animTest 1

execute as @s[tag=inLetter,scores={selectSecondary=1..}] run scoreboard players remove @s selectSecondary 1

# set letterPlController for this player
execute as @s[scores={playerID=1}] run tag @e[tag=letterPlControllerPlayer1] add letterPlController
execute as @s[scores={playerID=2}] run tag @e[tag=letterPlControllerPlayer2] add letterPlController
execute as @s[scores={playerID=3}] run tag @e[tag=letterPlControllerPlayer3] add letterPlController
execute as @s[scores={playerID=4}] run tag @e[tag=letterPlControllerPlayer4] add letterPlController


# Use selectSecondary score as a timer for differnet things to appear.
# execute as @s[scores={selectSecondary=100}] run replaceitem "Press shift to close"
# execute as @s[scores={selectSecondary=}] run replaceitem "Has been added to your inventory - select it and press q to open it."
# execute as @s[scores={selectSecondary=}] run replaceitem "Things you collect will be added here. Use your [scroll wheel] or [w] and [s] to navigate and press f to inspect an item"
# execute as @s[scores={selectSecondary=100}] run replaceitem "Press shift to close your inventory"


# slowness is just for zoom effect thing. Levitation is to prevent viewbobbing and general akwardness. Nightvision is so the item preview wont be affected by the lightlevel of where the player is standing.
execute as @s[tag=inLetter] run effect give @s minecraft:slowness 100 2 true
execute as @s[tag=inLetter] run effect give @s minecraft:levitation 100 255 true
execute as @s[tag=inLetter] run tag @s add isLevitating
execute as @s[tag=inLetter,scores={animTest=0}] run effect give @s minecraft:night_vision 100 10 true



tp @s @e[tag=letterPlController,limit=1]
tag @e[tag=letterPlController] remove letterPlController

# When pressing shift
execute as @s[tag=isSneaking,scores={shiftTest=1,selectSecondary=0}] run tag @s add exitLetter