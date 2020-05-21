scoreboard players enable @s completeQuest
execute as @s[tag=inNormalState] if score @s completeQuest matches 1.. unless score @s questQueue matches 1.. if score @s trackedQuestID matches 1.. run tag @s add completeTrackedQuest
execute if score @s completeQuest matches 1.. run scoreboard players set @s completeQuest 0

scoreboard players enable @s rPlayer
execute if score @s rPlayer matches 1.. if score @s playerID matches 1 run function hp:setup/add_as_player1
execute if score @s rPlayer matches 1.. if score @s playerID matches 2 run function hp:setup/add_as_player2
execute if score @s rPlayer matches 1.. if score @s playerID matches 3 run function hp:setup/add_as_player3
execute if score @s rPlayer matches 1.. if score @s playerID matches 4 run function hp:setup/add_as_player4
execute if score @s rPlayer matches 1.. run tp @s 2323.87 71.06 -943.64 -386.09 6.19
execute if score @s rPlayer matches 1.. run scoreboard players set @s rPlayer 0

scoreboard players enable @s rDiagonAlley
execute if score @s rDiagonAlley matches 1.. run function hp:cheats/reset_player_after_diagon_alley
execute if score @s rDiagonAlley matches 1.. run scoreboard players set @s rDiagonAlley 0

scoreboard players enable @s rSorting
execute if score @s rSorting matches 1.. run function hp:cheats/reset_player_after_sorting
execute if score @s rSorting matches 1.. run scoreboard players set @s rSorting 0

scoreboard players enable @s rLumos
execute if score @s rLumos matches 1.. run function hp:cheats/reset_player_after_lumos
execute if score @s rLumos matches 1.. run scoreboard players set @s rLumos 0

scoreboard players enable @s rStupefy
execute if score @s rStupefy matches 1.. run function hp:cheats/reset_player_after_stupefy
execute if score @s rStupefy matches 1.. run scoreboard players set @s rStupefy 0

scoreboard players enable @s rPotions
execute if score @s rPotions matches 1.. run function hp:cheats/reset_player_after_potions
execute if score @s rPotions matches 1.. run scoreboard players set @s rPotions 0

scoreboard players enable @s rBrackiumEmendo
execute if score @s rBrackiumEmendo matches 1.. run function hp:cheats/reset_player_after_brackium_emendo
execute if score @s rBrackiumEmendo matches 1.. run scoreboard players set @s rBrackiumEmendo 0

scoreboard players enable @s rHogsmeade
execute if score @s rHogsmeade matches 1.. run function hp:cheats/reset_player_after_hogsmeade
execute if score @s rHogsmeade matches 1.. run scoreboard players set @s rHogsmeade 0

scoreboard players enable @s rAlohomora
execute if score @s rAlohomora matches 1.. run function hp:cheats/reset_player_after_alohomora
execute if score @s rAlohomora matches 1.. run scoreboard players set @s rAlohomora 0

scoreboard players enable @s rFlyingLesson
execute if score @s rFlyingLesson matches 1.. run function hp:cheats/reset_player_after_flying_lesson
execute if score @s rFlyingLesson matches 1.. run scoreboard players set @s rFlyingLesson 0

scoreboard players enable @s rWingardium
execute if score @s rWingardium matches 1.. run function hp:cheats/reset_player_after_wingardium_leviosa
execute if score @s rWingardium matches 1.. run scoreboard players set @s rWingardium 0

scoreboard players enable @s rBombarda
execute if score @s rBombarda matches 1.. run function hp:cheats/reset_player_after_bombarda_maxima
execute if score @s rBombarda matches 1.. run scoreboard players set @s rBombarda 0

scoreboard players enable @s rHerbology
execute if score @s rHerbology matches 1.. run function hp:cheats/reset_player_after_herbology
execute if score @s rHerbology matches 1.. run scoreboard players set @s rHerbology 0

scoreboard players enable @s rVeraVerto
execute if score @s rVeraVerto matches 1.. run function hp:cheats/reset_player_after_vera_verto
execute if score @s rVeraVerto matches 1.. run scoreboard players set @s rVeraVerto 0

scoreboard players enable @s rPatronum
execute if score @s rPatronum matches 1.. run function hp:cheats/reset_player_after_expecto_patronum
execute if score @s rPatronum matches 1.. run scoreboard players set @s rPatronum 0

scoreboard players enable @s rApparition
execute if score @s rApparition matches 1.. run function hp:cheats/reset_player_after_apparition
execute if score @s rApparition matches 1.. run scoreboard players set @s rApparition 0

scoreboard players enable @s rAzkaban
execute if score @s rAzkaban matches 1.. run function hp:cheats/reset_player_after_azkaban
execute if score @s rAzkaban matches 1.. run scoreboard players set @s rAzkaban 0

scoreboard players enable @s gryffindor
execute if score @s gryffindor matches 1.. run scoreboard players set @s house 1
execute if score @s gryffindor matches 1.. run scoreboard players set @s gryffindor 0

scoreboard players enable @s ravenclaw
execute if score @s ravenclaw matches 1.. run scoreboard players set @s house 2
execute if score @s ravenclaw matches 1.. run scoreboard players set @s ravenclaw 0

scoreboard players enable @s hufflepuff
execute if score @s hufflepuff matches 1.. run scoreboard players set @s house 3
execute if score @s hufflepuff matches 1.. run scoreboard players set @s hufflepuff 0

scoreboard players enable @s slytherin
execute if score @s slytherin matches 1.. run scoreboard players set @s house 4
execute if score @s slytherin matches 1.. run scoreboard players set @s slytherin 0

scoreboard players enable @s resetGame
execute if score @s resetGame matches 1.. run function hp:setup/reset_game
execute if score @s resetGame matches 1.. run scoreboard players set @s resetGame 0

scoreboard players enable @s exploreMode
execute if score @s exploreMode matches 1.. run function hp:settings/spectate_from_settings
execute if score @s exploreMode matches 1.. run scoreboard players set @s exploreMode 0

scoreboard players enable @s playMode
execute if score @s playMode matches 1.. run function hp:misc/return_to_gameplay
execute if score @s playMode matches 1.. run scoreboard players set @s playMode 0