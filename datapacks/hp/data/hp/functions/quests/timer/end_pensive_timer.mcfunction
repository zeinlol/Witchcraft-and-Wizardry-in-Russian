# Lumos
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimer p1Quests = lumosPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=14}] if score lastLumosPensiveTimer p1Quests < fastestLumosPensiveTimer p1Quests run scoreboard players operation fastestLumosPensiveTimer p1Quests = lastLumosPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players set lumosPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimer p2Quests = lumosPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=14}] if score lastLumosPensiveTimer p2Quests < fastestLumosPensiveTimer p2Quests run scoreboard players operation fastestLumosPensiveTimer p2Quests = lastLumosPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players set lumosPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimer p3Quests = lumosPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=14}] if score lastLumosPensiveTimer p3Quests < fastestLumosPensiveTimer p3Quests run scoreboard players operation fastestLumosPensiveTimer p3Quests = lastLumosPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players set lumosPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimer p4Quests = lumosPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=14}] if score lastLumosPensiveTimer p4Quests < fastestLumosPensiveTimer p4Quests run scoreboard players operation fastestLumosPensiveTimer p4Quests = lastLumosPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players set lumosPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation @s tmp = lastLumosPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation @s tmp = lastLumosPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation @s tmp = lastLumosPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation @s tmp = lastLumosPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=14}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=14}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=14}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation lastLumosPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation @s tmp = fastestLumosPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation @s tmp = fastestLumosPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation @s tmp = fastestLumosPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation @s tmp = fastestLumosPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=14}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=14}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=14}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=14}] run scoreboard players operation fastestLumosPensiveTimerSeconds p4Quests = @s tmp2

# Stupefy
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimer p1Quests = stupefyPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=15}] if score lastStupefyPensiveTimer p1Quests < fastestStupefyPensiveTimer p1Quests run scoreboard players operation fastestStupefyPensiveTimer p1Quests = lastStupefyPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players set stupefyPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimer p2Quests = stupefyPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=15}] if score lastStupefyPensiveTimer p1Quests < fastestStupefyPensiveTimer p2Quests run scoreboard players operation fastestStupefyPensiveTimer p2Quests = lastStupefyPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players set stupefyPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimer p3Quests = stupefyPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=15}] if score lastStupefyPensiveTimer p1Quests < fastestStupefyPensiveTimer p3Quests run scoreboard players operation fastestStupefyPensiveTimer p3Quests = lastStupefyPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players set stupefyPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimer p4Quests = stupefyPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=15}] if score lastStupefyPensiveTimer p1Quests < fastestStupefyPensiveTimer p4Quests run scoreboard players operation fastestStupefyPensiveTimer p4Quests = lastStupefyPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players set stupefyPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation @s tmp = lastStupefyPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation @s tmp = lastStupefyPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation @s tmp = lastStupefyPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation @s tmp = lastStupefyPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=15}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=15}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=15}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation lastStupefyPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation @s tmp = fastestStupefyPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation @s tmp = fastestStupefyPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation @s tmp = fastestStupefyPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation @s tmp = fastestStupefyPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=15}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=15}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=15}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=15}] run scoreboard players operation fastestStupefyPensiveTimerSeconds p4Quests = @s tmp2


# Брахиам Эмендо
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimer p1Quests = brackiumEmendoPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=16}] if score lastBrackiumEmendoPensiveTimer p1Quests < fastestBrackiumEmendoPensiveTimer p1Quests run scoreboard players operation fastestBrackiumEmendoPensiveTimer p1Quests = lastBrackiumEmendoPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players set brackiumEmendoPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimer p2Quests = brackiumEmendoPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=16}] if score lastBrackiumEmendoPensiveTimer p2Quests < fastestBrackiumEmendoPensiveTimer p2Quests run scoreboard players operation fastestBrackiumEmendoPensiveTimer p2Quests = lastBrackiumEmendoPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players set brackiumEmendoPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimer p3Quests = brackiumEmendoPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=16}] if score lastBrackiumEmendoPensiveTimer p3Quests < fastestBrackiumEmendoPensiveTimer p3Quests run scoreboard players operation fastestBrackiumEmendoPensiveTimer p3Quests = lastBrackiumEmendoPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players set brackiumEmendoPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimer p4Quests = brackiumEmendoPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=16}] if score lastBrackiumEmendoPensiveTimer p4Quests < fastestBrackiumEmendoPensiveTimer p4Quests run scoreboard players operation fastestBrackiumEmendoPensiveTimer p4Quests = lastBrackiumEmendoPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players set brackiumEmendoPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation @s tmp = lastBrackiumEmendoPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation @s tmp = lastBrackiumEmendoPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation @s tmp = lastBrackiumEmendoPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation @s tmp = lastBrackiumEmendoPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=16}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=16}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=16}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation lastBrackiumEmendoPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation @s tmp = fastestBrackiumEmendoPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation @s tmp = fastestBrackiumEmendoPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation @s tmp = fastestBrackiumEmendoPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation @s tmp = fastestBrackiumEmendoPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=16}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=16}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=16}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=16}] run scoreboard players operation fastestBrackiumEmendoPensiveTimerSeconds p4Quests = @s tmp2

# Alohomora
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimer p1Quests = alohomoraPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=17}] if score lastAlohomoraPensiveTimer p1Quests < fastestAlohomoraPensiveTimer p1Quests run scoreboard players operation fastestAlohomoraPensiveTimer p1Quests = lastAlohomoraPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players set alohomoraPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimer p2Quests = alohomoraPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=17}] if score lastAlohomoraPensiveTimer p2Quests < fastestAlohomoraPensiveTimer p2Quests run scoreboard players operation fastestAlohomoraPensiveTimer p2Quests = lastAlohomoraPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players set alohomoraPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimer p3Quests = alohomoraPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=17}] if score lastAlohomoraPensiveTimer p3Quests < fastestAlohomoraPensiveTimer p3Quests run scoreboard players operation fastestAlohomoraPensiveTimer p3Quests = lastAlohomoraPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players set alohomoraPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimer p4Quests = alohomoraPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=17}] if score lastAlohomoraPensiveTimer p4Quests < fastestAlohomoraPensiveTimer p4Quests run scoreboard players operation fastestAlohomoraPensiveTimer p4Quests = lastAlohomoraPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players set alohomoraPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation @s tmp = lastAlohomoraPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation @s tmp = lastAlohomoraPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation @s tmp = lastAlohomoraPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation @s tmp = lastAlohomoraPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=17}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=17}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=17}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation lastAlohomoraPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation @s tmp = fastestAlohomoraPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation @s tmp = fastestAlohomoraPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation @s tmp = fastestAlohomoraPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation @s tmp = fastestAlohomoraPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=17}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=17}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=17}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=17}] run scoreboard players operation fastestAlohomoraPensiveTimerSeconds p4Quests = @s tmp2

# Wingardium leviosa
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimer p1Quests = wingardiumLeviosaPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=18}] if score lastWingardiumLeviosaPensiveTimer p1Quests < fastestWingardiumLeviosaPensiveTimer p1Quests run scoreboard players operation fastestWingardiumLeviosaPensiveTimer p1Quests = lastWingardiumLeviosaPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players set wingardiumLeviosaPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimer p2Quests = wingardiumLeviosaPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=18}] if score lastWingardiumLeviosaPensiveTimer p2Quests < fastestWingardiumLeviosaPensiveTimer p2Quests run scoreboard players operation fastestWingardiumLeviosaPensiveTimer p2Quests = lastWingardiumLeviosaPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players set wingardiumLeviosaPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimer p3Quests = wingardiumLeviosaPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=18}] if score lastWingardiumLeviosaPensiveTimer p3Quests < fastestWingardiumLeviosaPensiveTimer p3Quests run scoreboard players operation fastestWingardiumLeviosaPensiveTimer p3Quests = lastWingardiumLeviosaPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players set wingardiumLeviosaPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimer p4Quests = wingardiumLeviosaPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=18}] if score lastWingardiumLeviosaPensiveTimer p4Quests < fastestWingardiumLeviosaPensiveTimer p4Quests run scoreboard players operation fastestWingardiumLeviosaPensiveTimer p4Quests = lastWingardiumLeviosaPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players set wingardiumLeviosaPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation @s tmp = lastWingardiumLeviosaPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation @s tmp = lastWingardiumLeviosaPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation @s tmp = lastWingardiumLeviosaPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation @s tmp = lastWingardiumLeviosaPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=18}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=18}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=18}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation lastWingardiumLeviosaPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation @s tmp = fastestWingardiumLeviosaPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation @s tmp = fastestWingardiumLeviosaPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation @s tmp = fastestWingardiumLeviosaPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation @s tmp = fastestWingardiumLeviosaPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=18}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=18}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=18}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerM p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerS p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerM p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerS p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerM p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerS p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerM p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=18}] run scoreboard players operation fastestWingardiumLeviosaPensiveTimerS p4Quests = @s tmp2

# Bombarda Maxima
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimer p1Quests = bombardaMaximaPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=19}] if score lastBombardaMaximaPensiveTimer p1Quests < fastestBombardaMaximaPensiveTimer p1Quests run scoreboard players operation fastestBombardaMaximaPensiveTimer p1Quests = lastBombardaMaximaPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players set bombardaMaximaPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimer p2Quests = bombardaMaximaPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=19}] if score lastBombardaMaximaPensiveTimer p2Quests < fastestBombardaMaximaPensiveTimer p2Quests run scoreboard players operation fastestBombardaMaximaPensiveTimer p2Quests = lastBombardaMaximaPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players set bombardaMaximaPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimer p3Quests = bombardaMaximaPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=19}] if score lastBombardaMaximaPensiveTimer p3Quests < fastestBombardaMaximaPensiveTimer p3Quests run scoreboard players operation fastestBombardaMaximaPensiveTimer p3Quests = lastBombardaMaximaPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players set bombardaMaximaPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimer p4Quests = bombardaMaximaPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=19}] if score lastBombardaMaximaPensiveTimer p4Quests < fastestBombardaMaximaPensiveTimer p4Quests run scoreboard players operation fastestBombardaMaximaPensiveTimer p4Quests = lastBombardaMaximaPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players set bombardaMaximaPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation @s tmp = lastBombardaMaximaPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation @s tmp = lastBombardaMaximaPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation @s tmp = lastBombardaMaximaPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation @s tmp = lastBombardaMaximaPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=19}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=19}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=19}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation lastBombardaMaximaPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation @s tmp = fastestBombardaMaximaPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation @s tmp = fastestBombardaMaximaPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation @s tmp = fastestBombardaMaximaPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation @s tmp = fastestBombardaMaximaPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=19}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=19}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=19}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=19}] run scoreboard players operation fastestBombardaMaximaPensiveTimerSeconds p4Quests = @s tmp2

# Vera Verto
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimer p1Quests = veraVertoPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=20}] if score lastVeraVertoPensiveTimer p1Quests < fastestVeraVertoPensiveTimer p1Quests run scoreboard players operation fastestVeraVertoPensiveTimer p1Quests = lastVeraVertoPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players set veraVertoPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimer p2Quests = veraVertoPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=20}] if score lastVeraVertoPensiveTimer p2Quests < fastestVeraVertoPensiveTimer p2Quests run scoreboard players operation fastestVeraVertoPensiveTimer p2Quests = lastVeraVertoPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players set veraVertoPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimer p3Quests = veraVertoPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=20}] if score lastVeraVertoPensiveTimer p3Quests < fastestVeraVertoPensiveTimer p3Quests run scoreboard players operation fastestVeraVertoPensiveTimer p3Quests = lastVeraVertoPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players set veraVertoPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimer p4Quests = veraVertoPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=20}] if score lastVeraVertoPensiveTimer p4Quests < fastestVeraVertoPensiveTimer p4Quests run scoreboard players operation fastestVeraVertoPensiveTimer p4Quests = lastVeraVertoPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players set veraVertoPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation @s tmp = lastVeraVertoPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation @s tmp = lastVeraVertoPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation @s tmp = lastVeraVertoPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation @s tmp = lastVeraVertoPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=20}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=20}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=20}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation lastVeraVertoPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation @s tmp = fastestVeraVertoPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation @s tmp = fastestVeraVertoPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation @s tmp = fastestVeraVertoPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation @s tmp = fastestVeraVertoPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=20}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=20}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=20}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=20}] run scoreboard players operation fastestVeraVertoPensiveTimerSeconds p4Quests = @s tmp2

# Expecto Patronum
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimer p1Quests = expectoPatronumPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=21}] if score lastExpectoPatronumPensiveTimer p1Quests < fastestExpectoPatronumPensiveTimer p1Quests run scoreboard players operation fastestExpectoPatronumPensiveTimer p1Quests = lastExpectoPatronumPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players set expectoPatronumPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimer p2Quests = expectoPatronumPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=21}] if score lastExpectoPatronumPensiveTimer p2Quests < fastestExpectoPatronumPensiveTimer p2Quests run scoreboard players operation fastestExpectoPatronumPensiveTimer p2Quests = lastExpectoPatronumPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players set expectoPatronumPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimer p3Quests = expectoPatronumPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=21}] if score lastExpectoPatronumPensiveTimer p3Quests < fastestExpectoPatronumPensiveTimer p3Quests run scoreboard players operation fastestExpectoPatronumPensiveTimer p3Quests = lastExpectoPatronumPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players set expectoPatronumPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimer p4Quests = expectoPatronumPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=21}] if score lastExpectoPatronumPensiveTimer p4Quests < fastestExpectoPatronumPensiveTimer p4Quests run scoreboard players operation fastestExpectoPatronumPensiveTimer p4Quests = lastExpectoPatronumPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players set expectoPatronumPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation @s tmp = lastExpectoPatronumPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation @s tmp = lastExpectoPatronumPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation @s tmp = lastExpectoPatronumPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation @s tmp = lastExpectoPatronumPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=21}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=21}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=21}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation lastExpectoPatronumPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation @s tmp = fastestExpectoPatronumPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation @s tmp = fastestExpectoPatronumPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation @s tmp = fastestExpectoPatronumPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation @s tmp = fastestExpectoPatronumPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=21}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=21}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=21}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerM p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerS p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerM p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerS p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerM p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerS p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerM p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=21}] run scoreboard players operation fastestExpectoPatronumPensiveTimerS p4Quests = @s tmp2

# Apparition
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimer p1Quests = apparitionPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=22}] if score lastApparitionPensiveTimer p1Quests < fastestApparitionPensiveTimer p1Quests run scoreboard players operation fastestApparitionPensiveTimer p1Quests = lastApparitionPensiveTimer p1Quests
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players set apparitionPensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimer p2Quests = apparitionPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=22}] if score lastApparitionPensiveTimer p2Quests < fastestApparitionPensiveTimer p1Quests run scoreboard players operation fastestApparitionPensiveTimer p2Quests = lastApparitionPensiveTimer p2Quests
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players set apparitionPensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimer p3Quests = apparitionPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=22}] if score lastApparitionPensiveTimer p3Quests < fastestApparitionPensiveTimer p1Quests run scoreboard players operation fastestApparitionPensiveTimer p3Quests = lastApparitionPensiveTimer p3Quests
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players set apparitionPensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimer p4Quests = apparitionPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=22}] if score lastApparitionPensiveTimer p4Quests < fastestApparitionPensiveTimer p1Quests run scoreboard players operation fastestApparitionPensiveTimer p4Quests = lastApparitionPensiveTimer p4Quests
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players set apparitionPensiveTimerIsGoing p4Quests 0

execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation @s tmp = lastApparitionPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation @s tmp = lastApparitionPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation @s tmp = lastApparitionPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation @s tmp = lastApparitionPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=22}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=22}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=22}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation lastApparitionPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation @s tmp = fastestApparitionPensiveTimer p1Quests
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation @s tmp = fastestApparitionPensiveTimer p2Quests
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation @s tmp = fastestApparitionPensiveTimer p3Quests
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation @s tmp = fastestApparitionPensiveTimer p4Quests
execute as @s[scores={trackedQuestID=22}] run scoreboard players set tmp2 0
execute as @s[scores={trackedQuestID=22}] run scoreboard players set tmp3 0
execute as @s[scores={trackedQuestID=22}] run function hp:quests/timer/convert_to_minutes_and_seconds
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerMinutes p1Quests = @s tmp3
execute as @s[scores={playerID=1,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerSeconds p1Quests = @s tmp2
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerMinutes p2Quests = @s tmp3
execute as @s[scores={playerID=2,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerSeconds p2Quests = @s tmp2
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerMinutes p3Quests = @s tmp3
execute as @s[scores={playerID=3,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerSeconds p3Quests = @s tmp2
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerMinutes p4Quests = @s tmp3
execute as @s[scores={playerID=4,trackedQuestID=22}] run scoreboard players operation fastestApparitionPensiveTimerSeconds p4Quests = @s tmp2

execute as @s[scores={playerID=1}] run scoreboard players set pensiveTimerIsGoing p1Quests 0
execute as @s[scores={playerID=2}] run scoreboard players set pensiveTimerIsGoing p2Quests 0
execute as @s[scores={playerID=3}] run scoreboard players set pensiveTimerIsGoing p3Quests 0
execute as @s[scores={playerID=4}] run scoreboard players set pensiveTimerIsGoing p4Quests 0

# Write result on signs in trophy room
function hp:pensive/write_result_trophy_room