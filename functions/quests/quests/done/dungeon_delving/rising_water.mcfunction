execute if score dungeonDelvingWaterLevel global < dungeonDelvingTargetWaterLevel global run scoreboard players add dungeonDelvingWaterLevel global 1
execute if score dungeonDelvingWaterLevel global > dungeonDelvingTargetWaterLevel global run scoreboard players remove dungeonDelvingWaterLevel global 1
execute if score dungeonDelvingWaterLevel global = dungeonDelvingTargetWaterLevel global run scoreboard players set dungeonDelvingWaterDirection global 0

execute unless score oldDungeonWaterLevel global = dungeonDelvingWaterLevel global run function hp:quests/quests/dungeon_delving/clone_water
execute unless score oldDungeonWaterLevel global = dungeonDelvingWaterLevel global run scoreboard players operation oldDungeonWaterLevel global = dungeonDelvingWaterLevel global

