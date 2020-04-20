# Both switches
execute if score hogwartsPuzzle7switch1 global matches 0 run tag 8206e7eb-6514-40b5-bd40-b15550d5fdd7 add close
execute if score hogwartsPuzzle7switch2 global matches 0 run tag 8206e7eb-6514-40b5-bd40-b15550d5fdd7 add close
execute if score hogwartsPuzzle7switch1 global matches 1 if score hogwartsPuzzle7switch2 global matches 1 run tag 8206e7eb-6514-40b5-bd40-b15550d5fdd7 add open