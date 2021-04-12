function uub:data/player/reset

execute as @s[tag=player] run function uub:settings/opt/out
tag @s add spectator

execute unless score @s y.spect_lobby matches 1.. run scoreboard players set @s y.spect_lobby 1
scoreboard players operation #spect_mode _var = @s y.spect_lobby
function uub:tick/action/not_playing

tellraw @a {"text": "A game is currently in progress.", "color": "gold"}
function uub:tick/action/opt_prompt
