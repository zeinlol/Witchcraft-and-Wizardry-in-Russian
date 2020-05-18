# This function raytraces back to the player to check if anything is blocking the hover. It's not very precise, but it works well enough 
scoreboard players set hoverRC tmp 11
execute at @s[tag=!npc,tag=!largeChest,tag=!trevor] anchored feet facing entity @p[tag=activePlayer] eyes run function hp:interaction/quest_hover_block_check
execute at @s[tag=npc] anchored feet positioned ~ ~1.5 ~ facing entity @p[tag=activePlayer] eyes run function hp:interaction/quest_hover_block_check
execute at @s[tag=largeChest] anchored feet positioned ~ ~1 ~ facing entity @p[tag=activePlayer] eyes run function hp:interaction/quest_hover_block_check
execute at @s[tag=trevor] anchored feet positioned ~ ~1 ~ facing entity @p[tag=activePlayer] eyes run function hp:interaction/quest_hover_block_check