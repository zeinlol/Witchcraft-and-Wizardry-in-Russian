# Draw hotbar mana

execute as @s[tag=showMana,scores={manaAnimation=..9}] run scoreboard players add @s manaAnimation 1
execute as @s[tag=!showMana,scores={manaAnimation=1..}] run scoreboard players remove @s manaAnimation 1

execute if score @s manaAmount < @s maxManaAmount run scoreboard players add @s manaAmount 10
execute if score @s manaAmount < @s maxManaAmount run tag @s add showMana
execute if score @s manaAmount >= @s maxManaAmount run tag @s remove showMana
execute if score @s manaAmount > @s maxManaAmount run scoreboard players operation @s manaAmount = @s maxManaAmount

# Mana enter / exit
replaceitem entity @s[scores={manaAnimation=1}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:8,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=2}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:7,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=3}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:6,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=4}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:5,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=5}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:4,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=6}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:3,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=7}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:2,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=8}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=9}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:0,Unbreakable:1b,qDetect:1b}


scoreboard players operation @s manaDisplay = @s manaAmount
scoreboard players set @s tmp 1000
scoreboard players operation @s manaDisplay *= @s tmp

scoreboard players operation @s manaDisplay /= @s maxManaAmount

# Delayed display thing so it looks a bit nicer.
execute as @s[scores={manaAnimation=10}] run scoreboard players operation @s tmp = @s manaDelayDisplay
execute as @s[scores={manaAnimation=10}] run scoreboard players operation @s tmp -= @s manaDisplay
execute as @s[scores={manaAnimation=10}] run scoreboard players set @s tmp2 3
execute as @s[scores={manaAnimation=10}] run scoreboard players operation @s tmp /= @s tmp2
execute as @s[scores={manaAnimation=10}] run scoreboard players operation @s manaDelayDisplay -= @s tmp



# Mana amount
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=0..25}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:10,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=26..50}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:11,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=51..75}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:12,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=76..100}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:13,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=101..125}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:14,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=126..150}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:15,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=151..175}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:16,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=176..200}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:17,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=201..225}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:18,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=225..250}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:19,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=251..275}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:20,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=276..300}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:21,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=301..325}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:22,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=326..350}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:23,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=351..375}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:24,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=376..400}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:25,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=401..425}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:26,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=426..450}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:27,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=451..475}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:28,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=476..500}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:29,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=501..525}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:30,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=526..550}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:31,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=551..575}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:32,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=576..600}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:33,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=601..625}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:34,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=626..650}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:35,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=651..675}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:36,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=676..700}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:37,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=701..725}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:38,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=726..750}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:39,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=751..775}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:40,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=776..800}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:41,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=801..825}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:42,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=826..850}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:43,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=851..875}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:44,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=876..900}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:45,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=901..925}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:46,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=926..950}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:47,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=951..975}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:48,Unbreakable:1b,qDetect:1b}
replaceitem entity @s[scores={manaAnimation=10,manaDelayDisplay=976..1000}] hotbar.5 minecraft:wooden_hoe{display:{Name:"{\"text\":\"Инвентарь\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:49,Unbreakable:1b,qDetect:1b}