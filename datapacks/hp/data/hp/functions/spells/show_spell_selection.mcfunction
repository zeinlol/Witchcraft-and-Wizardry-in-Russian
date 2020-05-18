# Set current Selected spell
scoreboard players operation @s[tag=hasChangedSlot] selectedSpell = @s selectedSlot
execute as @s[tag=hasChangedSlot] if score @s unlockedSpell >= @s selectedSlot run scoreboard players operation @s selectedSpell = @s selectedSlot

# Set current spell to selected spell if selected spell is unlocked
execute as @s unless score @s selectedSpell = @s currentSpell if score @s selectedSpell <= @s unlockedSpell run scoreboard players operation @s currentSpell = @s selectedSpell

execute if score @s[tag=hasChangedSlot] unlockedSpell >= @s selectedSlot run function hp:spells/change_current_spell



# Show Selection for 1 second
execute as @s[tag=hasChangedSlot,scores={spellSelectTimer=..19}] run scoreboard players set @s spellSelectTimer 20
function hp:animation/clear_all_animations


# Use 'F' or 'shift' to let player quickly select desired spell and not wait for the spellSelectTimer to run out
scoreboard players set @s[scores={spellSelectTimer=1..},tag=hasPressedF] spellSelectTimer 1
scoreboard players set @s[scores={spellSelectTimer=1..},tag=isSneaking] spellSelectTimer 1

tag @s[scores={spellSelectTimer=1}] remove showSpellSelection
tag @s[scores={spellSelectTimer=1,selectedSlot=1}] add anim_enter
scoreboard players set @s[scores={spellSelectTimer=1}] questAnim 10
tag @s[scores={spellSelectTimer=1,trackedQuestID=1..,questQueue=0},tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] add silentQuestAnimation
tag @s[scores={spellSelectTimer=1,trackedQuestID=1..,questQueue=0},tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] remove showingTrackedQuest
tag @s[scores={spellSelectTimer=1,trackedQuestID=1..,questQueue=0},tag=!isDrowning,tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea] add showTrackedQuest