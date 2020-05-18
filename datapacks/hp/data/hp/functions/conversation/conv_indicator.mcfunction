# The pop in animation for the conv indicator
execute as @s[tag=!inConversationNPC,tag=interactable] unless score @s convIndicator matches 6.. if entity @p[distance=..6] run scoreboard players add @s convIndicator 1
# Disappear when player is too far away
execute as @s[scores={convIndicator=1..}] unless entity @p[distance=..6] run scoreboard players remove @s convIndicator 1
# Disappear when player enters conversation
execute as @s[tag=inConversationNPC,scores={convIndicator=1..}] run scoreboard players remove @s convIndicator 1
execute as @s[tag=!interactable,scores={convIndicator=1..}] run scoreboard players remove @s convIndicator 1
# Change character
execute as @s[scores={convIndicator=4}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as @s[scores={convIndicator=3}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as @s[scores={convIndicator=2}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
execute as @s[scores={convIndicator=1}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"\",\"color\":\"white\"}"}
# Remove custom name
execute unless score @s convIndicator matches 1.. run data merge entity @s {CustomNameVisible:0b,CustomName:""}
execute unless score @s convIndicator matches 1.. run tag @s remove showingConvIndicator