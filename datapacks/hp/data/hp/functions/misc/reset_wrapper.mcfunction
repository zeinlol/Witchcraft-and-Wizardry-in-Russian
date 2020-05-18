execute as @s[team=] run function hp:misc/restore/restore_scoreboard_and_team

# Reset when session id is incremented
execute as @s[tag=resettable] unless score @s sessionID = global sessionID run function hp:misc/reset_for_next_session