execute as @s[tag=player] run function uub:settings/opt/out
tag @s add spectator

execute unless score @s y.spect_lobby matches 1.. run scoreboard players set @s y.spect_lobby 1
scoreboard players operation #spect_mode _var = @s y.spect_lobby
function uub:tick/action/not_playing

scoreboard players operation @s game_id = #server game_id
team join lobby
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
tag @s remove alive
tag @s remove participating

tellraw @a {"text": "A game is currently in progress.", "color": "gold"}
function uub:tick/opt_prompt
