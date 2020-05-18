# Enter Exit Anim
scoreboard players remove @s[tag=invisCape,tag=!exitInvisCape,scores={invisCapeAnim=-29..}] invisCapeAnim 1
scoreboard players add @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=..9}] invisCapeAnim 1

effect give @s[tag=invisCape,scores={invisCapeAnim=..5}] minecraft:slowness 100 2 true
effect give @s[tag=invisCape,scores={invisCapeAnim=..5},tag=!usingInvisibilityPotion] minecraft:invisibility 100 1 true
tag @s[tag=invisCape,scores={invisCapeAnim=..5},tag=usingInvisibilityPotion] add usedInvisibilityPotion	
team join Creature @s[tag=invisCape,scores={invisCapeAnim=..-29}]
tag @s[tag=invisCape,scores={invisCapeAnim=..5}] add playerIsInvisible
tag @s[tag=invisCape] add preventPunching

effect clear @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=5}] minecraft:slowness
effect clear @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=5}] minecraft:invisibility
tag @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=5}] remove playerIsInvisible


# Exit
scoreboard players set @s[tag=isSneaking,scores={shiftTest=1},tag=invisCape,tag=!exitInvisCape,tag=!usingInvisibilityPotion] invisCapeAnim 1
tag @s[tag=isSneaking,scores={shiftTest=1},tag=invisCape,tag=!exitInvisCape,tag=!usingInvisibilityPotion] add exitInvisCape
execute as @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=1},tag=!usingInvisibilityPotion] at @s run playsound minecraft:custom.inventory.pickup.cloth master @a

tag @s[tag=!isDrowning,tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] add silentQuestAnimation
tag @s[tag=!isDrowning,tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] remove showingTrackedQuest
tag @s[tag=!isDrowning,tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] add showTrackedQuest
tag @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10,selectedSlot=1}] add anim_enter
tag @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10}] remove preventPunching
tag @s[tag=invisCape,tag=exitInvisCape,scores={invisCapeAnim=10}] remove invisCape
team join all @s[tag=exitInvisCape,scores={invisCapeAnim=10}]
tag @s[tag=exitInvisCape,scores={invisCapeAnim=10}] remove usedInvisibilityPotion
tag @s[tag=exitInvisCape,scores={invisCapeAnim=10}] remove exitInvisCape