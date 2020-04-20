# Normal respawn based on distance
execute as @s[scores={overrideRespawn=0}] run function hp:respawn/respawn_normal

# Override respawn determined by quests / callenges
execute as @s[scores={overrideRespawn=1..}] run function hp:respawn/respawn_override