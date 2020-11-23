execute as @p if entity @s[team=play] run tellraw @p [{"text": "You have ","color": "gray"},{"text": " opted out","color": "blue"}]
execute as @p unless entity @s[team=play] run tellraw @p [{"text": "You have ","color": "gray"},{"text": " opted in","color": "green"}]

tag @a remove player
tag @s[team=play] add player
team leave @s
team join spect @s[tag=player]
team join play @s[tag=!player]
