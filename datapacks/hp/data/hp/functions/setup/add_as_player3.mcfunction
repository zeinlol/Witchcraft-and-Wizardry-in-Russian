execute as @a[scores={playerID=3}] run scoreboard players reset @s trackQuestState
execute as @a[scores={playerID=3}] run scoreboard players reset @s trackedQuestID
execute as @a[scores={playerID=3}] run tag @s remove activePlayer
execute as @a[scores={playerID=3}] run tag @s remove inGame
execute as @a[scores={playerID=3}] run scoreboard players reset @s playerID

scoreboard players set @s playerID 3

bossbar set minecraft:player3discover players @s
bossbar set minecraft:player3empty players @s
bossbar set minecraft:player3enemy players @s
bossbar set minecraft:player3health players @s
bossbar set minecraft:player3info players @s
bossbar set minecraft:player3quest players @s


# Set questholder so questoverride and read is done correctly
tag @e[tag=questHolder] add tmpDisabledQuestHolder
tag @e[tag=questHolder] remove questHolder
tag @e[tag=questHolderPlayer3] add questHolder
function hp:setup/add_as_player
tag @e[tag=questHolder] remove questHolder
tag @e[tag=tmpDisabledQuestHolder] add questHolder
tag @e[tag=tmpDisabledQuestHolder] remove tmpDisabledQuestHolder

data merge block 10008 65 12 {Command:"execute as @p[tag=activePlayer] run function hp:quests/quests/the_letter_from_no_one/function"}