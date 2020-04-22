# Entities are grouped togehter by proximity and when they are not visible they are killed. When they are visible again they get summoned back in. This helps boost performance a great deal by limiting the number of entities loaded at any given time.

# 2nd Hand Books
execute if score hogsmeadeSecondHandBooksIsCulled global matches 1 if entity @p[tag=!cullAll,x=5361,y=99,z=2422,dx=40,dy=48,dz=43] run function hp:entity_culling/hogsmeade/2nd_hand_books/2nd_hand_books_set
execute if score hogsmeadeSecondHandBooksIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5361,y=99,z=2422,dx=40,dy=48,dz=43] run function hp:entity_culling/hogsmeade/2nd_hand_books/2nd_hand_books_remove

# 2nd Hand Brooms
execute if score hogsmeadeSecondHandBroomsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5335,y=96,z=2419,dx=20,dy=62,dz=44] run function hp:entity_culling/hogsmeade/2nd_hand_brooms/2nd_hand_brooms_set
execute if score hogsmeadeSecondHandBroomsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5335,y=96,z=2419,dx=20,dy=62,dz=44] run function hp:entity_culling/hogsmeade/2nd_hand_brooms/2nd_hand_brooms_remove

# Ceridwens Cauldrons
execute if score ceridwensCauldronsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5207,y=89,z=2478,dx=22,dy=42,dz=33] run function hp:entity_culling/hogsmeade/ceridwens_cauldrons/ceridwens_cauldrons_set
execute if score ceridwensCauldronsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5207,y=89,z=2478,dx=22,dy=42,dz=33] run function hp:entity_culling/hogsmeade/ceridwens_cauldrons/ceridwens_cauldrons_remove

# Dervish and Banges
execute if score dervishAndBangesIsCulled global matches 1 if entity @p[tag=!cullAll,x=5189,y=92,z=2495,dx=36,dy=50,dz=49] run function hp:entity_culling/hogsmeade/dervish_and_banges/dervish_and_banges_set
execute if score dervishAndBangesIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5189,y=92,z=2495,dx=36,dy=50,dz=49] run function hp:entity_culling/hogsmeade/dervish_and_banges/dervish_and_banges_remove

# Flying Apron
execute if score flyingApronIsCulled global matches 1 if entity @p[tag=!cullAll,x=5351,y=102,z=2499,dx=39,dy=38,dz=36] run function hp:entity_culling/hogsmeade/flying_apron/flying_apron_set
execute if score flyingApronIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5351,y=102,z=2499,dx=39,dy=38,dz=36] run function hp:entity_culling/hogsmeade/flying_apron/flying_apron_remove

# Gladrags Wizard Wear
execute if score gladragsWizardWearIsCulled global matches 1 if entity @p[tag=!cullAll,x=5257,y=94,z=2488,dx=24,dy=44,dz=46] run function hp:entity_culling/hogsmeade/gladrags_wizard_wear/gladrags_wizard_wear_set
execute if score gladragsWizardWearIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5257,y=94,z=2488,dx=24,dy=44,dz=46] run function hp:entity_culling/hogsmeade/gladrags_wizard_wear/gladrags_wizard_wear_remove

# Глобус Мунди
execute if score globusMundiIsCulled global matches 1 if entity @p[tag=!cullAll,x=5309,y=92,z=2416,dx=37,dy=64,dz=39] run function hp:entity_culling/hogsmeade/globus_mundi/globus_mundi_set
execute if score globusMundiIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5309,y=92,z=2416,dx=37,dy=64,dz=39] run function hp:entity_culling/hogsmeade/globus_mundi/globus_mundi_remove

# High Calibre Hats
execute if score highCalibreHatsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5316,y=101,z=2461,dx=22,dy=33,dz=35] run function hp:entity_culling/hogsmeade/high_calibre_hats/high_calibre_hats_set
execute if score highCalibreHatsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5316,y=101,z=2461,dx=22,dy=33,dz=35] run function hp:entity_culling/hogsmeade/high_calibre_hats/high_calibre_hats_remove

# Hogsmeade Barber
execute if score hogsmeadeBarberIsCulled global matches 1 if entity @p[tag=!cullAll,x=5329,y=101,z=2475,dx=34,dy=55,dz=42] run function hp:entity_culling/hogsmeade/hogsmeade_barber/hogsmeade_barber_set
execute if score hogsmeadeBarberIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5329,y=101,z=2475,dx=34,dy=55,dz=42] run function hp:entity_culling/hogsmeade/hogsmeade_barber/hogsmeade_barber_remove

# Hogsmeade Cafe
execute if score hogsmeadeCafeIsCulled global matches 1 if entity @p[tag=!cullAll,x=5276,y=94,z=2484,dx=32,dy=44,dz=41] run function hp:entity_culling/hogsmeade/hogsmeade_cafe/hogsmeade_cafe_set
execute if score hogsmeadeCafeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5276,y=94,z=2484,dx=32,dy=44,dz=41] run function hp:entity_culling/hogsmeade/hogsmeade_cafe/hogsmeade_cafe_remove

# Hogsmeade Gallery
execute if score hogsmeadeGalleryIsCulled global matches 1 if entity @p[tag=!cullAll,x=5221,y=89,z=2480,dx=19,dy=40,dz=26] run function hp:entity_culling/hogsmeade/hogsmeade_gallery/hogsmeade_gallery_set
execute if score hogsmeadeGalleryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5221,y=89,z=2480,dx=19,dy=40,dz=26] run function hp:entity_culling/hogsmeade/hogsmeade_gallery/hogsmeade_gallery_remove

# Hogsmeade Obscurus Books
execute if score hogsmeadeObscurusBooksIsCulled global matches 1 if entity @p[tag=!cullAll,x=5302,y=99,z=2457,dx=31,dy=48,dz=44] run function hp:entity_culling/hogsmeade/hogsmeade_obscurus_books/hogsmeade_obscurus_books_set
execute if score hogsmeadeObscurusBooksIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5302,y=99,z=2457,dx=31,dy=48,dz=44] run function hp:entity_culling/hogsmeade/hogsmeade_obscurus_books/hogsmeade_obscurus_books_remove

# Hogsmeade 1
execute if score hogsmeade1IsCulled global matches 1 if entity @p[tag=!cullAll,x=5145,y=39,z=2380,dx=111,dy=142,dz=204] run function hp:entity_culling/hogsmeade/hogsmeade1/hogsmeade1_set
execute if score hogsmeade1IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5145,y=39,z=2380,dx=111,dy=142,dz=204] run function hp:entity_culling/hogsmeade/hogsmeade1/hogsmeade1_remove

# Hogsmeade 2
execute if score hogsmeade2IsCulled global matches 1 if entity @p[tag=!cullAll,x=5158,y=81,z=2485,dx=113,dy=84,dz=40] run function hp:entity_culling/hogsmeade/hogsmeade2/hogsmeade2_set
execute if score hogsmeade2IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5158,y=81,z=2485,dx=113,dy=84,dz=40] run function hp:entity_culling/hogsmeade/hogsmeade2/hogsmeade2_remove

# Hogsmeade 3 
execute if score hogsmeade3IsCulled global matches 1 if entity @p[tag=!cullAll,x=5172,y=81,z=2478,dx=165,dy=77,dz=43] run function hp:entity_culling/hogsmeade/hogsmeade3/hogsmeade3_set
execute if score hogsmeade3IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5172,y=81,z=2478,dx=165,dy=77,dz=43] run function hp:entity_culling/hogsmeade/hogsmeade3/hogsmeade3_remove

# Hogsmeade 4
execute if score hogsmeade4IsCulled global matches 1 if entity @p[tag=!cullAll,x=5261,y=94,z=2465,dx=114,dy=70,dz=53] run function hp:entity_culling/hogsmeade/hogsmeade4/hogsmeade4_set
execute if score hogsmeade4IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5261,y=94,z=2465,dx=114,dy=70,dz=53] run function hp:entity_culling/hogsmeade/hogsmeade4/ghogsmeade4_remove

# Hogsmeade 5
execute if score hogsmeade5IsCulled global matches 1 if entity @p[tag=!cullAll,x=5298,y=98,z=2442,dx=132,dy=65,dz=60] run function hp:entity_culling/hogsmeade/hogsmeade5/hogsmeade5_set
execute if score hogsmeade5IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5298,y=98,z=2442,dx=132,dy=65,dz=60] run function hp:entity_culling/hogsmeade/hogsmeade5/hogsmeade5_remove

# Hogsmeade 6
execute if score hogsmeade6IsCulled global matches 1 if entity @p[tag=!cullAll,x=5324,y=97,z=2434,dx=142,dy=75,dz=72] run function hp:entity_culling/hogsmeade/hogsmeade6/hogsmeade6_set
execute if score hogsmeade6IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5324,y=97,z=2434,dx=142,dy=75,dz=72] run function hp:entity_culling/hogsmeade/hogsmeade6/hogsmeade6_remove

# Hogsmeade 7
execute if score hogsmeade7IsCulled global matches 1 if entity @p[tag=!cullAll,x=5381,y=97,z=2426,dx=135,dy=67,dz=81] run function hp:entity_culling/hogsmeade/hogsmeade7/hogsmeade7_set
execute if score hogsmeade7IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5381,y=97,z=2426,dx=135,dy=67,dz=81] run function hp:entity_culling/hogsmeade/hogsmeade7/hogsmeade7_remove

# Hogsmeade 8
execute if score hogsmeade8IsCulled global matches 1 if entity @p[tag=!cullAll,x=5367,y=90,z=2380,dx=93,dy=67,dz=75] run function hp:entity_culling/hogsmeade/hogsmeade8/hogsmeade8_set
execute if score hogsmeade8IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5367,y=90,z=2380,dx=93,dy=67,dz=75] run function hp:entity_culling/hogsmeade/hogsmeade8/hogsmeade8_remove

# Hogsmeade 9
execute if score hogsmeade9IsCulled global matches 1 if entity @p[tag=!cullAll,x=5291,y=97,z=2429,dx=104,dy=53,dz=39] run function hp:entity_culling/hogsmeade/hogsmeade9/hogsmeade9_set
execute if score hogsmeade9IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5291,y=97,z=2429,dx=104,dy=53,dz=39] run function hp:entity_culling/hogsmeade/hogsmeade9/hogsmeade9_remove

# Hogsmeade 10
execute if score hogsmeade10IsCulled global matches 1 if entity @p[tag=!cullAll,x=5220,y=98,z=2412,dx=142,dy=78,dz=56] run function hp:entity_culling/hogsmeade/hogsmeade10/hogsmeade10_set
execute if score hogsmeade10IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5220,y=98,z=2412,dx=142,dy=78,dz=56] run function hp:entity_culling/hogsmeade/hogsmeade10/hogsmeade10_remove

# Hogsmeade 11
execute if score hogsmeade11IsCulled global matches 1 if entity @p[tag=!cullAll,x=5280,y=91,z=2474,dx=60,dy=65,dz=146] run function hp:entity_culling/hogsmeade/hogsmeade11/hogsmeade11_set
execute if score hogsmeade11IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5280,y=91,z=2474,dx=60,dy=65,dz=146] run function hp:entity_culling/hogsmeade/hogsmeade11/hogsmeade11_remove
 
# Hogsmeade 12
execute if score hogsmeade12IsCulled global matches 1 if entity @p[tag=!cullAll,x=5330,y=98,z=2478,dx=145,dy=57,dz=120] run function hp:entity_culling/hogsmeade/hogsmeade12/hogsmeade12_set
execute if score hogsmeade12IsCulled global matches 0 unless entity @p[tag=!cullAll,x=5330,y=98,z=2478,dx=145,dy=57,dz=120] run function hp:entity_culling/hogsmeade/hogsmeade12/hogsmeade12_remove

# Honeydukes
execute if score honeydukesIsCulled global matches 1 if entity @p[tag=!cullAll,x=5399,y=79,z=2462,dx=49,dy=82,dz=49] run function hp:entity_culling/hogsmeade/honeydukes/honeydukes_set
execute if score honeydukesIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5399,y=79,z=2462,dx=49,dy=82,dz=49] run function hp:entity_culling/hogsmeade/honeydukes/honeydukes_remove

# J Pippins 
execute if score jPippinsPotionsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5269,y=95,z=2461,dx=38,dy=41,dz=48] run function hp:entity_culling/hogsmeade/j_pippins/j_pippins_set
execute if score jPippinsPotionsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5269,y=95,z=2461,dx=38,dy=41,dz=48] run function hp:entity_culling/hogsmeade/j_pippins/j_pippins_remove

# Мадам Паддифутs 
execute if score madamPuddifootsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5377,y=98,z=2418,dx=37,dy=54,dz=49] run function hp:entity_culling/hogsmeade/madam_puddifoots/madam_puddifoots_set
execute if score madamPuddifootsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5377,y=98,z=2418,dx=37,dy=54,dz=49] run function hp:entity_culling/hogsmeade/madam_puddifoots/madam_puddifoots_remove

# Magic Neep
execute if score magicNeepIsCulled global matches 1 if entity @p[tag=!cullAll,x=5245,y=93,z=2467,dx=124,dy=54,dz=38] run function hp:entity_culling/hogsmeade/magic_neep/magic_neep_set
execute if score magicNeepIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5245,y=93,z=2467,dx=124,dy=54,dz=38] run function hp:entity_culling/hogsmeade/magic_neep/magic_neep_remove

# Magical Menagerie
execute if score magicalMenagerieHogsmeadeIsCulled global matches 1 if entity @p[tag=!cullAll,x=5294,y=97,z=2481,dx=40,dy=60,dz=36] run function hp:entity_culling/hogsmeade/magical_menagerie_hogsmeade/magical_menagerie_hogsmeade_set
execute if score magicalMenagerieHogsmeadeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5294,y=97,z=2481,dx=40,dy=60,dz=36] run function hp:entity_culling/hogsmeade/magical_menagerie_hogsmeade/magical_menagerie_hogsmeade_remove

# Post Office
execute if score postOfficeIsCulled global matches 1 if entity @p[tag=!cullAll,x=5339,y=101,z=2450,dx=60,dy=59,dz=36] run function hp:entity_culling/hogsmeade/post_office/post_office_set
execute if score postOfficeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5339,y=101,z=2450,dx=60,dy=59,dz=36] run function hp:entity_culling/hogsmeade/post_office/post_office_remove

# PPP Hogsmeade
execute if score pppHogsmeadeIsCulled global matches 1 if entity @p[tag=!cullAll,x=5351,y=100,z=2477,dx=28,dy=56,dz=33] run function hp:entity_culling/hogsmeade/ppp_hogsmeade/ppp_hogsmeade_set
execute if score pppHogsmeadeIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5351,y=100,z=2477,dx=28,dy=56,dz=33] run function hp:entity_culling/hogsmeade/ppp_hogsmeade/ppp_hogsmeade_remove

# Schrivenshaft
execute if score schrivenshaftIsCulled global matches 1 if entity @p[tag=!cullAll,x=5230,y=94,z=2466,dx=27,dy=40,dz=41] run function hp:entity_culling/hogsmeade/schrivenshaft/schrivenshaft_set
execute if score schrivenshaftIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5230,y=94,z=2466,dx=27,dy=40,dz=41] run function hp:entity_culling/hogsmeade/schrivenshaft/schrivenshaft_remove

# Slug and Jiggers
execute if score slugAndJiggersIsCulled global matches 1 if entity @p[tag=!cullAll,x=5211,y=88,z=2487,dx=20,dy=41,dz=40] run function hp:entity_culling/hogsmeade/slug_and_jiggers/slug_and_jiggers_set
execute if score slugAndJiggersIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5211,y=88,z=2487,dx=20,dy=41,dz=40] run function hp:entity_culling/hogsmeade/slug_and_jiggers/slug_and_jiggers_remove

# Sporting Needs
execute if score sportingNeedsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5288,y=95,z=2462,dx=25,dy=50,dz=35] run function hp:entity_culling/hogsmeade/sporting_needs/sporting_needs_set
execute if score sportingNeedsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5288,y=95,z=2462,dx=25,dy=50,dz=35] run function hp:entity_culling/hogsmeade/sporting_needs/sporting_needs_remove

# Three Broomsticks Inn
execute if score threeBroomsticksInnIsCulled global matches 1 if entity @p[tag=!cullAll,x=5355,y=100,z=2471,dx=57,dy=58,dz=45] run function hp:entity_culling/hogsmeade/three_broomsticks_inn/three_broomsticks_inn_set
execute if score threeBroomsticksInnIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5355,y=100,z=2471,dx=57,dy=58,dz=45] run function hp:entity_culling/hogsmeade/three_broomsticks_inn/three_broomsticks_inn_remove

# Tomes and Scrolls
execute if score tomesAndScrollsIsCulled global matches 1 if entity @p[tag=!cullAll,x=5249,y=94,z=2487,dx=29,dy=48,dz=53] run function hp:entity_culling/hogsmeade/tomes_and_scrolls/tomes_and_scrolls_set
execute if score tomesAndScrollsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5249,y=94,z=2487,dx=29,dy=48,dz=53] run function hp:entity_culling/hogsmeade/tomes_and_scrolls/tomes_and_scrolls_remove

# Wizarding Wireless Network
execute if score wizardingWirelessNetworkIsCulled global matches 1 if entity @p[tag=!cullAll,x=5264,y=97,z=2464,dx=27,dy=40,dz=41] run function hp:entity_culling/hogsmeade/wizarding_wireless_network/wizarding_wireless_network_set
execute if score wizardingWirelessNetworkIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5264,y=97,z=2464,dx=27,dy=40,dz=41] run function hp:entity_culling/hogsmeade/wizarding_wireless_network/wizarding_wireless_network_remove

# Zonkos
execute if score zonkosIsCulled global matches 1 if entity @p[tag=!cullAll,x=5427,y=95,z=2455,dx=40,dy=58,dz=41] run function hp:entity_culling/hogsmeade/zonkos/zonkos_set
execute if score zonkosIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5427,y=95,z=2455,dx=40,dy=58,dz=41] run function hp:entity_culling/hogsmeade/zonkos/zonkos_remove

# Daily Prophet 
execute if score hogsmeadeDailyPophetIsCulled global matches 1 if entity @p[tag=!cullAll,x=5318,y=99,z=2441,dx=32,dy=67,dz=29] run function hp:entity_culling/hogsmeade/daily_prophet_hogsmeade/daily_prophet_hogsmeade_set
execute if score hogsmeadeDailyPophetIsCulled global matches 0 unless entity @p[tag=!cullAll,x=5318,y=99,z=2441,dx=32,dy=67,dz=29] run function hp:entity_culling/hogsmeade/daily_prophet_hogsmeade/daily_prophet_hogsmeade_remove