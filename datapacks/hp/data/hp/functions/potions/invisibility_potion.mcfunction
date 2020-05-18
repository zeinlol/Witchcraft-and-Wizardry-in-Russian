# Get potion duration - Can't be a timer since you might run on a lower tickrate if your computer is struggling.
scoreboard players set @s tmp 0
scoreboard players set @s invisibilityTime 0

effect give @s minecraft:slowness 10 1 true

execute store result score @s tmp run data get entity @s ActiveEffects[0].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[0].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[1].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[1].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[2].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[2].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[3].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[3].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[4].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[4].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[5].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[5].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[6].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[6].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[7].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[7].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[8].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[8].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[9].Id
execute as @s[scores={tmp=14}] store result score @s invisibilityTime run data get entity @s ActiveEffects[9].Duration
execute as @s[scores={invisibilityTime=0},tag=usingInvisibilityPotion] run scoreboard players set @s invisCapeAnim 1
execute as @s[scores={invisibilityTime=0},tag=usingInvisibilityPotion] run tag @s add exitInvisCape
execute as @s[scores={invisibilityTime=0},tag=usingInvisibilityPotion] run tag @s remove usingInvisibilityPotion