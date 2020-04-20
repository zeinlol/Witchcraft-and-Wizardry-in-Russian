tag @s add rotatingPillar
# Pillar State
scoreboard players add @s pillarState 1
scoreboard players set @s[scores={pillarState=5..}] pillarState 1

scoreboard players set @s[scores={pillarState=1}] pillarRotation 0
scoreboard players set @s[scores={pillarState=2}] pillarRotation 90
scoreboard players set @s[scores={pillarState=3}] pillarRotation 180
scoreboard players set @s[scores={pillarState=4}] pillarRotation 270

execute at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @a ~ ~ ~

# Animation
scoreboard players set @s animTest 30