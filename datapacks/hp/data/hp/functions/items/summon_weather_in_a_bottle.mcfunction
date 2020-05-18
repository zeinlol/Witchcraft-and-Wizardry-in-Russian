summon wither_skeleton ~ ~2 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["spellEntity","weatherInABottle","weatherInABottleBeingSummoned"],Motion:[0.0d,0.075d,0.0d],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Attributes:[{Name:generic.maxHealth,Base:1000},{Name:generic.followRange,Base:0},{Name:generic.knockbackResistance,Base:1000},{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0},{Name:generic.armor,Base:1000},{Name:generic.armorToughness,Base:1000}]}
execute as @e[tag=weatherInABottleBeingSummoned,limit=1] run scoreboard players set @s tmp 600
execute as @e[tag=weatherInABottleBeingSummoned,limit=1] run tag @s remove weatherInABottleBeingSummoned

execute at @s run playsound minecraft:custom.inventory.items.cloud master @a

scoreboard players set @s cloudInABottle 20

# Remove from inventory
tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4}] run tag 0-0-5-0-4 add inventory

execute as @s[tag=useQuickSlot1] run scoreboard players operation @s InvItemID = @s quickSlot1ID
execute as @s[tag=useQuickSlot2] run scoreboard players operation @s InvItemID = @s quickSlot2ID
scoreboard players set @s InvItemCount -1
function hp:inventory/give_player_item
execute as @e[tag=inventory,limit=1] run function hp:inventory/read_inventory