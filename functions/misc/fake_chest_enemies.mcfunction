# Pixie
execute as @s[tag=pixies] at @s positioned ^ ^.2 ^.2 run function hp:creatures/pixie_gnome/summon_pixie
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.05d,1.0d,0.05d]}
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned

execute as @s[tag=pixies] at @s positioned ^.1 ^.2 ^.1 run function hp:creatures/pixie_gnome/summon_pixie
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.01d,0.9d,-0.02d]}
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned

execute as @s[tag=pixies] at @s positioned ^-.1 ^.2 ^.1 run function hp:creatures/pixie_gnome/summon_pixie
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.02d,1.1d,0.01d]}
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned

execute as @s[tag=pixies] at @s positioned ^ ^.2 ^ run function hp:creatures/pixie_gnome/summon_pixie
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.01d,1d,-0.01d]}
execute as @s[tag=pixies] as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned


# Poltergeist
execute as @s[tag=poltergeists] at @s positioned ^ ^.2 ^.2 run function hp:creatures/poltergeist/summon_poltergeist
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.05d,0.2d,0.05d]}
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run tag @s remove poltergeistCreatureIsBeingSummoned

execute as @s[tag=poltergeists] at @s positioned ^.1 ^.2 ^.1 run function hp:creatures/poltergeist/summon_poltergeist
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.01d,0.15d,-0.02d]}
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run tag @s remove poltergeistCreatureIsBeingSummoned

execute as @s[tag=poltergeists] at @s positioned ^-.1 ^.2 ^.1 run function hp:creatures/poltergeist/summon_poltergeist
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.02d,0.125d,0.01d]}
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run tag @s remove poltergeistCreatureIsBeingSummoned

execute as @s[tag=poltergeists] at @s positioned ^ ^.2 ^ run function hp:creatures/poltergeist/summon_poltergeist
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.01d,0.125d,-0.01d]}
execute as @s[tag=poltergeists] as @e[tag=poltergeistCreatureIsBeingSummoned] run tag @s remove poltergeistCreatureIsBeingSummoned

# Monster Books
execute as @s[tag=monsterBooks] at @s positioned ^ ^.2 ^.2 run function hp:creatures/monster_book/summon_monster_book
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.18d,0.5d,-0.15d]}
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute as @s[tag=monsterBooks] at @s positioned ^.1 ^.2 ^.1 run function hp:creatures/monster_book/summon_monster_book
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.14d,0.3d,0.12d]}
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute as @s[tag=monsterBooks] at @s positioned ^-.1 ^.2 ^.1 run function hp:creatures/monster_book/summon_monster_book
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.17d,0.4d,-0.14d]}
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute as @s[tag=monsterBooks] at @s positioned ^ ^.2 ^ run function hp:creatures/monster_book/summon_monster_book
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run data merge entity @s {Motion:[-0.15d,0.325d,-0.18d]}
execute as @s[tag=monsterBooks] as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned