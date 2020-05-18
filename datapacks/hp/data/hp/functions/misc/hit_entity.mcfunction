# If player has punched an entity
tag @e[tag=bossBarCreatureFocus,limit=1] remove bossBarCreatureFocus
tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add bossBarCreatureFocus
scoreboard players operation @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] damagedByID = @s playerID
execute at @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] run particle minecraft:witch ~ ~0.5 ~ 0.1 0.1 0.1 10 10
scoreboard players set @p[tag=activePlayer,limit=1] creatureFocus 150
scoreboard players set invisCapeAnim 1
tag @s add exitInvisCape
function hp:misc/update_bossbars
scoreboard players set @s didDamage 0