execute as @s[tag=startConversation] run function hp:conversation/init_conversation
execute as @s[tag=inConversation,scores={playerID=1}] run function hp:conversation/in_conversation_player1
execute as @s[tag=inConversation,scores={playerID=2}] run function hp:conversation/in_conversation_player2
execute as @s[tag=inConversation,scores={playerID=3}] run function hp:conversation/in_conversation_player3
execute as @s[tag=inConversation,scores={playerID=4}] run function hp:conversation/in_conversation_player4
execute as @s[tag=exitConversation] run function hp:conversation/exit_conversation