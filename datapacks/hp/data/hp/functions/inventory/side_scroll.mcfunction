# Scroll Left
execute as @s[tag=hasChangedSlotDown,tag=!hasScrolled] run function hp:inventory/inventory_scroll_left
execute as @s[distance=0.001..,tag=!hasScrolled] at @s as @e[type=area_effect_cloud,tag=invSelect,limit=1,sort=nearest] if entity @s[tag=selectLeft] as @p[tag=activePlayer] run function hp:inventory/inventory_scroll_left

# Scroll Right
execute as @s[tag=hasChangedSlotUp,tag=!hasScrolled] run function hp:inventory/inventory_scroll_right
execute as @s[distance=0.001..,tag=!hasScrolled] at @s as @e[type=area_effect_cloud,tag=invSelect,limit=1,sort=nearest] if entity @s[tag=selectRight] as @p[tag=activePlayer] run function hp:inventory/inventory_scroll_right