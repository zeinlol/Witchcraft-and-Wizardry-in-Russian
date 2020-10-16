execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] run scoreboard players set ministryPhoneBoothCutsceneIsGoing global 1
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s run title @s actionbar ""

# Reset phone booth if it isn't properly reset
execute as @s[scores={cutSceneTimer=260}] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=260}] run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 9848 10200 1 1 false @s
execute as @s[scores={cutSceneTimer=260}] run tp 774ed417-669f-40ee-b32d-f91d65c7bb8e 9850 139 10205
execute as @s[scores={cutSceneTimer=260}] run kill @e[tag=chunkLoader,limit=1,sort=nearest]


execute as @s[scores={cutSceneTimer=19}] run data merge entity 855784f9-b30a-4438-9c5c-47807534ba42 {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1387}}]}
# execute as @s[scores={cutSceneTimer=20}] run setblock 2478 58 368 minecraft:barrier

execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=22}] 2485.451 58.41717 366.0332 70.68 16.42
tp @s[scores={cutSceneTimer=23}] 2485.442 58.41434 366.0363 70.68 16.42
tp @s[scores={cutSceneTimer=24}] 2485.433 58.41152 366.0395 70.68 16.42
tp @s[scores={cutSceneTimer=25}] 2485.424 58.40869 366.0427 70.68 16.42
tp @s[scores={cutSceneTimer=26}] 2485.415 58.40586 366.0459 70.68 16.42
tp @s[scores={cutSceneTimer=27}] 2485.406 58.40304 366.049 70.68 16.42
tp @s[scores={cutSceneTimer=28}] 2485.397 58.40021 366.0522 70.68 16.42
tp @s[scores={cutSceneTimer=29}] 2485.388 58.39738 366.0554 70.68 16.42
tp @s[scores={cutSceneTimer=30}] 2485.379 58.39456 366.0586 70.68 16.42
tp @s[scores={cutSceneTimer=31}] 2485.37 58.39173 366.0617 70.68 16.42
tp @s[scores={cutSceneTimer=32}] 2485.361 58.3889 366.0649 70.68 16.42
tp @s[scores={cutSceneTimer=33}] 2485.352 58.38608 366.0681 70.68 16.42
tp @s[scores={cutSceneTimer=34}] 2485.343 58.38325 366.0713 70.68 16.42
tp @s[scores={cutSceneTimer=35}] 2485.333 58.38042 366.0744 70.68 16.42
tp @s[scores={cutSceneTimer=36}] 2485.324 58.3776 366.0776 70.68 16.42
tp @s[scores={cutSceneTimer=37}] 2485.315 58.37477 366.0808 70.68 16.42
tp @s[scores={cutSceneTimer=38}] 2485.306 58.37194 366.084 70.68 16.42
tp @s[scores={cutSceneTimer=39}] 2485.297 58.36912 366.0871 70.68 16.42
tp @s[scores={cutSceneTimer=40}] 2485.288 58.36629 366.0903 70.68 16.42
tp @s[scores={cutSceneTimer=41}] 2485.279 58.36346 366.0935 70.68 16.42
tp @s[scores={cutSceneTimer=42}] 2485.27 58.36064 366.0966 70.68 16.42
tp @s[scores={cutSceneTimer=43}] 2485.261 58.35781 366.0998 70.68 16.42
tp @s[scores={cutSceneTimer=44}] 2485.252 58.35498 366.103 70.68 16.42
tp @s[scores={cutSceneTimer=45}] 2485.243 58.35216 366.1062 70.68 16.42
tp @s[scores={cutSceneTimer=46}] 2485.234 58.34933 366.1093 70.68 16.42
tp @s[scores={cutSceneTimer=47}] 2485.225 58.3465 366.1125 70.68 16.42
tp @s[scores={cutSceneTimer=48}] 2485.216 58.34368 366.1157 70.68 16.42
tp @s[scores={cutSceneTimer=49}] 2485.207 58.34085 366.1189 70.68 16.42
tp @s[scores={cutSceneTimer=50}] 2485.198 58.33802 366.122 70.68 16.42
tp @s[scores={cutSceneTimer=51}] 2485.189 58.3352 366.1252 70.68 16.42
tp @s[scores={cutSceneTimer=52}] 2485.18 58.33237 366.1284 70.68 16.42
tp @s[scores={cutSceneTimer=53}] 2485.171 58.32954 366.1316 70.68 16.42
tp @s[scores={cutSceneTimer=54}] 2485.162 58.32672 366.1347 70.68 16.42
tp @s[scores={cutSceneTimer=55}] 2485.153 58.32389 366.1379 70.68 16.42
tp @s[scores={cutSceneTimer=56}] 2485.144 58.32106 366.1411 70.68 16.42
tp @s[scores={cutSceneTimer=57}] 2485.135 58.31824 366.1443 70.68 16.42
tp @s[scores={cutSceneTimer=58}] 2485.126 58.31541 366.1474 70.68 16.42
tp @s[scores={cutSceneTimer=59}] 2485.117 58.31258 366.1506 70.68 16.42
tp @s[scores={cutSceneTimer=60}] 2485.108 58.30976 366.1538 70.68 16.42
tp @s[scores={cutSceneTimer=61}] 2485.099 58.30693 366.157 70.68 16.42
tp @s[scores={cutSceneTimer=62}] 2485.09 58.3041 366.1601 70.68 16.42
tp @s[scores={cutSceneTimer=63}] 2485.081 58.30128 366.1633 70.68 16.42
tp @s[scores={cutSceneTimer=64}] 2485.072 58.29845 366.1665 70.68 16.42
tp @s[scores={cutSceneTimer=65}] 2485.063 58.29562 366.1696 70.68 16.42
tp @s[scores={cutSceneTimer=66}] 2485.053 58.2928 366.1728 70.68 16.42
tp @s[scores={cutSceneTimer=67}] 2485.044 58.28997 366.176 70.68 16.42
tp @s[scores={cutSceneTimer=68}] 2485.035 58.28714 366.1792 70.68 16.42
tp @s[scores={cutSceneTimer=69}] 2485.026 58.28432 366.1823 70.68 16.42
tp @s[scores={cutSceneTimer=70}] 2485.017 58.28149 366.1855 70.68 16.42
tp @s[scores={cutSceneTimer=71}] 2485.008 58.27866 366.1887 70.68 16.42
tp @s[scores={cutSceneTimer=72}] 2484.999 58.27584 366.1919 70.68 16.42
tp @s[scores={cutSceneTimer=73}] 2484.99 58.27301 366.195 70.68 16.42
tp @s[scores={cutSceneTimer=74}] 2484.981 58.27018 366.1982 70.68 16.42
tp @s[scores={cutSceneTimer=75}] 2484.972 58.26736 366.2014 70.68 16.42
tp @s[scores={cutSceneTimer=76}] 2484.963 58.26453 366.2046 70.68 16.42
tp @s[scores={cutSceneTimer=77}] 2484.954 58.2617 366.2077 70.68 16.42
tp @s[scores={cutSceneTimer=78}] 2484.945 58.25888 366.2109 70.68 16.42
tp @s[scores={cutSceneTimer=79}] 2484.936 58.25605 366.2141 70.68 16.42
tp @s[scores={cutSceneTimer=80}] 2484.927 58.25322 366.2173 70.68 16.42
tp @s[scores={cutSceneTimer=81}] 2484.918 58.2504 366.2204 70.68 16.42
tp @s[scores={cutSceneTimer=82}] 2484.909 58.24757 366.2236 70.68 16.42
tp @s[scores={cutSceneTimer=83}] 2484.9 58.24474 366.2268 70.68 16.42
tp @s[scores={cutSceneTimer=84}] 2484.891 58.24192 366.2299 70.68 16.42
tp @s[scores={cutSceneTimer=85}] 2484.882 58.23909 366.2331 70.68 16.42
tp @s[scores={cutSceneTimer=86}] 2484.873 58.23626 366.2363 70.68 16.42
tp @s[scores={cutSceneTimer=87}] 2484.864 58.23344 366.2395 70.68 16.42
tp @s[scores={cutSceneTimer=88}] 2484.855 58.23061 366.2426 70.68 16.42
tp @s[scores={cutSceneTimer=89}] 2484.846 58.22778 366.2458 70.68 16.42
tp @s[scores={cutSceneTimer=90}] 2484.837 58.22496 366.249 70.68 16.42
tp @s[scores={cutSceneTimer=91}] 2484.828 58.22213 366.2522 70.68 16.42
tp @s[scores={cutSceneTimer=92}] 2484.819 58.2193 366.2553 70.68 16.42
tp @s[scores={cutSceneTimer=93}] 2484.81 58.21648 366.2585 70.68 16.42
tp @s[scores={cutSceneTimer=94}] 2484.801 58.21365 366.2617 70.68 16.42
tp @s[scores={cutSceneTimer=95}] 2484.792 58.21082 366.2649 70.68 16.42
tp @s[scores={cutSceneTimer=96}] 2484.782 58.208 366.268 70.68 16.42
tp @s[scores={cutSceneTimer=97}] 2484.773 58.20517 366.2712 70.68 16.42
tp @s[scores={cutSceneTimer=98}] 2484.764 58.20234 366.2744 70.68 16.42
tp @s[scores={cutSceneTimer=99}] 2484.755 58.19952 366.2776 70.68 16.42
tp @s[scores={cutSceneTimer=100}] 2484.746 58.19669 366.2807 70.68 16.42
tp @s[scores={cutSceneTimer=101}] 2484.737 58.19386 366.2839 70.68 16.42
tp @s[scores={cutSceneTimer=102}] 2484.728 58.19104 366.2871 70.68 16.42
tp @s[scores={cutSceneTimer=103}] 2484.719 58.18821 366.2903 70.68 16.42
tp @s[scores={cutSceneTimer=104}] 2484.71 58.18538 366.2934 70.68 16.42
tp @s[scores={cutSceneTimer=105}] 2484.701 58.18256 366.2966 70.68 16.42
tp @s[scores={cutSceneTimer=106}] 2484.692 58.17973 366.2998 70.68 16.42
tp @s[scores={cutSceneTimer=107}] 2484.683 58.1769 366.3029 70.68 16.42
tp @s[scores={cutSceneTimer=108}] 2484.674 58.17408 366.3061 70.68 16.42
tp @s[scores={cutSceneTimer=109}] 2484.665 58.17125 366.3093 70.68 16.42
tp @s[scores={cutSceneTimer=110}] 2484.656 58.16842 366.3125 70.68 16.42
tp @s[scores={cutSceneTimer=111}] 2484.647 58.1656 366.3156 70.68 16.42
tp @s[scores={cutSceneTimer=112}] 2484.638 58.16277 366.3188 70.68 16.42
tp @s[scores={cutSceneTimer=113}] 2484.629 58.15994 366.322 70.68 16.42
tp @s[scores={cutSceneTimer=114}] 2484.62 58.15712 366.3252 70.68 16.42
tp @s[scores={cutSceneTimer=115}] 2484.611 58.15429 366.3283 70.68 16.42
tp @s[scores={cutSceneTimer=116}] 2484.602 58.15146 366.3315 70.68 16.42
tp @s[scores={cutSceneTimer=117}] 2484.593 58.14864 366.3347 70.68 16.42
tp @s[scores={cutSceneTimer=118}] 2484.584 58.14581 366.3379 70.68 16.42
tp @s[scores={cutSceneTimer=119}] 2484.575 58.14298 366.341 70.68 16.42
tp @s[scores={cutSceneTimer=120}] 2484.566 58.14016 366.3442 70.68 16.42
tp @s[scores={cutSceneTimer=121}] 2484.557 58.13733 366.3474 70.68 16.42
tp @s[scores={cutSceneTimer=122}] 2484.548 58.1345 366.3506 70.68 16.42
tp @s[scores={cutSceneTimer=123}] 2484.539 58.13168 366.3537 70.68 16.42
tp @s[scores={cutSceneTimer=124}] 2484.53 58.12885 366.3569 70.68 16.42
tp @s[scores={cutSceneTimer=125}] 2484.521 58.12602 366.3601 70.68 16.42
tp @s[scores={cutSceneTimer=126}] 2484.511 58.1232 366.3633 70.68 16.42
tp @s[scores={cutSceneTimer=127}] 2484.502 58.12037 366.3664 70.68 16.42
tp @s[scores={cutSceneTimer=128}] 2484.493 58.11754 366.3696 70.68 16.42
tp @s[scores={cutSceneTimer=129}] 2484.484 58.11472 366.3728 70.68 16.42
tp @s[scores={cutSceneTimer=130}] 2484.475 58.11189 366.3759 70.68 16.42
tp @s[scores={cutSceneTimer=131}] 2484.466 58.10906 366.3791 70.68 16.42
tp @s[scores={cutSceneTimer=132}] 2484.457 58.10624 366.3823 70.68 16.42
tp @s[scores={cutSceneTimer=133}] 2484.448 58.10341 366.3855 70.68 16.42
tp @s[scores={cutSceneTimer=134}] 2484.439 58.10058 366.3886 70.68 16.42
tp @s[scores={cutSceneTimer=135}] 2484.43 58.09776 366.3918 70.68 16.42
tp @s[scores={cutSceneTimer=136}] 2484.421 58.09493 366.395 70.68 16.42
tp @s[scores={cutSceneTimer=137}] 2484.412 58.0921 366.3982 70.68 16.42
tp @s[scores={cutSceneTimer=138}] 2484.403 58.08928 366.4013 70.68 16.42
tp @s[scores={cutSceneTimer=139}] 2484.394 58.08645 366.4045 70.68 16.42
tp @s[scores={cutSceneTimer=140}] 2484.385 58.08362 366.4077 70.68 16.42
tp @s[scores={cutSceneTimer=141}] 2484.376 58.0808 366.4109 70.68 16.42
tp @s[scores={cutSceneTimer=142}] 2484.367 58.07797 366.414 70.68 16.42
tp @s[scores={cutSceneTimer=143}] 2484.358 58.07514 366.4172 70.68 16.42
tp @s[scores={cutSceneTimer=144}] 2484.349 58.07232 366.4204 70.68 16.42
tp @s[scores={cutSceneTimer=145}] 2484.34 58.06949 366.4236 70.68 16.42
tp @s[scores={cutSceneTimer=146}] 2484.331 58.06666 366.4267 70.68 16.42
tp @s[scores={cutSceneTimer=147}] 2484.322 58.06384 366.4299 70.68 16.42
tp @s[scores={cutSceneTimer=148}] 2484.313 58.06101 366.4331 70.68 16.42
tp @s[scores={cutSceneTimer=149}] 2484.304 58.05818 366.4362 70.68 16.42
tp @s[scores={cutSceneTimer=150}] 2484.295 58.05536 366.4394 70.68 16.42
tp @s[scores={cutSceneTimer=151}] 2484.286 58.05253 366.4426 70.68 16.42
tp @s[scores={cutSceneTimer=152}] 2484.277 58.0497 366.4458 70.68 16.42
tp @s[scores={cutSceneTimer=153}] 2484.268 58.04688 366.4489 70.68 16.42
tp @s[scores={cutSceneTimer=154}] 2484.259 58.04405 366.4521 70.68 16.42
tp @s[scores={cutSceneTimer=155}] 2484.25 58.04122 366.4553 70.68 16.42
tp @s[scores={cutSceneTimer=156}] 2484.24 58.03839 366.4585 70.68 16.42
tp @s[scores={cutSceneTimer=157}] 2484.231 58.03557 366.4616 70.68 16.42
tp @s[scores={cutSceneTimer=158}] 2484.222 58.03274 366.4648 70.68 16.42
tp @s[scores={cutSceneTimer=159}] 2484.213 58.02991 366.468 70.68 16.42
tp @s[scores={cutSceneTimer=160}] 2484.204 58.02709 366.4712 70.68 16.42
tp @s[scores={cutSceneTimer=161}] 2484.195 58.02426 366.4743 70.68 16.42
tp @s[scores={cutSceneTimer=162}] 2484.186 58.02143 366.4775 70.68 16.42
tp @s[scores={cutSceneTimer=163}] 2484.177 58.01861 366.4807 70.68 16.42
tp @s[scores={cutSceneTimer=164}] 2484.168 58.01578 366.4839 70.68 16.42
tp @s[scores={cutSceneTimer=165}] 2484.159 58.01295 366.487 70.68 16.42
tp @s[scores={cutSceneTimer=166}] 2484.15 58.01013 366.4902 70.68 16.42
tp @s[scores={cutSceneTimer=167}] 2484.141 58.0073 366.4934 70.68 16.42
tp @s[scores={cutSceneTimer=168}] 2484.132 58.00447 366.4966 70.68 16.42
tp @s[scores={cutSceneTimer=169}] 2484.123 58.00165 366.4997 70.68 16.42
tp @s[scores={cutSceneTimer=170}] 2484.114 57.99882 366.5029 70.68 16.42
tp @s[scores={cutSceneTimer=171}] 2484.105 57.99599 366.5061 70.68 16.42
tp @s[scores={cutSceneTimer=172}] 2484.096 57.99317 366.5092 70.68 16.42
tp @s[scores={cutSceneTimer=173}] 2484.087 57.99034 366.5124 70.68 16.42
tp @s[scores={cutSceneTimer=174}] 2484.078 57.98751 366.5156 70.68 16.42
tp @s[scores={cutSceneTimer=175}] 2484.069 57.98469 366.5188 70.68 16.42
tp @s[scores={cutSceneTimer=176}] 2484.06 57.98186 366.5219 70.68 16.42
tp @s[scores={cutSceneTimer=177}] 2484.051 57.97903 366.5251 70.68 16.42
tp @s[scores={cutSceneTimer=178}] 2484.042 57.97621 366.5283 70.68 16.42
tp @s[scores={cutSceneTimer=179}] 2484.033 57.97338 366.5315 70.68 16.42
tp @s[scores={cutSceneTimer=180}] 2484.024 57.97055 366.5346 70.68 16.42
tp @s[scores={cutSceneTimer=181}] 2484.015 57.96773 366.5378 70.68 16.42
tp @s[scores={cutSceneTimer=182}] 2484.006 57.9649 366.541 70.68 16.42
tp @s[scores={cutSceneTimer=183}] 2483.997 57.96207 366.5442 70.68 16.42
tp @s[scores={cutSceneTimer=184}] 2483.988 57.95925 366.5473 70.68 16.42
tp @s[scores={cutSceneTimer=185}] 2483.979 57.95642 366.5505 70.68 16.42
tp @s[scores={cutSceneTimer=186}] 2483.969 57.95359 366.5537 70.68 16.42
tp @s[scores={cutSceneTimer=187}] 2483.96 57.95077 366.5569 70.68 16.42
tp @s[scores={cutSceneTimer=188}] 2483.951 57.94794 366.56 70.68 16.42
tp @s[scores={cutSceneTimer=189}] 2483.942 57.94511 366.5632 70.68 16.42
tp @s[scores={cutSceneTimer=190}] 2483.933 57.94229 366.5664 70.68 16.42
tp @s[scores={cutSceneTimer=191}] 2483.924 57.93946 366.5695 70.68 16.42
tp @s[scores={cutSceneTimer=192}] 2483.915 57.93663 366.5727 70.68 16.42
tp @s[scores={cutSceneTimer=193}] 2483.906 57.93381 366.5759 70.68 16.42
tp @s[scores={cutSceneTimer=194}] 2483.897 57.93098 366.5791 70.68 16.42
tp @s[scores={cutSceneTimer=195}] 2483.888 57.92815 366.5822 70.68 16.42
tp @s[scores={cutSceneTimer=196}] 2483.879 57.92533 366.5854 70.68 16.42
tp @s[scores={cutSceneTimer=197}] 2483.87 57.9225 366.5886 70.68 16.42
tp @s[scores={cutSceneTimer=198}] 2483.861 57.91967 366.5918 70.68 16.42
tp @s[scores={cutSceneTimer=199}] 2483.852 57.91685 366.5949 70.68 16.42
tp @s[scores={cutSceneTimer=200..210}] 2483.843 57.91402 366.5981 70.68 16.42
execute as @s[scores={cutSceneTimer=180}] run function hp:cutscenes/fade_in

# execute as @s[scores={cutSceneTimer=200}] run setblock 2478 58 368 minecraft:nether_wart[age=0]
execute as @s[scores={cutSceneTimer=200}] run particle minecraft:poof 2478 58 368 0.3 1 0.3 0.075 300
execute as @s[scores={cutSceneTimer=200}] run data merge entity 855784f9-b30a-4438-9c5c-47807534ba42 {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={cutSceneTimer=201}] run tp 855784f9-b30a-4438-9c5c-47807534ba42 2478 57.08 368 180 0
execute as @s[scores={cutSceneTimer=202}] run data merge entity 855784f9-b30a-4438-9c5c-47807534ba42 {ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1387}}]}


execute as @s[scores={cutSceneTimer=180}] run title @s times 15 35 15
execute as @s[scores={cutSceneTimer=200}] run title @s subtitle ["",{"text":"Министерство Магии","bold":true,"color":"gold"}]
execute as @s[scores={cutSceneTimer=200}] run title @s title {"text":"Путешествие в","color":"gray"}

execute as @s[scores={cutSceneTimer=260}] run function hp:cutscenes/fade_out


execute if entity 774ed417-669f-40ee-b32d-f91d65c7bb8e as @s[scores={cutSceneTimer=211..520}] run tp @s 9844.66 124.86 10213.67 facing entity 774ed417-669f-40ee-b32d-f91d65c7bb8e
execute unless entity 774ed417-669f-40ee-b32d-f91d65c7bb8e as @s[scores={cutSceneTimer=211..520}] run tp @s 9844.66 124.86 10213.67

execute as @s[scores={cutSceneTimer=261..485}] as 774ed417-669f-40ee-b32d-f91d65c7bb8e at @s run tp @s ~ ~-.075 ~


execute as @s[scores={cutSceneTimer=50..200}] as 855784f9-b30a-4438-9c5c-47807534ba42 at @s run tp @s ~ ~-.02 ~

execute as @s[scores={cutSceneTimer=500}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=520}] run tp @s 9847.92 122.00 10207.48 -151.28 1.11
execute as @s[scores={cutSceneTimer=520}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=520}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=520}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=520}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=540}] run scoreboard players set ministryPhoneBoothCutsceneIsGoing global 0
execute as @s[scores={cutSceneTimer=540}] run scoreboard players set 774ed417-669f-40ee-b32d-f91d65c7bb8e animState 224
execute as @s[scores={cutSceneTimer=540}] run function hp:cutscenes/exit_cutscene

# /tp 774ed417-669f-40ee-b32d-f91d65c7bb8e 9850 139 10205