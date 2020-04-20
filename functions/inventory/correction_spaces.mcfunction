# Calculate number of correction spaces (To make sure everything lines up even though everything gets nudged depending on the number of digits in the count display)

tag 0-0-3-0-1 add 1nudge3
tag 0-0-3-0-1 add 1nudge2
tag 0-0-3-0-1 add 1nudge1
tag 0-0-3-0-1 add 2nudge3
tag 0-0-3-0-1 add 2nudge2
tag 0-0-3-0-1 add 2nudge1
tag 0-0-3-0-1 add 3nudge3
tag 0-0-3-0-1 add 3nudge2
tag 0-0-3-0-1 add 3nudge1
tag 0-0-3-0-1 add 4nudge3
tag 0-0-3-0-1 add 4nudge2
tag 0-0-3-0-1 add 4nudge1
tag 0-0-3-0-1 add 5nudge3
tag 0-0-3-0-1 add 5nudge2
tag 0-0-3-0-1 add 5nudge1
tag 0-0-3-0-1 add 6nudge3
tag 0-0-3-0-1 add 6nudge2
tag 0-0-3-0-1 add 6nudge1
tag 0-0-3-0-1 add inpectNudge3
tag 0-0-3-0-1 add inpectNudge2
tag 0-0-3-0-1 add inpectNudge1
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 1nudge3
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 1nudge2
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 1nudge1
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 2nudge3
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 2nudge2
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 2nudge1
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 3nudge3
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 3nudge2
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 3nudge1
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 4nudge3
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 4nudge2
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 4nudge1
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 5nudge3
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 5nudge2
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 5nudge1
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=10..}] run tag 0-0-3-0-1 remove 6nudge3
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=100..}] run tag 0-0-3-0-1 remove 6nudge2
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1000..}] run tag 0-0-3-0-1 remove 6nudge1
execute as @e[tag=inventoryOption,tag=inspectedItem,scores={InvItemCount=10..},limit=1] run tag 0-0-3-0-1 remove inpectNudge3
execute as @e[tag=inventoryOption,tag=inspectedItem,scores={InvItemCount=100..},limit=1] run tag 0-0-3-0-1 remove inpectNudge2
execute as @e[tag=inventoryOption,tag=inspectedItem,scores={InvItemCount=1000..},limit=1] run tag 0-0-3-0-1 remove inpectNudge1

tag @s add invEmpty


# Don't display parenthesis "(##)" around item count if item does not exist 

tag 0-0-3-0-2 remove close6
tag 0-0-3-0-2 remove close5
tag 0-0-3-0-2 remove close4
tag 0-0-3-0-2 remove close3
tag 0-0-3-0-2 remove close2
tag 0-0-3-0-2 remove close1

tag 0-0-3-0-3 remove close6
tag 0-0-3-0-3 remove close5
tag 0-0-3-0-3 remove close4
tag 0-0-3-0-3 remove close3
tag 0-0-3-0-3 remove close2
tag 0-0-3-0-3 remove close1

execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close6
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close6
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close6
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close6
execute as 0-0-1-0-6 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close5
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close5
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close5
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close5
execute as 0-0-1-0-5 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close4
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close4
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close4
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close4
execute as 0-0-1-0-4 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close3
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close3
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close3
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close3
execute as 0-0-1-0-3 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close2
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close2
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close2
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close2
execute as 0-0-1-0-2 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close1
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-2 add close1
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close1
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1..}] run tag 0-0-3-0-3 add close1
execute as 0-0-1-0-1 if entity @s[scores={InvItemCount=1..}] run tag @p[tag=activePlayer] remove invEmpty

scoreboard players set @s[tag=invEmpty] InvSelectItemID -1
execute if entity @e[tag=inventory,tag=removeContainerIfEmpty,limit=1] as @s[tag=invEmpty] run function hp:inventory/remove_empty_container