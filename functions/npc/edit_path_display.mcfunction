# This can't be one tick because minecraft is a bit janky

######### 0 #############
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage0\"}"} unless entity @e[tag=iniPathIndicator] run data merge block ~ ~ ~ {CustomName:"{\"text\":\"stage1\"}"}

######### 1 #############
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage1\"}"} run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"0\"}",CustomNameVisible:1b,NoBasePlate:1b,Team:"pathPoints",Pose:{Head:[90f,0f,0f]},Tags:["iniPathIndicator","pathIndicator","editInteractable"],NoGravity:1b,Invulnerable:1b,Small:1b}

######### 2 #############
# (I use Enchantments[0].lvl to store y location. You can probably add custom nbt but i'm too stupid to get that to work)
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result entity @e[tag=iniPathIndicator,limit=1] Pos[1] double 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[0].lvl
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result entity @e[tag=iniPathIndicator,limit=1] Rotation[0] float 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[1].lvl
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result score @e[tag=iniPathIndicator,limit=1] PathPointID run data get block ~ 0 ~ Items[0].tag.Enchantments[4].lvl 1
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result score @e[tag=iniPathIndicator,limit=1] PathID run data get block ~ 0 ~ Items[0].tag.Enchantments[5].lvl 1
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result score @e[tag=iniPathIndicator,limit=1] pathEnding run data get block ~ 0 ~ Items[0].tag.Enchantments[6].lvl 1
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} store result score @e[tag=iniPathIndicator,limit=1] idle run data get block ~ 0 ~ Items[0].tag.Enchantments[9].lvl 1


execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=600}] {CustomName:"{\"text\":\"600\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=400}] {CustomName:"{\"text\":\"400\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=200}] {CustomName:"{\"text\":\"200\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=100}] {CustomName:"{\"text\":\"100\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=90}] {CustomName:"{\"text\":\"90\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=80}] {CustomName:"{\"text\":\"80\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=70}] {CustomName:"{\"text\":\"70\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=60}] {CustomName:"{\"text\":\"60\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=50}] {CustomName:"{\"text\":\"50\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=40}] {CustomName:"{\"text\":\"40\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=30}] {CustomName:"{\"text\":\"30\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=20}] {CustomName:"{\"text\":\"20\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=10}] {CustomName:"{\"text\":\"10\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge entity @e[tag=iniPathIndicator,limit=1,scores={idle=0}] {CustomName:"{\"text\":\"0\"}"}

execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run tag @e[tag=iniPathIndicator] remove iniPathIndicator


# Change stage
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage2\"}"} run data merge block ~ ~ ~ {CustomName:"{\"text\":\"sleep\"}"}
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"stage1\"}"} run data merge block ~ ~ ~ {CustomName:"{\"text\":\"stage2\"}"}

# Self destruct on exit edit
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"sleep\"}"} unless entity @p[tag=showPathPoints] run kill @e[tag=pathIndicator]
execute if block ~ ~ ~ minecraft:repeating_command_block{CustomName:"{\"text\":\"sleep\"}"} unless entity @p[tag=showPathPoints] run setblock ~ ~ ~ light_gray_wool