# I originally did this per nest, but it ended up not really being useful and complicating creatures that were not tied to a nest

execute as @s[tag=dementorEngine] run function hp:creatures/dementor/dementor

execute as @s[tag=armorSuitCreature] at @s run function hp:creatures/armor_suit/base_armor_suit
execute as @s[tag=stunnedArmorSuit] at @s run function hp:creatures/armor_suit/stunned_armor_suit
execute as @s[tag=armorSuitDuck] at @s run function hp:creatures/armor_suit/armor_suit_duck

execute as @s[tag=flubberwormCreature] at @s run function hp:creatures/flubberworm/base_flubberworm

execute as @s[tag=deathEaterCreature] at @s run function hp:creatures/death_eater/base_death_eater

execute as @s[tag=largeSpiderCreature] at @s run function hp:creatures/large_spider/base_large_spider
execute as @s[tag=spiderSpit] at @s run function hp:creatures/large_spider/spider_spit

execute as @s[tag=monsterBookCreature] at @s run function hp:creatures/monster_book/base_monster_book

execute as @s[tag=skeletonCreature,tag=!skeletonPart] at @s run function hp:creatures/skeleton/base_skeleton
execute as @s[tag=skeletonArm] at @s run function hp:creatures/skeleton/skeleton_arm
execute as @s[tag=skeletonFallenBody] at @s run function hp:creatures/skeleton/skeleton_fallen_body
execute as @s[tag=skeletonHead] at @s run function hp:creatures/skeleton/skeleton_head

execute as @s[tag=skeletonArcherCreature] at @s run function hp:creatures/skeleton_archer/base_skeleton_archer

execute as @s[tag=skeletonSwordsmanCreature] at @s run function hp:creatures/skeleton_swordsman/base_skeleton_swordsman

execute as @s[tag=smallSpiderCreature] at @s run function hp:creatures/small_spider/base_small_spider

execute as @s[tag=toadCreature] at @s run function hp:creatures/toad/base_toad

execute as @s[tag=trollCreature] at @s run function hp:creatures/troll/base_troll

execute as @s[tag=poltergeistCreature] at @s run function hp:creatures/poltergeist/base_poltergeist

execute as @s[tag=darkSpiritCreature] at @s run function hp:creatures/dark_spirit/base_dark_spirit

execute as @s[tag=ratCreature] at @s run function hp:creatures/rat/base_rat

execute as @s[tag=murtlapCreature] at @s run function hp:creatures/murtlap/base_murtlap

execute as @s[tag=darkWizardCreature] at @s run function hp:creatures/dark_wizard/base_dark_wizard

execute as @s[tag=pixieCreature] at @s run function hp:creatures/pixie_gnome/base_pixie

execute as @s[tag=grindylowCreature] at @s run function hp:creatures/grindylow/base_grindylow

# In case the creature loses it's scoreboard values which it might do on servers do to the bug that I often complain about in these comments I just kill it to prevent potential issues
execute as @s[team=] run function hp:creatures/restore_creature

execute as @s[tag=!dementor] unless score @s sessionID = global sessionID run function hp:creatures/remove_creature
execute as @s[tag=!dementor] if score @s questID matches 1.. run function hp:creatures/check_creature_quest_session