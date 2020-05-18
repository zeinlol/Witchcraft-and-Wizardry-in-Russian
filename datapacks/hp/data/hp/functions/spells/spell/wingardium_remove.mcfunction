# Remove wingardium cube when it gets reset (spell challenge Session ID is incremented)
tag @s remove wingardium
data merge entity @s[tag=glowing] {glowing:0b}
tag @s remove glowing

tp @s ~ -1000 ~
kill @s