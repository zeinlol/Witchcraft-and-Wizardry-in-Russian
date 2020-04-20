######################
# On Collision Enemy #
######################
execute positioned ~ ~-.2 ~ run playsound minecraft:custom.spell.stupefy.hit master @a ~ ~ ~ 3
execute positioned ~ ~-.2 ~ run particle minecraft:lava ~ ~ ~ 0.025 0.025 0.025 3 5 normal @a
execute positioned ~ ~-.2 ~ run particle minecraft:smoke ~ ~ ~ 0.025 0.025 0.025 0.1 30 force
execute positioned ~ ~-.2 ~ run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.06 0.06 0.06 10 5 normal @a

# I need to check both 10s and 9s to prevent issues if the player is playing with high latency

# Set bossbarCreatureFocus per player
execute as @s[scores={playerID=1}] run tag @e[tag=bossBarCreatureFocus] remove bossBarCreatureFocus
execute as @s[scores={playerID=1}] run scoreboard players set @s tmp3 0
execute as @s[scores={playerID=1,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add bossBarCreatureFocus
execute as @s[scores={playerID=1,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s}] add bossBarCreatureFocus
execute as @s[scores={playerID=1}] run scoreboard players set @p[scores={playerID=1}] creatureFocus 150

execute as @s[scores={playerID=2}] run tag @e[tag=disabledPlayer2bossBarCreatureFocus] remove disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run scoreboard players set @s tmp3 0
execute as @s[scores={playerID=2,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s}] add disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run scoreboard players set @p[scores={playerID=2}] creatureFocus 150

execute as @s[scores={playerID=3}] run tag @e[tag=disabledPlayer3bossBarCreatureFocus] remove disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run scoreboard players set @s tmp3 0
execute as @s[scores={playerID=3,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s}] add disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run scoreboard players set @p[scores={playerID=3}] creatureFocus 150

execute as @s[scores={playerID=4}] run tag @e[tag=disabledPlayer4bossBarCreatureFocus] remove disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run scoreboard players set @s tmp3 0
execute as @s[scores={playerID=4,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4,tmp3=0}] store success score @s tmp3 run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s}] add disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run scoreboard players set @p[scores={playerID=4}] creatureFocus 150

scoreboard players set @s tmp3 0
execute as @s[scores={tmp3=0}] positioned ~ ~-0.75 ~ as @e[limit=1,sort=nearest,tag=stupefyTarget,nbt={HurtTime:10s},distance=..3] store success score @s tmp3 run scoreboard players set @s animTest 24
execute as @s[scores={tmp3=0}] positioned ~ ~-0.75 ~ as @e[limit=1,sort=nearest,tag=stupefyTarget,nbt={HurtTime:10s},distance=..3] store success score @s tmp3 run scoreboard players set @s animTest 24
execute as @s[scores={tmp3=0}] positioned ~ ~-0.25 ~ as @e[limit=1,sort=nearest,tag=stupefyTarget,nbt={HurtTime:9s},distance=..3] store success score @s tmp3 run scoreboard players set @s animTest 24
execute as @s[scores={tmp3=0}] positioned ~ ~-0.25 ~ as @e[limit=1,sort=nearest,tag=stupefyTarget,nbt={HurtTime:9s},distance=..3] store success score @s tmp3 run scoreboard players set @s animTest 24

execute as @s[scores={playerID=1}] as @p[scores={playerID=1}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=2}] as @p[scores={playerID=2}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=3}] as @p[scores={playerID=3}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=4}] as @p[scores={playerID=4}] run tag @s add spellUpdateBossbar

# Set damagedByID so the creature can detect who killed it with fairly high certainty
scoreboard players set @s tmp3 0
execute as @s[scores={tmp3=0}] store success score @s tmp3 run scoreboard players operation @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] damagedByID = @s playerID
execute as @s[scores={tmp3=0}] store success score @s tmp3 run scoreboard players operation @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:9s}] damagedByID = @s playerID

kill @s