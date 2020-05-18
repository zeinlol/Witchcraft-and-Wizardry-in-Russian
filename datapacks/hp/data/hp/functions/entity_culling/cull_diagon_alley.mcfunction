# Entities are grouped togehter by proximity and when they are not visible they are killed. When they are visible again they get summoned back in. This helps boost performance a great deal by limiting the number of entities loaded at any given time.

# Дырявый Котёл
execute if score leakyCauldronIsCulled global matches 1 if entity @p[tag=!cullAll,x=2799,y=52,z=735,dx=102,dy=60,dz=74] run function hp:entity_culling/diagon_alley/leaky_cauldron/leaky_cauldron_set
execute if score leakyCauldronIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2799,y=52,z=735,dx=102,dy=60,dz=74] run function hp:entity_culling/diagon_alley/leaky_cauldron/leaky_cauldron_remove

# 2nd Hand Brooms
execute if score 2ndHandBroomsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2836,y=44,z=944,dx=39,dy=33,dz=24] run function hp:entity_culling/diagon_alley/2nd_hand_brooms/2nd_hand_brooms_set
execute if score 2ndHandBroomsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2836,y=44,z=944,dx=39,dy=33,dz=24] run function hp:entity_culling/diagon_alley/2nd_hand_brooms/2nd_hand_brooms_remove

# Amanuensis Quills 
execute if score amanuensisQuillsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2831,y=44,z=903,dx=34,dy=28,dz=19] run function hp:entity_culling/diagon_alley/amanuensis_quills/amanuensis_quills_set
execute if score amanuensisQuillsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2831,y=44,z=903,dx=34,dy=28,dz=19] run function hp:entity_culling/diagon_alley/amanuensis_quills/amanuensis_quills_remove

# Apothecary 
execute if score apothecaryIsCulled global matches 1 if entity @p[tag=!cullAll,x=2807,y=47,z=894,dx=35,dy=28,dz=18] run function hp:entity_culling/diagon_alley/apothecary/apothecary_set
execute if score apothecaryIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2807,y=47,z=894,dx=35,dy=28,dz=18] run function hp:entity_culling/diagon_alley/apothecary/apothecary_remove

# Горбин и Бэркес 
execute if score borginAndBurkesIsCulled global matches 1 if entity @p[tag=!cullAll,x=2776,y=26,z=1009,dx=30,dy=41,dz=46] run function hp:entity_culling/diagon_alley/borgin_and_burkes/borgin_and_burkes_set
execute if score borginAndBurkesIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2776,y=26,z=1009,dx=30,dy=41,dz=46] run function hp:entity_culling/diagon_alley/borgin_and_burkes/borgin_and_burkes_remove

# Brews and Stews 
execute if score brewsAndStewsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2824,y=55,z=835,dx=33,dy=24,dz=18] run function hp:entity_culling/diagon_alley/brews_and_stews/brews_and_stews_set
execute if score brewsAndStewsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2824,y=55,z=835,dx=33,dy=24,dz=18] run function hp:entity_culling/diagon_alley/brews_and_stews/brews_and_stews_remove

# Broomstix 
execute if score broomstixIsCulled global matches 1 if entity @p[tag=!cullAll,x=2817,y=48,z=821,dx=42,dy=38,dz=21] run function hp:entity_culling/diagon_alley/broomstix/broomstix_set
execute if score broomstixIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2817,y=48,z=821,dx=42,dy=38,dz=21] run function hp:entity_culling/diagon_alley/broomstix/broomstix_remove

# 'Ежедневный Пророк' 
execute if score dailyProphetIsCulled global matches 1 if entity @p[tag=!cullAll,x=2856,y=43,z=1011,dx=49,dy=62,dz=50] run function hp:entity_culling/diagon_alley/daily_prophet/daily_prophet_set
execute if score dailyProphetIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2856,y=43,z=1011,dx=49,dy=62,dz=50] run function hp:entity_culling/diagon_alley/daily_prophet/daily_prophet_remove

# Diagon Alley 1
execute if score diagonAlley1IsCulled global matches 1 if entity @p[tag=!cullAll,x=2826,y=45,z=767,dx=110,dy=75,dz=181] run function hp:entity_culling/diagon_alley/diagon_alley_1/diagon_alley_1_set
execute if score diagonAlley1IsCulled global matches 0 unless entity @p[tag=!cullAll,x=2826,y=45,z=767,dx=110,dy=75,dz=181] run function hp:entity_culling/diagon_alley/diagon_alley_1/diagon_alley_1_remove

# Diagon Alley 2 
execute if score diagonAlley2IsCulled global matches 1 if entity @p[tag=!cullAll,x=2788,y=31,z=784,dx=122,dy=70,dz=181] run function hp:entity_culling/diagon_alley/diagon_alley_2/diagon_alley_2_set
execute if score diagonAlley2IsCulled global matches 0 unless entity @p[tag=!cullAll,x=2788,y=31,z=784,dx=122,dy=70,dz=181] run function hp:entity_culling/diagon_alley/diagon_alley_2/diagon_alley_2_remove

# Diagon Alley 3 
execute if score diagonAlley3IsCulled global matches 1 if entity @p[tag=!cullAll,x=2779,y=26,z=844,dx=103,dy=87,dz=191] run function hp:entity_culling/diagon_alley/diagon_alley_3/diagon_alley_3_set
execute if score diagonAlley3IsCulled global matches 0 unless entity @p[tag=!cullAll,x=2779,y=26,z=844,dx=103,dy=87,dz=191] run function hp:entity_culling/diagon_alley/diagon_alley_3/diagon_alley_3_remove

# Diagon Alley 4 
execute if score diagonAlley4IsCulled global matches 1 if entity @p[tag=!cullAll,x=2787,y=18,z=912,dx=130,dy=96,dz=143] run function hp:entity_culling/diagon_alley/diagon_alley_4/diagon_alley_4_set
execute if score diagonAlley4IsCulled global matches 0 unless entity @p[tag=!cullAll,x=2787,y=18,z=912,dx=130,dy=96,dz=143] run function hp:entity_culling/diagon_alley/diagon_alley_4/diagon_alley_4_remove

# Diagon Alley 5 
execute if score diagonAlley5IsCulled global matches 1 if entity @p[tag=!cullAll,x=2809,y=45,z=966,dx=101,dy=107,dz=110] run function hp:entity_culling/diagon_alley/diagon_alley_5/diagon_alley_5_set
execute if score diagonAlley5IsCulled global matches 0 unless entity @p[tag=!cullAll,x=2809,y=45,z=966,dx=101,dy=107,dz=110] run function hp:entity_culling/diagon_alley/diagon_alley_5/diagon_alley_5_remove

# Diagon Alley Barber 
execute if score diagonAlleyBarberIsCulled global matches 1 if entity @p[tag=!cullAll,x=2846,y=52,z=866,dx=24,dy=36,dz=15] run function hp:entity_culling/diagon_alley/diagon_alley_barber/diagon_alley_barber_set
execute if score diagonAlleyBarberIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2846,y=52,z=866,dx=24,dy=36,dz=15] run function hp:entity_culling/diagon_alley/diagon_alley_barber/diagon_alley_barber_remove

# Diagon Alley General Store 
execute if score diagonAlleyGeneralStoreIsCulled global matches 1 if entity @p[tag=!cullAll,x=2847,y=48,z=853,dx=26,dy=46,dz=19] run function hp:entity_culling/diagon_alley/diagon_alley_general_store/diagon_alley_general_store_set
execute if score diagonAlleyGeneralStoreIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2847,y=48,z=853,dx=26,dy=46,dz=19] run function hp:entity_culling/diagon_alley/diagon_alley_general_store/diagon_alley_general_store_remove

# Diagon Alley Vendor 
execute if score diagonAlleyVendorIsCulled global matches 1 if entity @p[tag=!cullAll,x=2846,y=51,z=878,dx=26,dy=42,dz=27] run function hp:entity_culling/diagon_alley/diagon_alley_vendor/diagon_alley_vendor_set
execute if score diagonAlleyVendorIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2846,y=51,z=878,dx=26,dy=42,dz=27] run function hp:entity_culling/diagon_alley/diagon_alley_vendor/diagon_alley_vendor_remove

# Eeylops 
execute if score eeylopsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2837,y=45,z=954,dx=40,dy=31,dz=22] run function hp:entity_culling/diagon_alley/eeylops/eeylops_set
execute if score eeylopsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2837,y=45,z=954,dx=40,dy=31,dz=22] run function hp:entity_culling/diagon_alley/eeylops/eeylops_remove

# Eliks Elixers 
execute if score eliksElixersIsCulled global matches 1 if entity @p[tag=!cullAll,x=2814,y=22,z=943,dx=34,dy=67,dz=26] run function hp:entity_culling/diagon_alley/eliks_elixers/eliks_elixers_set
execute if score eliksElixersIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2814,y=22,z=943,dx=34,dy=67,dz=26] run function hp:entity_culling/diagon_alley/eliks_elixers/eliks_elixers_remove

# Флориш и Блоттс 
execute if score flourishAndBlottsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2808,y=49,z=852,dx=50,dy=36,dz=31] run function hp:entity_culling/diagon_alley/flourish_and_blotts/flourish_and_blotts_set
execute if score flourishAndBlottsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2808,y=49,z=852,dx=50,dy=36,dz=31] run function hp:entity_culling/diagon_alley/flourish_and_blotts/flourish_and_blotts_remove

# Gringotts 
execute if score gringottsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2830,y=42,z=1007,dx=36,dy=45,dz=123] run function hp:entity_culling/diagon_alley/gringotts/gringotts_set
execute if score gringottsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2830,y=42,z=1007,dx=36,dy=45,dz=123] run function hp:entity_culling/diagon_alley/gringotts/gringotts_remove

# Knockturn Alley 
execute if score knockturnAlleyIsCulled global matches 1 if entity @p[tag=!cullAll,x=2735,y=14,z=963,dx=105,dy=89,dz=115] run function hp:entity_culling/diagon_alley/knockturn_alley/knockturn_alley_set
execute if score knockturnAlleyIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2735,y=14,z=963,dx=105,dy=89,dz=115] run function hp:entity_culling/diagon_alley/knockturn_alley/knockturn_alley_remove

# Knockturn Alley Inn 
execute if score knockturnAlleyInnIsCulled global matches 1 if entity @p[tag=!cullAll,x=2729,y=22,z=987,dx=33,dy=27,dz=37] run function hp:entity_culling/diagon_alley/knockturn_alley_inn/knockturn_alley_inn_set
execute if score knockturnAlleyInnIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2729,y=22,z=987,dx=33,dy=27,dz=37] run function hp:entity_culling/diagon_alley/knockturn_alley_inn/knockturn_alley_inn_remove

# Knockturn Alley Skeleton Store 
execute if score knockturnAlleySkeletonStoreIsCulled global matches 1 if entity @p[tag=!cullAll,x=2776,y=26,z=1000,dx=48,dy=21,dz=80] run function hp:entity_culling/diagon_alley/knockturn_alley_skeleton_store/knockturn_alley_skeleton_store_set
execute if score knockturnAlleySkeletonStoreIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2776,y=26,z=1000,dx=48,dy=21,dz=80] run function hp:entity_culling/diagon_alley/knockturn_alley_skeleton_store/knockturn_alley_skeleton_store_remove

# Мадам Малкинs 
execute if score madamMalkinsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2835,y=42,z=913,dx=42,dy=32,dz=31] run function hp:entity_culling/diagon_alley/madam_malkins/madam_malkins_set
execute if score madamMalkinsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2835,y=42,z=913,dx=42,dy=32,dz=31] run function hp:entity_culling/diagon_alley/madam_malkins/madam_malkins_remove
 
# Magical Menagerie 
execute if score magicalMenagerieIsCulled global matches 1 if entity @p[tag=!cullAll,x=2804,y=48,z=807,dx=57,dy=37,dz=21] run function hp:entity_culling/diagon_alley/magical_menagerie/magical_menagerie_set
execute if score magicalMenagerieIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2804,y=48,z=807,dx=57,dy=37,dz=21] run function hp:entity_culling/diagon_alley/magical_menagerie/magical_menagerie_remove

# Ministry Press 
execute if score ministryPressIsCulled global matches 1 if entity @p[tag=!cullAll,x=2837,y=55,z=792,dx=59,dy=43,dz=29] run function hp:entity_culling/diagon_alley/ministry_press/ministry_press_set
execute if score ministryPressIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2837,y=55,z=792,dx=59,dy=43,dz=29] run function hp:entity_culling/diagon_alley/ministry_press/ministry_press_remove

# Mulpepper 
execute if score mulpepperIsCulled global matches 1 if entity @p[tag=!cullAll,x=2834,y=43,z=966,dx=40,dy=37,dz=21] run function hp:entity_culling/diagon_alley/mulpepper/mulpepper_set
execute if score mulpepperIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2834,y=43,z=966,dx=40,dy=37,dz=21] run function hp:entity_culling/diagon_alley/mulpepper/mulpepper_remove

# Ollivanders 
execute if score ollivandersIsCulled global matches 1 if entity @p[tag=!cullAll,x=2791,y=28,z=972,dx=64,dy=55,dz=42] run function hp:entity_culling/diagon_alley/ollivanders/ollivanders_set
execute if score ollivandersIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2791,y=28,z=972,dx=64,dy=55,dz=42] run function hp:entity_culling/diagon_alley/ollivanders/ollivanders_remove

# Potage Cauldron Shop 
execute if score potageCauldronShopIsCulled global matches 1 if entity @p[tag=!cullAll,x=2840,y=44,z=980,dx=26,dy=43,dz=34] run function hp:entity_culling/diagon_alley/potage_cauldron_shop/potage_cauldron_shop_set
execute if score potageCauldronShopIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2840,y=44,z=980,dx=26,dy=43,dz=34] run function hp:entity_culling/diagon_alley/potage_cauldron_shop/potage_cauldron_shop_remove

# Ruined Store 
execute if score ruinedStoreIsCulled global matches 1 if entity @p[tag=!cullAll,x=2852,y=43,z=987,dx=29,dy=28,dz=39] run function hp:entity_culling/diagon_alley/ruined_store/ruined_store_set
execute if score ruinedStoreIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2852,y=43,z=987,dx=29,dy=28,dz=39] run function hp:entity_culling/diagon_alley/ruined_store/ruined_store_remove

# Slug and Jiggers 
execute if score slugAndJiggersIsCulled global matches 1 if entity @p[tag=!cullAll,x=2837,y=44,z=974,dx=35,dy=32,dz=22] run function hp:entity_culling/diagon_alley/slug_and_jiggers/slug_and_jiggers_set
execute if score slugAndJiggersIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2837,y=44,z=974,dx=35,dy=32,dz=22] run function hp:entity_culling/diagon_alley/slug_and_jiggers/slug_and_jiggers_remove

# Twilfit and Tattings 
execute if score twilfitAndTattingsIsCulled global matches 1 if entity @p[tag=!cullAll,x=2841,y=54,z=808,dx=35,dy=34,dz=32] run function hp:entity_culling/diagon_alley/twilfit_tattings/twilfit_tattings_set
execute if score twilfitAndTattingsIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2841,y=54,z=808,dx=35,dy=34,dz=32] run function hp:entity_culling/diagon_alley/twilfit_tattings/twilfit_tattings_remove

# Weasleys Wizarding Wheeses 
execute if score weasleysWizardingWheesesIsCulled global matches 1 if entity @p[tag=!cullAll,x=2792,y=44,z=900,dx=53,dy=50,dz=42] run function hp:entity_culling/diagon_alley/weasleys_wizarding_wheeses/weasleys_wizarding_wheeses_set
execute if score weasleysWizardingWheesesIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2792,y=44,z=900,dx=53,dy=50,dz=42] run function hp:entity_culling/diagon_alley/weasleys_wizarding_wheeses/weasleys_wizarding_wheeses_remove

# Wine Barrel Inn 
execute if score wineBarrelInnIsCulled global matches 1 if entity @p[tag=!cullAll,x=2867,y=39,z=981,dx=45,dy=48,dz=29] run function hp:entity_culling/diagon_alley/wine_barrel_inn/wine_barrel_inn_set
execute if score wineBarrelInnIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2867,y=39,z=981,dx=45,dy=48,dz=29] run function hp:entity_culling/diagon_alley/wine_barrel_inn/wine_barrel_inn_remove

# Wiseacres
execute if score wiseacresIsCulled global matches 1 if entity @p[tag=!cullAll,x=2823,y=43,z=977,dx=29,dy=29,dz=18] run function hp:entity_culling/diagon_alley/wiseacres/wiseacres_set
execute if score wiseacresIsCulled global matches 0 unless entity @p[tag=!cullAll,x=2823,y=43,z=977,dx=29,dy=29,dz=18] run function hp:entity_culling/diagon_alley/wiseacres/wiseacres_remove