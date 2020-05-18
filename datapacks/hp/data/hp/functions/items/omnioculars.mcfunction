# Enter Exit Anim
effect give @s minecraft:slowness 100 10 true
tag @s add preventPunching

# Exit
tag @s[tag=isSneaking,scores={shiftTest=1},tag=!exitOmnioculars] add exitOmnioculars

effect clear @s[tag=exitOmnioculars] minecraft:slowness
tag @s[tag=exitOmnioculars,scores={selectedSlot=1}] add anim_enter

tag @s[tag=exitOmnioculars] remove preventPunching
execute as @s[tag=exitOmnioculars] at @s run playsound minecraft:custom.inventory.pickup.metal2 master @a
tag @s[tag=!isDrowning,tag=exitOmnioculars,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=exitOmnioculars,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=exitOmnioculars,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,scores={trackedQuestID=1..,questQueue=0}] add showTrackedQuest
tag @s[tag=exitOmnioculars] remove omnioculars

tag @s[tag=exitOmnioculars,tag=!omnioculars] remove exitOmnioculars