# Phone Booth return
execute if score ministryPhoneBoothCutsceneIsGoing global matches 0 as 774ed417-669f-40ee-b32d-f91d65c7bb8e if entity @s[scores={animState=1..}] at @s run tp @s ~ ~.075 ~
execute if score ministryPhoneBoothCutsceneIsGoing global matches 0 as 774ed417-669f-40ee-b32d-f91d65c7bb8e if entity @s[scores={animState=1..}] at @s run scoreboard players remove @s animState 1

# Elevator
execute as 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 at @s run function hp:area_specific/ministry/elevator
execute as 475250bd-2c84-4dc8-8409-86ab7ce5ca4a at @s run function hp:area_specific/ministry/elevator2

