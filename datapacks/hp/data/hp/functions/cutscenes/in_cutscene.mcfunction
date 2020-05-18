# Cutscenes
# Certain cutscenes are designed to only be executed by one player (cutsceneMaster)
execute as @s[scores={cutSceneID=1}] run function hp:cutscenes/cutscenes/diagon_alley
execute as @s[scores={cutSceneID=2}] run function hp:cutscenes/cutscenes/hogwarts_express
execute as @s[scores={cutSceneID=3}] run function hp:cutscenes/cutscenes/hogwarts_arrival
execute as @s[scores={cutSceneID=4}] run function hp:cutscenes/cutscenes/sorting
execute as @s[scores={cutSceneID=5}] run function hp:cutscenes/cutscenes/let_the_feast_begin
execute as @s[scores={cutSceneID=6},tag=cutsceneMaster] run function hp:cutscenes/cutscenes/opening
execute as @s[scores={cutSceneID=7}] run function hp:cutscenes/cutscenes/knight_bus
execute as @s[scores={cutSceneID=8},tag=cutsceneMaster] run function hp:cutscenes/cutscenes/boat_walking_hagrid
execute as @s[scores={cutSceneID=9}] run function hp:cutscenes/cutscenes/lumos
execute as @s[scores={cutSceneID=10}] run function hp:cutscenes/cutscenes/stupefy
execute as @s[scores={cutSceneID=11}] run function hp:cutscenes/cutscenes/stupefy_2
execute as @s[scores={cutSceneID=12}] run function hp:cutscenes/cutscenes/potions
execute as @s[scores={cutSceneID=13}] run function hp:cutscenes/cutscenes/brackium_emendo
execute as @s[scores={cutSceneID=14}] run function hp:cutscenes/cutscenes/brackium_emendo_2
execute as @s[scores={cutSceneID=15}] run function hp:cutscenes/cutscenes/alohomora
execute as @s[scores={cutSceneID=16}] run function hp:cutscenes/cutscenes/alohomora_cage
execute as @s[scores={cutSceneID=17}] run function hp:cutscenes/cutscenes/wingardium_leviosa
execute as @s[scores={cutSceneID=18}] run function hp:cutscenes/cutscenes/bombarda_water_rise_1
execute as @s[scores={cutSceneID=19}] run function hp:cutscenes/cutscenes/bombarda_water_rise_2
execute as @s[scores={cutSceneID=20}] run function hp:cutscenes/cutscenes/bombarda_water_rise_3
execute as @s[scores={cutSceneID=21}] run function hp:cutscenes/cutscenes/bombarda_maxima
execute as @s[scores={cutSceneID=22}] run function hp:cutscenes/cutscenes/herbology
execute as @s[scores={cutSceneID=23}] run function hp:cutscenes/cutscenes/expecto_patronum
execute as @s[scores={cutSceneID=24}] run function hp:cutscenes/cutscenes/expecto_patronum_2
execute as @s[scores={cutSceneID=25}] run function hp:cutscenes/cutscenes/vera_verto
execute as @s[scores={cutSceneID=26}] run function hp:cutscenes/cutscenes/vera_verto_door_2
execute as @s[scores={cutSceneID=27}] run function hp:cutscenes/cutscenes/vera_verto_door_3
execute as @s[scores={cutSceneID=28}] run function hp:cutscenes/cutscenes/bombarda_maxima_2
execute as @s[scores={cutSceneID=29}] run function hp:cutscenes/cutscenes/grimmauld_place
execute as @s[scores={cutSceneID=30}] run function hp:cutscenes/cutscenes/knight_bus_l_p
execute as @s[scores={cutSceneID=31}] run function hp:cutscenes/cutscenes/knight_bus_l_g
execute as @s[scores={cutSceneID=32}] run function hp:cutscenes/cutscenes/knight_bus_p_l
execute as @s[scores={cutSceneID=33}] run function hp:cutscenes/cutscenes/knight_bus_p_g
execute as @s[scores={cutSceneID=34}] run function hp:cutscenes/cutscenes/knight_bus_g_l
execute as @s[scores={cutSceneID=35}] run function hp:cutscenes/cutscenes/knight_bus_g_p
execute as @s[scores={cutSceneID=36}] run function hp:cutscenes/cutscenes/hogwarts_express_to_hogsmeade_station
execute as @s[scores={cutSceneID=37}] run function hp:cutscenes/cutscenes/hogwarts_express_to_kings_cross
execute as @s[scores={cutSceneID=38}] run function hp:cutscenes/cutscenes/ministry_toilets
execute as @s[scores={cutSceneID=39}] run function hp:cutscenes/cutscenes/ministry_phone_booth
execute as @s[scores={cutSceneID=40}] run function hp:cutscenes/cutscenes/ministry_elevator_1
execute as @s[scores={cutSceneID=41}] run function hp:cutscenes/cutscenes/ministry_elevator_2
execute as @s[scores={cutSceneID=42}] run function hp:cutscenes/cutscenes/apparition
execute as @s[scores={cutSceneID=43},tag=cutsceneMaster] run function hp:cutscenes/cutscenes/ministry_death_eater_attack
execute as @s[scores={cutSceneID=44}] run function hp:cutscenes/cutscenes/ministry_reinforcements
execute as @s[scores={cutSceneID=45}] run function hp:cutscenes/cutscenes/grimmauld_place_simple
execute as @s[scores={cutSceneID=46}] run function hp:cutscenes/cutscenes/grimmauld_place_exit
execute as @s[scores={cutSceneID=47}] run function hp:cutscenes/cutscenes/azkaban
execute as @s[scores={cutSceneID=48}] run function hp:cutscenes/cutscenes/azkaban_2
execute as @s[scores={cutSceneID=49}] run function hp:cutscenes/cutscenes/brackium_emendo_2_memory
execute as @s[scores={cutSceneID=50}] run function hp:cutscenes/cutscenes/mirror_of_erised_relocate
execute as @s[scores={cutSceneID=51}] run function hp:cutscenes/cutscenes/dungeon_entrance
execute as @s[scores={cutSceneID=52}] run function hp:cutscenes/cutscenes/dungeon_exit
execute as @s[scores={cutSceneID=53}] run function hp:cutscenes/cutscenes/bombarda_ladder

# Technical
scoreboard players add @s cutSceneTimer 1
scoreboard players add @s[tag=cutSceneFadeIn,tag=!fastFade] cutSceneFade 1
scoreboard players add @s[tag=cutSceneFadeIn,tag=fastFade] cutSceneFade 2
scoreboard players remove @s[tag=cutSceneFadeOut,tag=!fastFade] cutSceneFade 1
scoreboard players remove @s[tag=cutSceneFadeOut,tag=fastFade] cutSceneFade 2
tag @s[tag=cutSceneFadeIn,scores={cutSceneFade=21..}] remove cutSceneFadeIn
tag @s[tag=cutSceneFadeOut,scores={cutSceneFade=..0}] remove cutSceneFadeOut

effect give @s[tag=cutsceneLevitate,tag=!hasCutsceneLevitate] minecraft:levitation 999999 255 true
tag @s[tag=cutsceneLevitate,tag=!hasCutsceneLevitate] add isLevitating
tag @s[tag=cutsceneLevitate,tag=!hasCutsceneLevitate] add hasCutsceneLevitate
effect clear @s[tag=!cutsceneLevitate,tag=hasCutsceneLevitate] minecraft:levitation
tag @s[tag=!cutsceneLevitate,tag=hasCutsceneLevitate] remove hasCutsceneLevitate
tag @s[tag=!cutsceneLevitate,tag=hasCutsceneLevitate] remove isLevitating

effect give @s[tag=cutsceneZoom,tag=!hasCutsceneSlowness] minecraft:slowness 999999 3 true
tag @s[tag=cutsceneZoom,tag=!hasCutsceneSlowness] add hasCutsceneSlowness
effect clear @s[tag=!cutsceneZoom,tag=hasCutsceneSlowness] minecraft:slowness
tag @s[tag=!cutsceneZoom,tag=hasCutsceneSlowness] remove hasCutsceneSlowness

# effect give @s minecraft:invisibility 999999 1 true

