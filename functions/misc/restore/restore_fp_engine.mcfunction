# Fix the ID for path following NPC'score
execute store result score @s fpNPCID run data get entity @s ArmorItems[3].tag.fpNPCID 1
execute store result score @s npcPhase run data get entity @s ArmorItems[3].tag.npcPhase 1
execute store result score @s PathID run data get entity @s ArmorItems[3].tag.PathID 1
execute store result score @s targetPathPoint run data get entity @s ArmorItems[3].tag.targetPathPoint 1

execute store result score @s PathPointTargetX run data get entity @s ArmorItems[3].tag.PathPointTargetX 1
execute store result score @s PathPointTargetZ run data get entity @s ArmorItems[3].tag.PathPointTargetZ 1

execute store result score @s lerp1Current run data get entity @s ArmorItems[3].tag.lerp1Current 1
execute store result score @s lerp1End run data get entity @s ArmorItems[3].tag.lerp1End 1
execute store result score @s lerp1Increment run data get entity @s ArmorItems[3].tag.lerp1Increment 1
execute store result score @s lerp1Start run data get entity @s ArmorItems[3].tag.lerp1Start 1
execute store result score @s lerp1Time run data get entity @s ArmorItems[3].tag.lerp1Time 1

execute store result score @s lerp2Current run data get entity @s ArmorItems[3].tag.lerp2Current 1
execute store result score @s lerp2End run data get entity @s ArmorItems[3].tag.lerp2End 1
execute store result score @s lerp2Increment run data get entity @s ArmorItems[3].tag.lerp2Increment 1
execute store result score @s lerp2Start run data get entity @s ArmorItems[3].tag.lerp2Start 1
execute store result score @s lerp2Time run data get entity @s ArmorItems[3].tag.lerp2Time 1

execute store result score @s lerp3Current run data get entity @s ArmorItems[3].tag.lerp3Current 1
execute store result score @s lerp3End run data get entity @s ArmorItems[3].tag.lerp3End 1
execute store result score @s lerp3Increment run data get entity @s ArmorItems[3].tag.lerp3Increment 1
execute store result score @s lerp3Start run data get entity @s ArmorItems[3].tag.lerp3Start 1
execute store result score @s lerp3Time run data get entity @s ArmorItems[3].tag.lerp3Time 1

execute store result score @s idle run data get entity @s ArmorItems[3].tag.idle 1