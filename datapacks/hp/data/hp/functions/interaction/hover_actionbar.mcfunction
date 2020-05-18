# Conversation
execute if entity @s[tag=convNPC,tag=!scroll,tag=!clue,tag=!riddleLockedDoor,tag=!inConversationNPC] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!playingQuestAnim,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы начать диалог","color":"gold"}]
execute if entity @s[tag=convNPC,tag=!inConversationNPC] as @p[tag=activePlayer,tag=hasPressedF,tag=!playingQuestAnim,tag=!flyingBroom] run tag @s add startConversation
execute if entity @p[tag=activePlayer,tag=hasPressedF,tag=!playingQuestAnim] as @s[tag=convNPC,tag=!inConversationNPC,tag=!flyingBroom] run tag @s add startConversationNPC

# Chest or other inventory stuff
execute if entity @s[tag=chest] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы открыть","color":"gold"}]
execute if entity @s[tag=chest] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:inventory/open_chest

# Fake Chest
execute if entity @s[tag=fakeChest,tag=!burstOpen] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы открыть","color":"gold"}]
execute as @s[tag=fakeChest,tag=!burstOpen] if entity @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run scoreboard players set @s animTest 0
execute as @s[tag=fakeChest,tag=!burstOpen] if entity @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run tag @s remove interactable
execute as @s[tag=fakeChest,tag=!burstOpen] if entity @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run tag @s add burstOpen

# Brewer
execute if entity @s[tag=brewer] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":"для использования котла","color":"gold"}]
execute if entity @s[tag=brewer] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run tag @s add enterBrewer

# Pensive
execute if entity @s[tag=pensive] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для использования Омута Памяти","color":"gold"}]
execute if score confirmingPensiveMemoryID global matches 0 if entity @s[tag=pensive] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run tag @s add enterPensive
execute unless score confirmingPensiveMemoryID global matches 0 if entity @s[tag=pensive] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:pensive/confirm_memory

# Hogwarts Letter
execute if entity @s[tag=hogwartsLetter] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для ознакомления с письмом","color":"gold"}]

# Косой Переулок
execute if entity @s[tag=diagonAlleyBrick] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы надавить на кирпич","color":"gold"}]
execute if entity @s[tag=diagonAlleyBrick] as @p[tag=activePlayer,tag=hasPressedF] run function hp:misc/diagon_alley_door/startup_open
execute as @s[tag=diagonAlleyBrick] if entity @p[tag=activePlayer,tag=hasPressedF] run data merge entity @s {Glowing:0b}
execute as @s[tag=diagonAlleyBrick] if entity @p[tag=activePlayer,tag=hasPressedF] run tag @s remove interactable
execute if entity @s[tag=diagonAlleyBrick] as @p[tag=activePlayer,tag=hasPressedF] at @s run playsound minecraft:custom.gameplay_element.diagon_alley.brick_interact master @a ~ ~ ~

# Wand Box
execute if entity @s[tag=wandBox] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы взять","color":"gold"}]

# Crate
execute if entity @s[tag=crate] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для поиска","color":"gold"}]

# Notice Board
execute if entity @s[tag=noticeBoard] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы повесить флаер","color":"gold"}]

# Star
execute if entity @s[tag=star] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы взять","color":"gold"}]

# Pickup / Quest Collectable
execute if entity @s[tag=pickUp] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы взять","color":"gold"}]
execute if entity @s[tag=pickUp,tag=!questCollectable] as @p[tag=activePlayer,tag=hasPressedF] run function hp:inventory/pick_up_item

# Turning Pillar
execute if entity @s[tag=turningPillar,tag=!rotatingPillar] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для вращения столба","color":"gold"}]
execute as @s[tag=turningPillar,tag=!rotatingPillar] if entity @p[tag=activePlayer,tag=hasPressedF] run function hp:misc/rotate_pillar

# Mana Well
execute if entity @s[tag=manaWell] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для восстановления Сил","color":"gold"}]
execute if entity @s[tag=manaWell,tag=!rotatingPillar] as @p[tag=activePlayer,tag=hasPressedF] unless score @s manaAmount = @s maxManaAmount run function hp:misc/mana_well

# Broom
execute if entity @s[tag=broomVisual,tag=!spellChallengeBroom] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","color":"white"},{"text":" что бы поднять. Нажмите ","color":"gold"},{"text":"⌠","color":"white"},{"text":" что бы оседлать.","color":"gold"}]
execute if entity @s[tag=broomVisual,tag=spellChallengeBroom] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌠","color":"white"},{"text":" что бы оседлать.","color":"gold"}]
execute as @s[tag=broomVisual,tag=!spellChallengeBroom] if entity @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:items/pick_up_broom

# Ear muffs
execute if entity @s[tag=earmuffs] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","color":"white"},{"text":" что бы надеть наушники. ","color":"gold"}]
execute if entity @s[tag=earmuffs] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run tag @s add earmuffs

# Snake Chain
execute if entity @s[tag=snakeChain] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы потянуть цепь","color":"gold"}]
execute as @s[tag=snakeChain] unless score @s animTest matches 1.. if entity @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set @s animTest 12

# Lever
execute if entity @s[tag=lever] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы потянуть рычаг","color":"gold"}]
execute as @s[tag=lever] unless score @s animTest matches 1.. if entity @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set @s animTest 7

# Riddle door
execute if entity @s[tag=riddleLockedDoor,tag=locked] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для ответа на загадку","color":"gold"}]

# Scroll
execute if entity @s[tag=convNPC,tag=scroll] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы прочесть","color":"gold"}]

# Clue
execute if entity @s[tag=convNPC,tag=clue] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы прочиать подсказку","color":"gold"}]

# Demiguise
execute if entity @s[tag=demiguise] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы похлопать","color":"gold"}]

# Snowman
execute if entity @s[tag=snowman] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы долепить снеговика","color":"gold"}]

# Pear Painting
execute if entity @s[tag=pearPainting] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы передать","color":"gold"}]
execute if entity @s[tag=pearPainting] if entity @p[tag=activePlayer,tag=hasPressedF] as a5fa9ae0-17a7-4615-9d7d-410e29eb7da6 run tag @s[tag=bookShelfClose] add open
execute if entity @s[tag=pearPainting] if entity @p[tag=activePlayer,tag=hasPressedF] as a5fa9ae0-17a7-4615-9d7d-410e29eb7da6 run tag @s[tag=bookShelfOpen] add close

# Riddle Potion
execute if entity @s[tag=riddlePotion] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы выпить","color":"gold"}]
execute if entity @s[tag=riddlePotion] if entity @p[tag=activePlayer,tag=hasPressedF] at @s run function hp:quests/quests/challenge_chambers/drink_potion

# Locked door
execute if entity @s[tag=keyLockedDoor,tag=locked] as @p[tag=activePlayer,scores={pickUpTimer=0,keys=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Вам нужен ключ что бы отпереть эту дверь!","bold":false,"color":"red"}]
execute if entity @s[tag=keyLockedDoor,tag=locked] as @p[tag=activePlayer,scores={pickUpTimer=0,keys=1..},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы открыть дверь с помощью ключа. В наличии ","color":"gold"},{"score":{"name":"@s","objective":"keys"},"bold":true,"color":"white"},{"text":" шт.","color":"gold"}]
execute if entity @s[tag=keyLockedDoor,tag=locked] if entity @p[tag=activePlayer,scores={keys=1..},tag=hasPressedF] at @s run function hp:misc/open_locked_door

# Radio
execute if entity @s[tag=radio,tag=!radioOn] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы включить","color":"gold"}]
execute if entity @s[tag=radio,tag=radioOn] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы выключить","color":"gold"}]
execute as @s[tag=radio] if entity @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set @s animTest 7

# Gramophone
execute if entity @s[tag=gramophone,tag=!radioOn] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы включить","color":"gold"}]
execute if entity @s[tag=gramophone,tag=radioOn] unless score @s animTest matches 1.. as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы выключить","color":"gold"}]
execute as @s[tag=gramophone] if entity @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set @s animTest 7


# Ministry Phonebooth
execute if score ministryPhoneBoothCutsceneIsGoing global matches 0 if entity @s[tag=ministryPhoneBooth] as @p[tag=hasCompletedSortingCeremony,tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для путушествия в Министерство Магии","color":"gold"}]
execute if score ministryPhoneBoothCutsceneIsGoing global matches 0 if entity @s[tag=ministryPhoneBooth] as @p[tag=hasCompletedSortingCeremony,tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run scoreboard players set @s cutSceneID 39
execute if score ministryPhoneBoothCutsceneIsGoing global matches 0 if entity @s[tag=ministryPhoneBooth] as @p[tag=hasCompletedSortingCeremony,tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:cutscenes/init_cutscene

# площадь Гриммо exit
execute if entity @s[tag=grimmauldPlaceExit] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для выхода из пл. Гриммо 12","color":"gold"}]
execute if entity @s[tag=grimmauldPlaceExit] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run scoreboard players set @s cutSceneID 46
execute if entity @s[tag=grimmauldPlaceExit] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:cutscenes/init_cutscene

# Dungeon Entrance
execute if entity @s[tag=dungeonEntrance] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для входа в подземелье","color":"gold"}]
execute if entity @s[tag=dungeonEntrance] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run scoreboard players set @s cutSceneID 51
execute if entity @s[tag=dungeonEntrance] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:cutscenes/init_cutscene

# Dungeon Entrance
execute if entity @s[tag=dungeonExit] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar,tag=!flyingBroom] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для выхода из подземелья","color":"gold"}]
execute if entity @s[tag=dungeonExit] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run scoreboard players set @s cutSceneID 52
execute if entity @s[tag=dungeonExit] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] run function hp:cutscenes/init_cutscene

# Gryffindor Painting
execute if entity @s[tag=GryffindorPainting] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы открыть","color":"gold"}]
execute if entity @s[tag=GryffindorPainting] as @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set gryffindorEntranceDirection global 1
execute if entity @s[tag=GryffindorPainting] as @p[tag=activePlayer,tag=hasPressedF] run scoreboard players set gryffindorEntranceTimer global 12000

# Undergorund library
execute if score undergroundLibraryEntranceDirection global matches 0 if entity @s[tag=undergroundLibraryEntrance] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы открыть","color":"gold"}]

# Зеркало Еиналеж
execute if score mirrorOfErisedLocation global matches 1 if entity @s[tag=mirrorOfErised] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" что бы перевести в нужное положение","color":"gold"}]

# Quest Lock
execute if entity @s[tag=questLock] as @p[tag=activePlayer,scores={pickUpTimer=0},tag=!cutsceneOverrideActionbar] store success score @s tmp run title @s actionbar ["",{"text":"Нажмите ","color":"gold"},{"text":"⌡","bold":false,"color":"white"},{"text":" для разблокировки","color":"gold"}]