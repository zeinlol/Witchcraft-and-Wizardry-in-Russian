scoreboard players add @s showTips 1

# Explore tip
execute as @s[scores={showTips=1}] at @s run playsound minecraft:custom.ui.tips.tip master @s ~ ~ ~ 1 1 1
execute as @s[scores={showTips=1}] run advancement grant @s until hp:ui/ui28_void
execute as @s[scores={showTips=1}] run advancement revoke @s only hp:quests/_empty1
execute as @s[scores={showTips=1}] run advancement revoke @s only hp:quests/_empty2
execute as @s[scores={showTips=1}] run advancement grant @s only hp:quests/_empty1
execute as @s[scores={showTips=1}] run advancement grant @s only hp:quests/_empty2

execute as @s[scores={showTips=2}] run advancement revoke @s only hp:ui/exploration_tip
execute as @s[scores={showTips=2}] run advancement grant @s only hp:ui/exploration_tip

execute as @s[scores={showTips=3}] run advancement revoke @s only hp:quests/_empty3
execute as @s[scores={showTips=3}] run advancement revoke @s only hp:quests/_empty4
execute as @s[scores={showTips=3}] run advancement grant @s only hp:quests/_empty3
execute as @s[scores={showTips=3}] run advancement grant @s only hp:quests/_empty4

# More tips
execute as @s[scores={showTips=4}] run advancement revoke @s only hp:quests/_empty1
execute as @s[scores={showTips=4}] run advancement revoke @s only hp:quests/_empty2
execute as @s[scores={showTips=4}] run advancement grant @s only hp:quests/_empty1
execute as @s[scores={showTips=4}] run advancement grant @s only hp:quests/_empty2

execute as @s[scores={showTips=5}] run advancement revoke @s only hp:ui/more_tips
execute as @s[scores={showTips=5}] run advancement grant @s only hp:ui/more_tips

execute as @s[scores={showTips=6}] run advancement revoke @s only hp:quests/_empty3
execute as @s[scores={showTips=6}] run advancement revoke @s only hp:quests/_empty4
execute as @s[scores={showTips=6}] run advancement grant @s only hp:quests/_empty3
execute as @s[scores={showTips=6}] run advancement grant @s only hp:quests/_empty4

# Done
execute as @s[scores={showTips=10}] run tag @s remove showingTips