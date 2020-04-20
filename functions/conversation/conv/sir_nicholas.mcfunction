# Style:
# (_____Normal_____)
# (_____Quest_____)
# (_____Return_____)

# Sound
# (_____click_____)
# (_____paper_____)

# On first execution used to set convOverride
execute as @s[scores={delayConvTellraw=2,playerID=1}] run scoreboard players operation @s convState = sirNicholas p1convOverride
execute as @s[scores={delayConvTellraw=2,playerID=2}] run scoreboard players operation @s convState = sirNicholas p2convOverride
execute as @s[scores={delayConvTellraw=2,playerID=3}] run scoreboard players operation @s convState = sirNicholas p3convOverride
execute as @s[scores={delayConvTellraw=2,playerID=4}] run scoreboard players operation @s convState = sirNicholas p4convOverride
execute as @s[scores={delayConvTellraw=2}] run scoreboard players set @s oldConvState -2
execute as @s[scores={delayConvTellraw=1..}] run scoreboard players remove @s delayConvTellraw 1

scoreboard players set @s npcVoice 0

################################################################################################
##################################### Conversation State 0 #####################################
################################################################################################

tag @s[scores={convState=0},tag=drawOptions] add use
tag @s[scores={convState=0},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" My name is Сер Николас! And I feel dismal. Once again, my request to join the Headless Hunt has been denied. \"}"}
# execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\"≤ They call you Nearly Headless Nick? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=2}] run data merge entity @s {CustomName:"{\"text\":\"≤ You're a ghost \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=2}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=3}] run data merge entity @s {CustomName:"{\"text\":\"≤ How did you die? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=3}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 4
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=4}] run data merge entity @s {CustomName:"{\"text\":\"≤ You were in Gryffindor at Hogwarts? \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=4}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 6
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=5}] run data merge entity @s {CustomName:"{\"text\":\"≥ До свидания\"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=5}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState -1
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 5
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState -1
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 1 #####################################
################################################################################################

tag @s[scores={convState=1},tag=drawOptions] add use
tag @s[scores={convState=1},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" It's Nicholas de Mimsy-Porpington. And I prefer Сер Николас, if you don't mind. \\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################

execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Return_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 0
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 2 #############################################
################################################################################################

tag @s[scores={convState=2},tag=drawOptions] add use
tag @s[scores={convState=2},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" I know. It's dreadful, I haven't eaten for nearly five hundred years. I don't need to, of course, but one does miss it. \\n\\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 3
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 0
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 3 #############################################
################################################################################################

tag @s[scores={convState=3},tag=drawOptions] add use
tag @s[scores={convState=3},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Now I am a resident of Gryffindor Tower. I was sorted into Gryffindor in my time at Hogwarts, you see. I went on to be the wizard of the royal court, but we had a spot of bother when I tried to straighten Lady Grieve's teeth using magic. She sprouted tusks instead, and they lobbed my head off. Well, as good as. \"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 2
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 4 #############################################
################################################################################################

tag @s[scores={convState=4},tag=drawOptions] add use
tag @s[scores={convState=4},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" Now that is an interesting question. If you will allow me to sing a small part of my self-penned ballad, I'm sure that shall relay all: \\n\\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 5
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 0
tag @s remove use
tag @s remove trg
#===============================


################################################################################################
##################################### Conversation State 5 #############################################
################################################################################################

tag @s[scores={convState=5},tag=drawOptions] add use
tag @s[scores={convState=5},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" It was a mistake any wizard could make \\n Who was tired and caught on the hop \\n One piffling error, and then, to my terror \\n I found myself facing the chop \\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 4
tag @s remove use
tag @s remove trg
#===============================

################################################################################################
##################################### Conversation State 6 #############################################
################################################################################################

tag @s[scores={convState=6},tag=drawOptions] add use
tag @s[scores={convState=6},tag=triggerOption,tag=!drawOptions] add trg

################################
##### Conversation Header ######
################################
execute if entity @s[tag=use] as 0-0-6-0-9 run data merge entity @s {CustomName:"{\"text\":\" I was indeed. I hope I, Сер Николас de Mimsy-Porpington, could never be accused of one act of cowardice in my life! Boldness and bravery define the noble blood that runs – did run - in my veins. \\n\\n\"}"}
execute if entity @s[tag=use] run tag @s add longHeader

################################
##### Conversation Options #####
################################
#-------------------------------
execute as @s[tag=use] as @e[type=armor_stand,limit=1,scores={con=1}] run data merge entity @s {CustomName:"{\"text\":\" ... \"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=trg] as @e[type=armor_stand,limit=1,scores={con=1}] as @s[tag=convSelected] as @p[tag=activePlayer,scores={tmp=0}] store success score @s tmp run scoreboard players set @s convState 0
#-------------------------------

#===============================
# Number of options
scoreboard players set @s[tag=use,tag=!inInventory] convMaxView 1
#-------------------------------
# Back conversation state (when player presses shift. -1 is exit conversation)
scoreboard players set @s[tag=use] backConvState 0
tag @s remove use
tag @s remove trg
#===============================



