scoreboard players remove @s pickUpTimer 1

# Prevent other titles overriding this
scoreboard players set @s tmp 1

# Set title
execute if entity @s[tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] run title @s actionbar ["",{"text":"Подобрано: ","color":"gold"},{"score":{"name":"@s","objective":"pickUpAmount"},"color":"gold"},{"text":" ","color":"gold"},{"selector":"@e[tag=specialHeader,limit=1]","color":"white"}]
execute unless entity @s[tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] run scoreboard players set @s pickUpTimer 0