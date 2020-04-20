scoreboard players set @s tmp2 0
scoreboard players set @s tmp3 0
execute as @a[tag=waitingToReliveMemory,tag=!cancelPensive,tag=play,tag=inGame] run scoreboard players add @p[tag=activePlayer] tmp2 1
execute as @a[tag=play,tag=inGame] run scoreboard players add @p[tag=activePlayer] tmp3 1

execute if score @s tmp2 = @s tmp3 as @a[tag=inGame,tag=waitingToReliveMemory] run function hp:pensive/relive_memory

execute as @s[tag=!cancelPensive] store success score @s tmp run title @s actionbar ["",{"text":"Дождитесь остальных для взаимодействия с Омутом Памяти (","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":") ","color":"gold"}]
execute as @s[tag=cancelPensive] store success score @s tmp run title @s actionbar ["",{"text":"Cancelled","color":"red"}]


execute as @s[tag=!cancelPensive] unless entity @s[x=6002,y=49,z=990,dx=7,dy=12,dz=5] at @s run playsound minecraft:custom.ui.error master @a ~ ~ ~ 100 1
execute as @s[tag=!cancelPensive] unless entity @s[x=6002,y=49,z=990,dx=7,dy=12,dz=5] run tag @s add cancelPensive


execute as @s[tag=cancelPensive] run scoreboard players add @s pensiveCancel 1
execute as @s[tag=cancelPensive,scores={pensiveCancel=20}] run tag @s remove waitingToReliveMemory
execute as @s[tag=cancelPensive,scores={pensiveCancel=20}] unless entity @p[tag=waitingToReliveMemory,tag=play,tag=inGame] run scoreboard players set confirmingPensiveMemoryID global 0
execute as @s[tag=cancelPensive,scores={pensiveCancel=20}] run tag @s remove cancelPensive

