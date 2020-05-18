# Get potion duration - Can't be a timer since you might run on a lower tickrate if your computer is struggling.
scoreboard players set @s tmp 0
scoreboard players set @s absorptionTime 0

execute store result score @s tmp run data get entity @s ActiveEffects[0].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[0].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[1].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[1].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[2].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[2].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[3].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[3].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[4].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[4].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[5].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[5].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[6].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[6].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[7].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[7].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[8].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[8].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[9].Id
execute as @s[scores={tmp=22}] store result score @s absorptionTime run data get entity @s ActiveEffects[9].Duration
execute as @s[scores={absorptionTime=0},tag=usingAbsorptionPotion] run scoreboard players set @s maxHealth 200
execute as @s[scores={absorptionTime=0,playerID=1},tag=usingAbsorptionPotion] run function hp:health/health_changed_player1
execute as @s[scores={absorptionTime=0,playerID=2},tag=usingAbsorptionPotion] run function hp:health/health_changed_player2
execute as @s[scores={absorptionTime=0,playerID=3},tag=usingAbsorptionPotion] run function hp:health/health_changed_player3
execute as @s[scores={absorptionTime=0,playerID=4},tag=usingAbsorptionPotion] run function hp:health/health_changed_player4
execute as @s[scores={absorptionTime=0,playerID=1},tag=usingAbsorptionPotion] run bossbar set minecraft:player1health max 200
execute as @s[scores={absorptionTime=0,playerID=2},tag=usingAbsorptionPotion] run bossbar set minecraft:player2health max 200
execute as @s[scores={absorptionTime=0,playerID=3},tag=usingAbsorptionPotion] run bossbar set minecraft:player3health max 200
execute as @s[scores={absorptionTime=0,playerID=4},tag=usingAbsorptionPotion] run bossbar set minecraft:player4health max 200
execute as @s[scores={absorptionTime=0},tag=usingAbsorptionPotion] run tag @s remove usingAbsorptionPotion