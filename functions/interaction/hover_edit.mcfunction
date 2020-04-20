
# Edit path
execute if entity @s[tag=showPathPoints,scores={pathIndicator=0}] run title @s actionbar ["",{"text":"Rotation","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=1}] run title @s actionbar ["",{"text":"Idle / walking phase","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=2}] run title @s actionbar ["",{"text":"Delete","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=3}] run title @s actionbar ["",{"text":"Path ID  -->  ","color":"blue","bold":true},{"score":{"name":"@e[tag=hover,tag=pathIndicator,limit=1]","objective":"PathID"},"color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=4}] run title @s actionbar ["",{"text":"Path Point ID  -->  ","color":"blue","bold":true},{"score":{"name":"@e[tag=hover,tag=pathIndicator,limit=1]","objective":"PathPointID"},"color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] run title @s actionbar ["",{"text":"Is end of path?","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=0},tag=hover] run title @s actionbar ["",{"text":"Is end of path? - FALSE","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=1},tag=hover] run title @s actionbar ["",{"text":"Is end of path? - TRUE - Cycle","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=2},tag=hover] run title @s actionbar ["",{"text":"Is end of path? - true - Permanent Stop","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=5}] if entity @e[tag=pathIndicator,scores={pathEnding=3},tag=hover] run title @s actionbar ["",{"text":"Is end of path? - FALSE - cutscene Stop","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=6}] run title @s actionbar ["",{"text":"Copy / Paste Point ID","color":"blue","bold":true}]
execute if entity @s[tag=showPathPoints,scores={pathIndicator=7}] run title @s actionbar ["",{"text":"Copy / Paste Path ID","color":"blue","bold":true}]

# Edit NPC
title @s[tag=editNPC,scores={editStick=1}] actionbar ["",{"text":"Arms","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=2}] actionbar ["",{"text":"Head","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=3}] actionbar ["",{"text":"Clothes slot 1","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=4}] actionbar ["",{"text":"Clothes slot 2","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=5}] actionbar ["",{"text":"Clothes slot 3","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=6}] actionbar ["",{"text":"House","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=7}] actionbar ["",{"text":"Delete","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=8}] actionbar ["",{"text":"Rotation","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=9}] actionbar ["",{"text":"Conversation","color":"blue","bold":true}]
title @s[tag=editNPC,scores={editStick=10}] actionbar ["",{"text":"Conversation 100","color":"blue","bold":true}]



# Edit Gameplay
title @s[tag=editGameplay,scores={editStick=1}] actionbar ["",{"text":"Rotation","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=2}] actionbar ["",{"text":"Type","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=3}] actionbar ["",{"text":"Sub Type","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=4}] actionbar ["",{"text":"Delay","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=5}] actionbar ["",{"text":"Delete","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=6}] actionbar ["",{"text":"ID","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=7}] actionbar ["",{"text":"Number","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=8}] actionbar ["",{"text":"Delete Closest","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=9}] actionbar ["",{"text":"Move to me","color":"blue","bold":true}]
title @s[tag=editGameplay,scores={editStick=10}] actionbar ["",{"text":"Copy / paste ID","color":"blue","bold":true}]
