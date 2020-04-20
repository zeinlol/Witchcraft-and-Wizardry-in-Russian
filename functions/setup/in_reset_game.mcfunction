execute if score reset resetTimer matches 23 run function hp:area_specific/london/add_westminster_gate
execute if score reset resetTimer matches 22 run function hp:area_specific/hogwarts/puzzles/reset_hogwarts_puzzles_1
execute if score reset resetTimer matches 21 run function hp:area_specific/hogwarts/puzzles/reset_hogwarts_puzzles_2
execute if score reset resetTimer matches 20 run function hp:area_specific/hogwarts/puzzles/reset_hogwarts_puzzles_3
execute if score reset resetTimer matches 19 run function hp:area_specific/hogwarts/puzzles/reset_hogwarts_puzzles_4
execute if score reset resetTimer matches 18 run function hp:area_specific/hogwarts/puzzles/reset_hogwarts_puzzles_5
execute if score reset resetTimer matches 17 run function hp:quests/quests/dungeon_delving/reset_dungeon_delving
execute if score reset resetTimer matches 16 run function hp:quests/quests/challenge_chambers/reset_challenge_chambers
execute if score reset resetTimer matches 15 run function hp:quests/quests/chamber_of_secrets/reset_chamber_of_secrets
execute if score reset resetTimer matches 14 run function hp:quests/quests/underground_library/reset_underground_library
execute if score reset resetTimer matches 13 run function hp:quests/quests/lumos/reset_lumos_spell_challenge
execute if score reset resetTimer matches 12 run function hp:quests/quests/stupefy/reset_stupefy_spell_challenge
execute if score reset resetTimer matches 11 run function hp:quests/quests/brackium_emendo/reset_brackium_spell_challenge
execute if score reset resetTimer matches 10 run function hp:quests/quests/alohomora/reset_alohomora_spell_challenge
execute if score reset resetTimer matches 9 run function hp:quests/quests/wingardium_leviosa/reset_wingardium_spell_challenge
execute if score reset resetTimer matches 8 run function hp:quests/quests/wingardium_leviosa/reset_wingardium_spell_challenge
execute if score reset resetTimer matches 7 run function hp:quests/quests/bombarda_maxima/reset_bombarda_maxima_spell_challenge
execute if score reset resetTimer matches 6 run function hp:quests/quests/vera_verto/reset_vera_verto_spell_challenge
execute if score reset resetTimer matches 5 run function hp:quests/quests/expecto_patronum/reset_expecto_patronum_spell_challenge
execute if score reset resetTimer matches 4 run function hp:quests/quests/expecto_patronum/setup_expecto_patronum_lesson
execute if score reset resetTimer matches 4 run function hp:quests/quests/expecto_patronum/clear_expecto_patronum_lesson

# Herbology
execute if score reset resetTimer matches 3 run function hp:quests/quests/herbology/remove_herbology_stars
execute if score reset resetTimer matches 2 run function hp:quests/quests/herbology/clear_herbology_lesson

# Flying
execute if score reset resetTimer matches 1 run function hp:quests/quests/flying_lesson/setup_flying_lesson
execute if score reset resetTimer matches 1 run function hp:quests/quests/flying_lesson/clear_flying_lesson

scoreboard players remove reset resetTimer 1