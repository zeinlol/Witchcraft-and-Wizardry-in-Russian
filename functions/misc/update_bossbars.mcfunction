bossbar set minecraft:player1health players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2health players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3health players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4health players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1info players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2info players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3info players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4info players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1enemy players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2enemy players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3enemy players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4enemy players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1empty players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2empty players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3empty players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4empty players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1empty2 players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2empty2 players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3empty2 players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4empty2 players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1empty_fog players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2empty_fog players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3empty_fog players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4empty_fog players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1quest players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2quest players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3quest players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4quest players @p[scores={playerID=4},tag=play]
bossbar set minecraft:player1discover players @p[scores={playerID=1},tag=play]
bossbar set minecraft:player2discover players @p[scores={playerID=2},tag=play]
bossbar set minecraft:player3discover players @p[scores={playerID=3},tag=play]
bossbar set minecraft:player4discover players @p[scores={playerID=4},tag=play]

# Everything needs to be disabled to fix the sorting. Otherwise they'll be stacked in the wrong order
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1health visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2health visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3health visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4health visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1enemy visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2enemy visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3enemy visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4enemy visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1empty visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2empty visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3empty visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4empty visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1empty2 visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2empty2 visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3empty2 visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4empty2 visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1empty_fog visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2empty_fog visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3empty_fog visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4empty_fog visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1quest visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2quest visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3quest visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4quest visible false
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover visible false
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover visible false
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover visible false
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover visible false


execute as @s[tag=!showBossbarHeader,scores={playerID=1}] run bossbar set minecraft:player1health visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=2}] run bossbar set minecraft:player2health visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=3}] run bossbar set minecraft:player3health visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=4}] run bossbar set minecraft:player4health visible true
execute as @s[tag=showBossbarHeader,scores={playerID=1}] run bossbar set minecraft:player1info visible true
execute as @s[tag=showBossbarHeader,scores={playerID=2}] run bossbar set minecraft:player2info visible true
execute as @s[tag=showBossbarHeader,scores={playerID=3}] run bossbar set minecraft:player3info visible true
execute as @s[tag=showBossbarHeader,scores={playerID=4}] run bossbar set minecraft:player4info visible true
execute as @s[tag=showBossbarHeader,scores={playerID=1}] run bossbar set minecraft:player1empty2 visible true
execute as @s[tag=showBossbarHeader,scores={playerID=2}] run bossbar set minecraft:player2empty2 visible true
execute as @s[tag=showBossbarHeader,scores={playerID=3}] run bossbar set minecraft:player3empty2 visible true
execute as @s[tag=showBossbarHeader,scores={playerID=4}] run bossbar set minecraft:player4empty2 visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=1}] run bossbar set minecraft:player1enemy visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=2}] run bossbar set minecraft:player2enemy visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=3}] run bossbar set minecraft:player3enemy visible true
execute as @s[tag=!showBossbarHeader,scores={playerID=4}] run bossbar set minecraft:player4enemy visible true
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=1}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set player1enemy name ""
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=2}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set player2enemy name ""
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=3}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set player3enemy name ""
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=4}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set player4enemy name ""
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=1}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player1enemy color pink
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=2}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player2enemy color pink
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=3}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player3enemy color pink
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=4}] unless entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player4enemy color pink
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=1}] if entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player1enemy color green
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=2}] if entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player2enemy color green
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=3}] if entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player3enemy color green
execute as @s[tag=!showBossbarHeader,tag=!isDrowning,scores={playerID=4}] if entity @e[tag=bossBarCreatureFocus] run bossbar set minecraft:player4enemy color green
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=1}] run bossbar set player1enemy name ""
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=2}] run bossbar set player2enemy name ""
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=3}] run bossbar set player3enemy name ""
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=4}] run bossbar set player4enemy name ""
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=1}] run bossbar set minecraft:player1enemy color blue
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=2}] run bossbar set minecraft:player2enemy color blue
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=3}] run bossbar set minecraft:player3enemy color blue
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=4}] run bossbar set minecraft:player4enemy color blue
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=1}] run bossbar set minecraft:player1enemy max 900
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=2}] run bossbar set minecraft:player2enemy max 900
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=3}] run bossbar set minecraft:player3enemy max 900
execute as @s[tag=!showBossbarHeader,tag=isDrowning,scores={playerID=4}] run bossbar set minecraft:player4enemy max 900

execute as @s[scores={playerID=1},tag=!fog,tag=!showQuestText] run bossbar set minecraft:player1empty visible true
execute as @s[scores={playerID=2},tag=!fog,tag=!showQuestText] run bossbar set minecraft:player2empty visible true
execute as @s[scores={playerID=3},tag=!fog,tag=!showQuestText] run bossbar set minecraft:player3empty visible true
execute as @s[scores={playerID=4},tag=!fog,tag=!showQuestText] run bossbar set minecraft:player4empty visible true
execute as @s[scores={playerID=1},tag=fog] run bossbar set minecraft:player1empty_fog visible true
execute as @s[scores={playerID=2},tag=fog] run bossbar set minecraft:player2empty_fog visible true
execute as @s[scores={playerID=3},tag=fog] run bossbar set minecraft:player3empty_fog visible true
execute as @s[scores={playerID=4},tag=fog] run bossbar set minecraft:player4empty_fog visible true
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover visible true
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover visible true
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover visible true
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover visible true
execute as @s[scores={playerID=1},tag=showQuestText] run bossbar set minecraft:player1quest visible true
execute as @s[scores={playerID=2},tag=showQuestText] run bossbar set minecraft:player2quest visible true
execute as @s[scores={playerID=3},tag=showQuestText] run bossbar set minecraft:player3quest visible true
execute as @s[scores={playerID=4},tag=showQuestText] run bossbar set minecraft:player4quest visible true

# Clear XP in case the player has somehow obtained some
experience set @s 0 levels
experience set @s 0 points