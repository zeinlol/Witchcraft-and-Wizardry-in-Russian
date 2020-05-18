execute as @s[scores={playHealthAnim=20}] run bossbar set minecraft:player4health color purple
execute as @s[scores={playHealthAnim=16,poisoned=0}] run bossbar set minecraft:player4health color red
execute as @s[scores={playHealthAnim=16,poisoned=1..}] run bossbar set minecraft:player4health color yellow
execute as @s[scores={playHealthAnim=12}] run bossbar set minecraft:player4health color purple
execute as @s[scores={playHealthAnim=8,poisoned=0}] run bossbar set minecraft:player4health color red
execute as @s[scores={playHealthAnim=8,poisoned=1..}] run bossbar set minecraft:player4health color yellow
execute as @s[scores={playHealthAnim=4}] run bossbar set minecraft:player4health color purple
execute as @s[scores={playHealthAnim=1,poisoned=0}] run bossbar set minecraft:player4health color red
execute as @s[scores={playHealthAnim=1,poisoned=1..}] run bossbar set minecraft:player4health color yellow

scoreboard players remove @s playHealthAnim 1