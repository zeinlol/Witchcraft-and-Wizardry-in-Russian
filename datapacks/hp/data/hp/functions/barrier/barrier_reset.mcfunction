# Normal barrier reset based on distance
execute as @s[scores={overrideRespawn=0}] run function hp:barrier/barrier_reset_normal

# Override respawn determined by quests / callenges
execute as @s[scores={overrideRespawn=1..}] run function hp:respawn/respawn_override