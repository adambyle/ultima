tag @s remove player
tag @s add spectator
tag @s add lobby
gamemode adventure
tp 45 30 -12
scoreboard players operation @s game_id = #server game_id
team join lobby
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
tag @s remove alive
tag @s remove participating
