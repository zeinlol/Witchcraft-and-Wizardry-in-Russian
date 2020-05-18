execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

# Swap the weasley twins
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] as @e[tag=sittingWeasleyTwin] at @s run tp @s ~ 27.2 ~
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] as @e[tag=standingWeasleyTwin] at @s run tp @s ~ 31 ~
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent1,limit=1] 4980.5 31 1019.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent2,limit=1] 4981.5 31 1020.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent3,limit=1] 4981.5 31 1018.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent4,limit=1] 4982.5 31 1019.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent5,limit=1] 4982.5 31 1017.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent6,limit=1] 4983.5 31 1018.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent7,limit=1] 4983.5 31 1016.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent8,limit=1] 4984.5 31 1017.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent9,limit=1] 4984.5 31 1015.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingStudent10,limit=1] 4985.5 31 1016.5
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=sortingCeremonyWalkingMcGonagallFpEngine,limit=1] 4979.5 31 1021.5 45 0
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] as @e[tag=standingMcgonagall,limit=1] at @s run tp @s ~ 33 ~

tp @s[scores={cutSceneTimer=22..189}] 4942.22 33.15 1055.55 -13.89 3.83


# ¤Dumbledore:¤ Let the feast begin!
execute as @s[scores={cutSceneTimer=30},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1 1 0
execute as @s[scores={cutSceneTimer=30..175}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"    "}]
execute as @s[scores={cutSceneTimer=30},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=37},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=41},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=48},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=52},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=59},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=63},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] as @e[tag=sortingCeremonyWalkingDumbledore,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=176}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=170}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=210}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=190}] 4977.54 51.34 1023.45 45 34.47
tp @s[scores={cutSceneTimer=191}] 4977.54 51.34 1023.45 45 34.65
tp @s[scores={cutSceneTimer=192}] 4977.54 51.34 1023.45 45 34.83
tp @s[scores={cutSceneTimer=193}] 4977.54 51.34 1023.45 45 35.01
tp @s[scores={cutSceneTimer=194}] 4977.54 51.34 1023.45 45 35.19
tp @s[scores={cutSceneTimer=195}] 4977.54 51.34 1023.45 45 35.37
tp @s[scores={cutSceneTimer=196}] 4977.54 51.34 1023.45 45 35.55
tp @s[scores={cutSceneTimer=197}] 4977.54 51.34 1023.45 45 35.73
tp @s[scores={cutSceneTimer=198}] 4977.54 51.34 1023.45 45 35.91
tp @s[scores={cutSceneTimer=199}] 4977.54 51.34 1023.45 45 36.09
tp @s[scores={cutSceneTimer=200}] 4977.54 51.34 1023.45 45 36.27
tp @s[scores={cutSceneTimer=201}] 4977.54 51.34 1023.45 45 36.45
tp @s[scores={cutSceneTimer=202}] 4977.54 51.34 1023.45 45 36.63
tp @s[scores={cutSceneTimer=203}] 4977.54 51.34 1023.45 45 36.81001
tp @s[scores={cutSceneTimer=204}] 4977.54 51.34 1023.45 45 36.99001
tp @s[scores={cutSceneTimer=205}] 4977.54 51.34 1023.45 45 37.17001
tp @s[scores={cutSceneTimer=206}] 4977.54 51.34 1023.45 45 37.35001
tp @s[scores={cutSceneTimer=207}] 4977.54 51.34 1023.45 45 37.53001
tp @s[scores={cutSceneTimer=208}] 4977.54 51.34 1023.45 45 37.71001
tp @s[scores={cutSceneTimer=209}] 4977.54 51.34 1023.45 45 37.89001
tp @s[scores={cutSceneTimer=210}] 4977.54 51.34 1023.45 45 38.07001
tp @s[scores={cutSceneTimer=211}] 4977.54 51.34 1023.45 45 38.25001
tp @s[scores={cutSceneTimer=212}] 4977.54 51.34 1023.45 45 38.43001
tp @s[scores={cutSceneTimer=213}] 4977.54 51.34 1023.45 45 38.61001
tp @s[scores={cutSceneTimer=214}] 4977.54 51.34 1023.45 45 38.79001
tp @s[scores={cutSceneTimer=215}] 4977.54 51.34 1023.45 45 38.97001
tp @s[scores={cutSceneTimer=216}] 4977.54 51.34 1023.45 45 39.15001
tp @s[scores={cutSceneTimer=217}] 4977.54 51.34 1023.45 45 39.33001
tp @s[scores={cutSceneTimer=218}] 4977.54 51.34 1023.45 45 39.51001
tp @s[scores={cutSceneTimer=219}] 4977.54 51.34 1023.45 45 39.69001
tp @s[scores={cutSceneTimer=220}] 4977.54 51.34 1023.45 45 39.87001
tp @s[scores={cutSceneTimer=221}] 4977.54 51.34 1023.45 45 40.05001
tp @s[scores={cutSceneTimer=222}] 4977.54 51.34 1023.45 45 40.23001
tp @s[scores={cutSceneTimer=223}] 4977.54 51.34 1023.45 45 40.41001
tp @s[scores={cutSceneTimer=224}] 4977.54 51.34 1023.45 45 40.59001
tp @s[scores={cutSceneTimer=225}] 4977.54 51.34 1023.45 45 40.77001
tp @s[scores={cutSceneTimer=226}] 4977.54 51.34 1023.45 45 40.95001
tp @s[scores={cutSceneTimer=227}] 4977.54 51.34 1023.45 45 41.13001
tp @s[scores={cutSceneTimer=228}] 4977.54 51.34 1023.45 45 41.31001
tp @s[scores={cutSceneTimer=229}] 4977.54 51.34 1023.45 45 41.49001
tp @s[scores={cutSceneTimer=230}] 4977.54 51.34 1023.45 45 41.67001
tp @s[scores={cutSceneTimer=231}] 4977.54 51.34 1023.45 45 41.85001
tp @s[scores={cutSceneTimer=232}] 4977.54 51.34 1023.45 45 42.03001
tp @s[scores={cutSceneTimer=233}] 4977.54 51.34 1023.45 45 42.21001
tp @s[scores={cutSceneTimer=234}] 4977.54 51.34 1023.45 45 42.39001
tp @s[scores={cutSceneTimer=235}] 4977.54 51.34 1023.45 45 42.57001
tp @s[scores={cutSceneTimer=236}] 4977.54 51.34 1023.45 45 42.75002
tp @s[scores={cutSceneTimer=237}] 4977.54 51.34 1023.45 45 42.93002
tp @s[scores={cutSceneTimer=238}] 4977.54 51.34 1023.45 45 43.11002
tp @s[scores={cutSceneTimer=239}] 4977.54 51.34 1023.45 45 43.29002
tp @s[scores={cutSceneTimer=240}] 4977.54 51.34 1023.45 45 43.47002
tp @s[scores={cutSceneTimer=241}] 4977.54 51.34 1023.45 45 43.65002
tp @s[scores={cutSceneTimer=242}] 4977.54 51.34 1023.45 45 43.83002
tp @s[scores={cutSceneTimer=243}] 4977.54 51.34 1023.45 45 44.01002
tp @s[scores={cutSceneTimer=244}] 4977.54 51.34 1023.45 45 44.19002
tp @s[scores={cutSceneTimer=245}] 4977.54 51.34 1023.45 45 44.37002
tp @s[scores={cutSceneTimer=246}] 4977.54 51.34 1023.45 45 44.55002
tp @s[scores={cutSceneTimer=247}] 4977.54 51.34 1023.45 45 44.73002
tp @s[scores={cutSceneTimer=248}] 4977.54 51.34 1023.45 45 44.91002
tp @s[scores={cutSceneTimer=249}] 4977.54 51.34 1023.45 45 45.09002
tp @s[scores={cutSceneTimer=250}] 4977.54 51.34 1023.45 45 45.27002
tp @s[scores={cutSceneTimer=251}] 4977.54 51.34 1023.45 45 45.45002
tp @s[scores={cutSceneTimer=252}] 4977.54 51.34 1023.45 45 45.63002
tp @s[scores={cutSceneTimer=253}] 4977.54 51.34 1023.45 45 45.81002
tp @s[scores={cutSceneTimer=254}] 4977.54 51.34 1023.45 45 45.99002
tp @s[scores={cutSceneTimer=255}] 4977.54 51.34 1023.45 45 46.17002
tp @s[scores={cutSceneTimer=256}] 4977.54 51.34 1023.45 45 46.35002
tp @s[scores={cutSceneTimer=257}] 4977.54 51.34 1023.45 45 46.53002
tp @s[scores={cutSceneTimer=258}] 4977.54 51.34 1023.45 45 46.71002
tp @s[scores={cutSceneTimer=259}] 4977.54 51.34 1023.45 45 46.89002
tp @s[scores={cutSceneTimer=260}] 4977.54 51.34 1023.45 45 47.07002
tp @s[scores={cutSceneTimer=261}] 4977.54 51.34 1023.45 45 47.25002
tp @s[scores={cutSceneTimer=262}] 4977.54 51.34 1023.45 45 47.43002
tp @s[scores={cutSceneTimer=263}] 4977.54 51.34 1023.45 45 47.61002
tp @s[scores={cutSceneTimer=264}] 4977.54 51.34 1023.45 45 47.79002
tp @s[scores={cutSceneTimer=265}] 4977.54 51.34 1023.45 45 47.97002
tp @s[scores={cutSceneTimer=266}] 4977.54 51.34 1023.45 45 48.15002
tp @s[scores={cutSceneTimer=267}] 4977.54 51.34 1023.45 45 48.33002
tp @s[scores={cutSceneTimer=268}] 4977.54 51.34 1023.45 45 48.51003
tp @s[scores={cutSceneTimer=269}] 4977.54 51.34 1023.45 45 48.69003
tp @s[scores={cutSceneTimer=270}] 4977.54 51.34 1023.45 45 48.87003
tp @s[scores={cutSceneTimer=271}] 4977.54 51.34 1023.45 45 49.05003
tp @s[scores={cutSceneTimer=272}] 4977.54 51.34 1023.45 45 49.23003
tp @s[scores={cutSceneTimer=273}] 4977.54 51.34 1023.45 45 49.41003
tp @s[scores={cutSceneTimer=274}] 4977.54 51.34 1023.45 45 49.59003
tp @s[scores={cutSceneTimer=275}] 4977.54 51.34 1023.45 45 49.77003
tp @s[scores={cutSceneTimer=276}] 4977.54 51.34 1023.45 45 49.95003
tp @s[scores={cutSceneTimer=277}] 4977.54 51.34 1023.45 45 50.13003
tp @s[scores={cutSceneTimer=278}] 4977.54 51.34 1023.45 45 50.31003
tp @s[scores={cutSceneTimer=279}] 4977.54 51.34 1023.45 45 50.49003
tp @s[scores={cutSceneTimer=280}] 4977.54 51.34 1023.45 45 50.67003
tp @s[scores={cutSceneTimer=281}] 4977.54 51.34 1023.45 45 50.85003
tp @s[scores={cutSceneTimer=282}] 4977.54 51.34 1023.45 45 51.03003
tp @s[scores={cutSceneTimer=283}] 4977.54 51.34 1023.45 45 51.21003
tp @s[scores={cutSceneTimer=284}] 4977.54 51.34 1023.45 45 51.39003
tp @s[scores={cutSceneTimer=285}] 4977.54 51.34 1023.45 45 51.57003
tp @s[scores={cutSceneTimer=286}] 4977.54 51.34 1023.45 45 51.75003
tp @s[scores={cutSceneTimer=287}] 4977.54 51.34 1023.45 45 51.93003
tp @s[scores={cutSceneTimer=288}] 4977.54 51.34 1023.45 45 52.11003
tp @s[scores={cutSceneTimer=289}] 4977.54 51.34 1023.45 45 52.29003
tp @s[scores={cutSceneTimer=290}] 4977.54 51.34 1023.45 45 52.47003
tp @s[scores={cutSceneTimer=291}] 4977.54 51.34 1023.45 45 52.65003
tp @s[scores={cutSceneTimer=292}] 4977.54 51.34 1023.45 45 52.83003
tp @s[scores={cutSceneTimer=293}] 4977.54 51.34 1023.45 45 53.01003
tp @s[scores={cutSceneTimer=294}] 4977.54 51.34 1023.45 45 53.19003
tp @s[scores={cutSceneTimer=295}] 4977.54 51.34 1023.45 45 53.37003
tp @s[scores={cutSceneTimer=296}] 4977.54 51.34 1023.45 45 53.55003
tp @s[scores={cutSceneTimer=297}] 4977.54 51.34 1023.45 45 53.73003
tp @s[scores={cutSceneTimer=298}] 4977.54 51.34 1023.45 45 53.91003
tp @s[scores={cutSceneTimer=299}] 4977.54 51.34 1023.45 45 54.09003
tp @s[scores={cutSceneTimer=300}] 4977.54 51.34 1023.45 45 54.27003
tp @s[scores={cutSceneTimer=301}] 4977.54 51.34 1023.45 45 54.45004
tp @s[scores={cutSceneTimer=302}] 4977.54 51.34 1023.45 45 54.63004
tp @s[scores={cutSceneTimer=303}] 4977.54 51.34 1023.45 45 54.81004
tp @s[scores={cutSceneTimer=304}] 4977.54 51.34 1023.45 45 54.99004
tp @s[scores={cutSceneTimer=305}] 4977.54 51.34 1023.45 45 55.17004
tp @s[scores={cutSceneTimer=306}] 4977.54 51.34 1023.45 45 55.35004
tp @s[scores={cutSceneTimer=307}] 4977.54 51.34 1023.45 45 55.53004
tp @s[scores={cutSceneTimer=308}] 4977.54 51.34 1023.45 45 55.71004
tp @s[scores={cutSceneTimer=309}] 4977.54 51.34 1023.45 45 55.89004
tp @s[scores={cutSceneTimer=310}] 4977.54 51.34 1023.45 45 56.07004
tp @s[scores={cutSceneTimer=311}] 4977.54 51.34 1023.45 45 56.25004
tp @s[scores={cutSceneTimer=312}] 4977.54 51.34 1023.45 45 56.43004
tp @s[scores={cutSceneTimer=313}] 4977.54 51.34 1023.45 45 56.61004
tp @s[scores={cutSceneTimer=314}] 4977.54 51.34 1023.45 45 56.79004
tp @s[scores={cutSceneTimer=315}] 4977.54 51.34 1023.45 45 56.97004
tp @s[scores={cutSceneTimer=316}] 4977.54 51.34 1023.45 45 57.15004
tp @s[scores={cutSceneTimer=317}] 4977.54 51.34 1023.45 45 57.33004
tp @s[scores={cutSceneTimer=318}] 4977.54 51.34 1023.45 45 57.51004
tp @s[scores={cutSceneTimer=319}] 4977.54 51.34 1023.45 45 57.69004
tp @s[scores={cutSceneTimer=320}] 4977.54 51.34 1023.45 45 57.87004
tp @s[scores={cutSceneTimer=321}] 4977.54 51.34 1023.45 45 58.05004
tp @s[scores={cutSceneTimer=322}] 4977.54 51.34 1023.45 45 58.23004
tp @s[scores={cutSceneTimer=323}] 4977.54 51.34 1023.45 45 58.41004
tp @s[scores={cutSceneTimer=324}] 4977.54 51.34 1023.45 45 58.59004
tp @s[scores={cutSceneTimer=325}] 4977.54 51.34 1023.45 45 58.77004
tp @s[scores={cutSceneTimer=326}] 4977.54 51.34 1023.45 45 58.95004
tp @s[scores={cutSceneTimer=327}] 4977.54 51.34 1023.45 45 59.13004
tp @s[scores={cutSceneTimer=328}] 4977.54 51.34 1023.45 45 59.31004
tp @s[scores={cutSceneTimer=329}] 4977.54 51.34 1023.45 45 59.49004
tp @s[scores={cutSceneTimer=330}] 4977.54 51.34 1023.45 45 59.67004
tp @s[scores={cutSceneTimer=331}] 4977.54 51.34 1023.45 45 59.85004
tp @s[scores={cutSceneTimer=332}] 4977.54 51.34 1023.45 45 60.03004
tp @s[scores={cutSceneTimer=333}] 4977.54 51.34 1023.45 45 60.21004
tp @s[scores={cutSceneTimer=334}] 4977.54 51.34 1023.45 45 60.39005
tp @s[scores={cutSceneTimer=335}] 4977.54 51.34 1023.45 45 60.57005
tp @s[scores={cutSceneTimer=336}] 4977.54 51.34 1023.45 45 60.75005
tp @s[scores={cutSceneTimer=337}] 4977.54 51.34 1023.45 45 60.93005
tp @s[scores={cutSceneTimer=338}] 4977.54 51.34 1023.45 45 61.11005
tp @s[scores={cutSceneTimer=339}] 4977.54 51.34 1023.45 45 61.29005
tp @s[scores={cutSceneTimer=340}] 4977.54 51.34 1023.45 45 61.47005
tp @s[scores={cutSceneTimer=341}] 4977.54 51.34 1023.45 45 61.65005
tp @s[scores={cutSceneTimer=342}] 4977.54 51.34 1023.45 45 61.83005


execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] run setblock 4959 32 1056 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1056 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] run setblock 4958 32 1056 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1056 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=241},tag=cutsceneLeader] run setblock 4955 32 1052 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=241},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1052 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=241},tag=cutsceneLeader] run setblock 4955 32 1051 minecraft:jungle_button[face=ceiling,facing=north,powered=false]
execute as @s[scores={cutSceneTimer=241},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1051 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] run setblock 4954 32 1051 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] run particle minecraft:cloud 4954 32 1051 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] run setblock 4952 32 1053 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] run particle minecraft:cloud 4952 32 1053 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=243},tag=cutsceneLeader] run setblock 4949 32 1046 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=243},tag=cutsceneLeader] run particle minecraft:cloud 4949 32 1046 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=243},tag=cutsceneLeader] run setblock 4948 32 1046 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=243},tag=cutsceneLeader] run particle minecraft:cloud 4948 32 1046 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=244},tag=cutsceneLeader] run setblock 4948 32 1045 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=244},tag=cutsceneLeader] run particle minecraft:cloud 4948 32 1045 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=244},tag=cutsceneLeader] run setblock 4945 32 1042 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=244},tag=cutsceneLeader] run particle minecraft:cloud 4945 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=245},tag=cutsceneLeader] run setblock 4944 32 1043 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=245},tag=cutsceneLeader] run particle minecraft:cloud 4944 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=245},tag=cutsceneLeader] run setblock 4944 32 1042 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=245},tag=cutsceneLeader] run particle minecraft:cloud 4944 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=246},tag=cutsceneLeader] run setblock 4944 32 1041 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=246},tag=cutsceneLeader] run particle minecraft:cloud 4944 32 1041 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=246},tag=cutsceneLeader] run setblock 4946 32 1039 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=246},tag=cutsceneLeader] run particle minecraft:cloud 4946 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=247},tag=cutsceneLeader] run setblock 4947 31 1039 minecraft:barrier
execute as @s[scores={cutSceneTimer=247},tag=cutsceneLeader] run particle minecraft:cloud 4947 31 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=247},tag=cutsceneLeader] run setblock 4947 32 1040 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=247},tag=cutsceneLeader] run particle minecraft:cloud 4947 32 1040 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=248},tag=cutsceneLeader] run setblock 4950 32 1043 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=248},tag=cutsceneLeader] run particle minecraft:cloud 4950 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=248},tag=cutsceneLeader] run setblock 4951 32 1044 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=248},tag=cutsceneLeader] run particle minecraft:cloud 4951 32 1044 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] run setblock 4950 32 1045 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] run particle minecraft:cloud 4950 32 1045 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] run setblock 4957 32 1048 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] run particle minecraft:cloud 4957 32 1048 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run setblock 4957 32 1050 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run particle minecraft:cloud 4957 32 1050 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run setblock 4959 32 1054 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1054 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=251},tag=cutsceneLeader] run setblock 4960 32 1053 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=251},tag=cutsceneLeader] run particle minecraft:cloud 4960 32 1053 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=251},tag=cutsceneLeader] run setblock 4961 31 1053 minecraft:barrier
execute as @s[scores={cutSceneTimer=251},tag=cutsceneLeader] run particle minecraft:cloud 4961 31 1053 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=252},tag=cutsceneLeader] run setblock 4961 32 1052 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=252},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1052 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=252},tag=cutsceneLeader] run setblock 4959 32 1048 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=252},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1048 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] run setblock 4958 32 1048 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1048 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] run setblock 4952 32 1043 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] run particle minecraft:cloud 4952 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=254},tag=cutsceneLeader] run setblock 4951 32 1043 minecraft:cake[bites=2]
execute as @s[scores={cutSceneTimer=254},tag=cutsceneLeader] run particle minecraft:cloud 4951 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=254},tag=cutsceneLeader] run setblock 4951 32 1042 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=254},tag=cutsceneLeader] run particle minecraft:cloud 4951 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=255},tag=cutsceneLeader] run setblock 4948 32 1039 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=255},tag=cutsceneLeader] run particle minecraft:cloud 4948 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=255},tag=cutsceneLeader] run setblock 4947 32 1038 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=255},tag=cutsceneLeader] run particle minecraft:cloud 4947 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=256},tag=cutsceneLeader] run setblock 4948 32 1037 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=256},tag=cutsceneLeader] run particle minecraft:cloud 4948 32 1037 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=256},tag=cutsceneLeader] run setblock 4949 32 1038 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=256},tag=cutsceneLeader] run particle minecraft:cloud 4949 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=257},tag=cutsceneLeader] run setblock 4950 32 1036 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=257},tag=cutsceneLeader] run particle minecraft:cloud 4950 32 1036 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=257},tag=cutsceneLeader] run setblock 4954 32 1040 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=257},tag=cutsceneLeader] run particle minecraft:cloud 4954 32 1040 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=258},tag=cutsceneLeader] run setblock 4954 32 1041 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=258},tag=cutsceneLeader] run particle minecraft:cloud 4954 32 1041 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=258},tag=cutsceneLeader] run setblock 4959 32 1046 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=258},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1046 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=259},tag=cutsceneLeader] run setblock 4961 32 1046 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=259},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1046 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=259},tag=cutsceneLeader] run setblock 4963 32 1052 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=259},tag=cutsceneLeader] run particle minecraft:cloud 4963 32 1052 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] run setblock 4964 32 1050 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] run particle minecraft:cloud 4964 32 1050 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] run setblock 4965 32 1050 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1050 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=261},tag=cutsceneLeader] run setblock 4966 32 1049 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=261},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1049 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=261},tag=cutsceneLeader] run setblock 4965 32 1048 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=261},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1048 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=262},tag=cutsceneLeader] run setblock 4961 32 1045 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=262},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1045 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=262},tag=cutsceneLeader] run setblock 4961 32 1044 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=262},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1044 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=263},tag=cutsceneLeader] run setblock 4956 32 1039 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=263},tag=cutsceneLeader] run particle minecraft:cloud 4956 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=263},tag=cutsceneLeader] run setblock 4955 32 1039 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=263},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] run setblock 4955 32 1038 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] run setblock 4954 32 1039 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] run particle minecraft:cloud 4954 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=265},tag=cutsceneLeader] run setblock 4951 32 1035 minecraft:jungle_button[face=ceiling,facing=north,powered=false]
execute as @s[scores={cutSceneTimer=265},tag=cutsceneLeader] run particle minecraft:cloud 4951 32 1035 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=265},tag=cutsceneLeader] run setblock 4951 32 1034 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=265},tag=cutsceneLeader] run particle minecraft:cloud 4951 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=266},tag=cutsceneLeader] run setblock 4952 32 1033 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=266},tag=cutsceneLeader] run particle minecraft:cloud 4952 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=266},tag=cutsceneLeader] run setblock 4953 32 1032 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=266},tag=cutsceneLeader] run particle minecraft:cloud 4953 32 1032 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=267},tag=cutsceneLeader] run setblock 4953 32 1034 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=267},tag=cutsceneLeader] run particle minecraft:cloud 4953 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=267},tag=cutsceneLeader] run setblock 4954 32 1033 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=267},tag=cutsceneLeader] run particle minecraft:cloud 4954 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=268},tag=cutsceneLeader] run setblock 4956 32 1037 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=268},tag=cutsceneLeader] run particle minecraft:cloud 4956 32 1037 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=268},tag=cutsceneLeader] run setblock 4957 32 1038 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=268},tag=cutsceneLeader] run particle minecraft:cloud 4957 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=269},tag=cutsceneLeader] run setblock 4962 32 1043 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=269},tag=cutsceneLeader] run particle minecraft:cloud 4962 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=270},tag=cutsceneLeader] run setblock 4963 32 1044 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=270},tag=cutsceneLeader] run particle minecraft:cloud 4963 32 1044 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=270},tag=cutsceneLeader] run setblock 4966 32 1047 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=270},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1047 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] run setblock 4968 32 1046 minecraft:cake[bites=6]
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] run particle minecraft:cloud 4968 32 1046 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] run setblock 4964 32 1042 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] run particle minecraft:cloud 4964 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=272},tag=cutsceneLeader] run setblock 4958 32 1036 minecraft:cake[bites=6]
execute as @s[scores={cutSceneTimer=272},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1036 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=272},tag=cutsceneLeader] run setblock 4957 32 1036 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=272},tag=cutsceneLeader] run particle minecraft:cloud 4957 32 1036 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=273},tag=cutsceneLeader] run setblock 4955 32 1031 minecraft:cake[bites=4]
execute as @s[scores={cutSceneTimer=273},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1031 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=273},tag=cutsceneLeader] run setblock 4955 32 1030 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=273},tag=cutsceneLeader] run particle minecraft:cloud 4955 32 1030 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=274},tag=cutsceneLeader] run setblock 4956 32 1031 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=274},tag=cutsceneLeader] run particle minecraft:cloud 4956 32 1031 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=274},tag=cutsceneLeader] run setblock 4959 32 1034 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=274},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=275},tag=cutsceneLeader] run setblock 4966 32 1041 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=275},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1041 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=275},tag=cutsceneLeader] run setblock 4970 32 1043 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=275},tag=cutsceneLeader] run particle minecraft:cloud 4970 32 1043 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=276},tag=cutsceneLeader] run setblock 4971 32 1044 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=276},tag=cutsceneLeader] run particle minecraft:cloud 4971 32 1044 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=276},tag=cutsceneLeader] run setblock 4971 32 1042 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=276},tag=cutsceneLeader] run particle minecraft:cloud 4971 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=277},tag=cutsceneLeader] run setblock 4967 32 1040 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=277},tag=cutsceneLeader] run particle minecraft:cloud 4967 32 1040 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=277},tag=cutsceneLeader] run setblock 4967 32 1039 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=277},tag=cutsceneLeader] run particle minecraft:cloud 4967 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=278},tag=cutsceneLeader] run setblock 4966 32 1039 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=278},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=278},tag=cutsceneLeader] run setblock 4961 32 1034 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=278},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=279},tag=cutsceneLeader] run setblock 4962 32 1033 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=279},tag=cutsceneLeader] run particle minecraft:cloud 4962 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=279},tag=cutsceneLeader] run setblock 4961 32 1033 minecraft:cake[bites=4]
execute as @s[scores={cutSceneTimer=279},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=280},tag=cutsceneLeader] run setblock 4961 32 1032 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=280},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1032 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=280},tag=cutsceneLeader] run setblock 4960 32 1033 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=280},tag=cutsceneLeader] run particle minecraft:cloud 4960 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=281},tag=cutsceneLeader] run setblock 4957 32 1030 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=281},tag=cutsceneLeader] run particle minecraft:cloud 4957 32 1030 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=281},tag=cutsceneLeader] run setblock 4956 32 1029 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=281},tag=cutsceneLeader] run particle minecraft:cloud 4956 32 1029 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=282},tag=cutsceneLeader] run setblock 4958 32 1029 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=282},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1029 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=282},tag=cutsceneLeader] run setblock 4958 32 1028 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=282},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1028 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=283},tag=cutsceneLeader] run setblock 4958 32 1027 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=283},tag=cutsceneLeader] run particle minecraft:cloud 4958 32 1027 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=283},tag=cutsceneLeader] run setblock 4960 32 1027 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=283},tag=cutsceneLeader] run particle minecraft:cloud 4960 32 1027 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=284},tag=cutsceneLeader] run setblock 4963 32 1030 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=284},tag=cutsceneLeader] run particle minecraft:cloud 4963 32 1030 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=284},tag=cutsceneLeader] run setblock 4963 32 1031 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=284},tag=cutsceneLeader] run particle minecraft:cloud 4963 32 1031 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=285},tag=cutsceneLeader] run setblock 4963 32 1032 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=285},tag=cutsceneLeader] run particle minecraft:cloud 4963 32 1032 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=285},tag=cutsceneLeader] run setblock 4968 32 1037 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=285},tag=cutsceneLeader] run particle minecraft:cloud 4968 32 1037 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=286},tag=cutsceneLeader] run setblock 4968 31 1038 minecraft:barrier
execute as @s[scores={cutSceneTimer=286},tag=cutsceneLeader] run particle minecraft:cloud 4968 31 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=286},tag=cutsceneLeader] run setblock 4970 32 1037 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=286},tag=cutsceneLeader] run particle minecraft:cloud 4970 32 1037 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=287},tag=cutsceneLeader] run setblock 4973 32 1041 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=287},tag=cutsceneLeader] run particle minecraft:cloud 4973 32 1041 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=287},tag=cutsceneLeader] run setblock 4972 32 1042 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=287},tag=cutsceneLeader] run particle minecraft:cloud 4972 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=288},tag=cutsceneLeader] run setblock 4973 32 1042 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=288},tag=cutsceneLeader] run particle minecraft:cloud 4973 32 1042 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=288},tag=cutsceneLeader] run setblock 4975 32 1040 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=288},tag=cutsceneLeader] run particle minecraft:cloud 4975 32 1040 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=289},tag=cutsceneLeader] run setblock 4976 32 1039 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=289},tag=cutsceneLeader] run particle minecraft:cloud 4976 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=289},tag=cutsceneLeader] run setblock 4976 32 1039 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=289},tag=cutsceneLeader] run particle minecraft:cloud 4976 32 1039 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 4977 32 1038 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run particle minecraft:cloud 4977 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 4977 32 1038 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run particle minecraft:cloud 4977 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=291},tag=cutsceneLeader] run setblock 4976 32 1037 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=291},tag=cutsceneLeader] run particle minecraft:cloud 4976 32 1037 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=291},tag=cutsceneLeader] run setblock 4975 32 1038 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=291},tag=cutsceneLeader] run particle minecraft:cloud 4975 32 1038 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=292},tag=cutsceneLeader] run setblock 4972 32 1034 minecraft:cake[bites=6]
execute as @s[scores={cutSceneTimer=292},tag=cutsceneLeader] run particle minecraft:cloud 4972 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=292},tag=cutsceneLeader] run setblock 4971 32 1034 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=292},tag=cutsceneLeader] run particle minecraft:cloud 4971 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=293},tag=cutsceneLeader] run setblock 4970 32 1035 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=293},tag=cutsceneLeader] run particle minecraft:cloud 4970 32 1035 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=293},tag=cutsceneLeader] run setblock 4965 32 1030 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=293},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1030 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=294},tag=cutsceneLeader] run setblock 4966 32 1029 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=294},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1029 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=294},tag=cutsceneLeader] run setblock 4965 32 1029 minecraft:cake[bites=0]
execute as @s[scores={cutSceneTimer=294},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1029 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=295},tag=cutsceneLeader] run setblock 4961 32 1026 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=295},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1026 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=295},tag=cutsceneLeader] run setblock 4962 32 1025 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=295},tag=cutsceneLeader] run particle minecraft:cloud 4962 32 1025 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=296},tag=cutsceneLeader] run setblock 4960 32 1025 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=296},tag=cutsceneLeader] run particle minecraft:cloud 4960 32 1025 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=296},tag=cutsceneLeader] run setblock 4961 32 1024 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=296},tag=cutsceneLeader] run particle minecraft:cloud 4961 32 1024 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=297},tag=cutsceneLeader] run setblock 4966 32 1027 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=297},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1027 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=297},tag=cutsceneLeader] run setblock 4967 32 1028 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=297},tag=cutsceneLeader] run particle minecraft:cloud 4967 32 1028 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=298},tag=cutsceneLeader] run setblock 4967 32 1026 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=298},tag=cutsceneLeader] run particle minecraft:cloud 4967 32 1026 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=298},tag=cutsceneLeader] run setblock 4967 32 1028 minecraft:dead_bubble_coral_wall_fan[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=298},tag=cutsceneLeader] run particle minecraft:cloud 4967 32 1028 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=299},tag=cutsceneLeader] run setblock 4973 32 1032 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=299},tag=cutsceneLeader] run particle minecraft:cloud 4973 32 1032 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=299},tag=cutsceneLeader] run setblock 4974 32 1033 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=299},tag=cutsceneLeader] run particle minecraft:cloud 4974 32 1033 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] run setblock 4978 32 1035 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] run particle minecraft:cloud 4978 32 1035 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] run setblock 4978 32 1036 minecraft:cake[bites=4]
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] run particle minecraft:cloud 4978 32 1036 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] run setblock 4980 32 1035 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] run particle minecraft:cloud 4980 32 1035 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] run setblock 4979 32 1034 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] run particle minecraft:cloud 4979 32 1034 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=302},tag=cutsceneLeader] run setblock 4976 32 1031 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=302},tag=cutsceneLeader] run particle minecraft:cloud 4976 32 1031 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=302},tag=cutsceneLeader] run setblock 4975 32 1031 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=302},tag=cutsceneLeader] run particle minecraft:cloud 4975 32 1031 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run setblock 4975 32 1030 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run particle minecraft:cloud 4975 32 1030 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run setblock 4970 32 1025 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=303},tag=cutsceneLeader] run particle minecraft:cloud 4970 32 1025 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=304},tag=cutsceneLeader] run setblock 4969 32 1026 minecraft:light_weighted_pressure_plate[power=14]
execute as @s[scores={cutSceneTimer=304},tag=cutsceneLeader] run particle minecraft:cloud 4959 32 1056 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=304},tag=cutsceneLeader] run setblock 4968 32 1026 minecraft:jungle_button[face=ceiling,facing=north,powered=false]
execute as @s[scores={cutSceneTimer=304},tag=cutsceneLeader] run particle minecraft:cloud 4968 32 1026 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=305},tag=cutsceneLeader] run setblock 4969 32 1024 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=305},tag=cutsceneLeader] run particle minecraft:cloud 4969 32 1024 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=305},tag=cutsceneLeader] run setblock 4970 32 1023 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=305},tag=cutsceneLeader] run particle minecraft:cloud 4970 32 1023 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=306},tag=cutsceneLeader] run setblock 4966 32 1021 minecraft:dead_bubble_coral_wall_fan[facing=east,waterlogged=false]
execute as @s[scores={cutSceneTimer=306},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1021 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=306},tag=cutsceneLeader] run setblock 4965 32 1022 minecraft:light_weighted_pressure_plate[power=12]
execute as @s[scores={cutSceneTimer=306},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1022 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=307},tag=cutsceneLeader] run setblock 4964 32 1022 minecraft:cake[bites=3]
execute as @s[scores={cutSceneTimer=307},tag=cutsceneLeader] run particle minecraft:cloud 4964 32 1022 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=307},tag=cutsceneLeader] run setblock 4964 32 1021 minecraft:light_weighted_pressure_plate[power=13]
execute as @s[scores={cutSceneTimer=307},tag=cutsceneLeader] run particle minecraft:cloud 4964 32 1021 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] run setblock 4965 32 1020 minecraft:dead_bubble_coral_fan[waterlogged=false]
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] run particle minecraft:cloud 4965 32 1020 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] run setblock 4966 32 1019 minecraft:pumpkin_stem[age=0]
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] run particle minecraft:cloud 4966 32 1019 0.1 0.1 0.1 0.05 10 force


execute as @s[scores={cutSceneTimer=321}] run tag @s add greatHallFull
execute as @s[scores={cutSceneTimer=321}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=342}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=342}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=342}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=342}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=342}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=363}] run function hp:cutscenes/exit_cutscene



