function ult:tick/action/join_world

execute as @s[tag=player] run function ult:settings/opt/out

execute unless score @s y.spect_lobby matches 1.. run scoreboard players set @s y.spect_lobby 1
scoreboard players operation #spect_mode _var = @s y.spect_lobby
function ult:tick/action/not_playing

tellraw @a {"text": "A game is currently in progress.", "color": "gold"}
function ult:tick/action/opt_prompt
