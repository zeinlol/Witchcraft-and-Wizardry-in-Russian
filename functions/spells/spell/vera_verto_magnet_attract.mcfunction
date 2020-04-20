# Summon a beam and move it forward for 30 blocks or until it hits another magnet.
scoreboard players set @s rc_loop 0
scoreboard players set @s magnetPriority 0
execute at @s positioned ^ ^ ^1 run function hp:spells/spell/vera_verto_magnet_beam
