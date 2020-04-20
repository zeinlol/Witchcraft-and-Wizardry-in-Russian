execute as @s[tag=armorSuitCreature] at @s run function hp:creatures/armor_suit/armor_suit_death
execute as @s[tag=armorSuitDuck] at @s run function hp:creatures/armor_suit/armor_suit_duck_death

execute as @s[tag=blubberCreature] at @s run function hp:creatures/blubber_worm/blubber_worm_death

execute as @s[tag=deathEaterCreature] at @s run function hp:creatures/death_eater/death_eater_death

execute as @s[tag=largeSpiderCreature] at @s run function hp:creatures/large_spider/large_spider_death

execute as @s[tag=monsterBookCreature] at @s run function hp:creatures/monster_book/monster_book_death

execute as @s[tag=skeletonCreature,tag=!skeletonPart] at @s run function hp:creatures/skeleton/skeleton_death
execute as @s[tag=skeletonArm] at @s run function hp:creatures/skeleton/skeleton_arm_death
execute as @s[tag=skeletonFallenBody] at @s run function hp:creatures/skeleton/skeleton_fallen_body_death
execute as @s[tag=skeletonHead] at @s run function hp:creatures/skeleton/skeleton_head_death

execute as @s[tag=skeletonArcherCreature] at @s run function hp:creatures/skeleton_archer/skeleton_archer_death
# Remove slowness effect from stray arrows
# execute as @e[type=arrow,tag=!replacementArrow] at @s run function hp:creatures/skeleton_archer/summon_replacement_arrow

execute as @s[tag=skeletonSwordsmanCreature] at @s run function hp:creatures/skeleton_swordsman/skeleton_swordsman_death

execute as @s[tag=smallSpiderCreature] at @s run function hp:creatures/small_spider/small_spider_death

execute as @s[tag=toadCreature] at @s run function hp:creatures/toad/toad_death

execute as @s[tag=trollCreature] at @s run function hp:creatures/troll/troll_death

execute as @s[tag=poltergeistCreature] at @s run function hp:creatures/poltergeist/poltergeist_death

execute as @s[tag=darkSpiritCreature] at @s run function hp:creatures/dark_spirit/dark_spirit_death

execute as @s[tag=ratCreature] at @s run function hp:creatures/rat/rat_death

execute as @s[tag=murtlapCreature] at @s run function hp:creatures/murtlap/murtlap_death

execute as @s[tag=darkWizardCreature] at @s run function hp:creatures/dark_wizard/dark_wizard_death

execute as @s[tag=pixieCreature] at @s run function hp:creatures/pixie_gnome/pixie_death
