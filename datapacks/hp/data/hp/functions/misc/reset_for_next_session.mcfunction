execute as @s[tag=pickUp] run function hp:misc/reset_pickup
execute as @s[tag=chest,tag=!removeContainerIfEmpty,tag=!isDroppedItem] run function hp:inventory/reset_restore_chest_items
execute as @s[tag=keyLockedDoor] at @s run function hp:misc/close_door
execute as @s[tag=bombarda_blockade] at @s run function hp:misc/reset_bombarda_blockade
execute as @s[tag=noticeBoard] at @s run function hp:misc/reset_notice_board
execute as @s[tag=star] at @s run function hp:misc/reset_star
execute as @s[tag=lever] at @s run function hp:misc/reset_lever
execute as @s[tag=bookshelf_door] at @s run function hp:misc/reset_book_shelf
execute as @s[tag=wingardiumSwitch] at @s run function hp:misc/reset_wingardium_switch
execute as @s[tag=magneticObject] at @s run function hp:misc/reset_magnetic_object
execute as @s[tag=magnetic] at @s run function hp:misc/reset_magnet
execute as @s[tag=turningPillar] at @s run function hp:misc/reset_rotating_pillar
execute as @s[tag=restrictedSectionLock] at @s run function hp:misc/reset_quest_lock
execute as @s[tag=fakeChest] at @s run function hp:misc/reset_fake_chest