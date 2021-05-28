function ult:tick/action/join_world

execute as @s[tag=player] run function ult:settings/opt/out

function ult:data/player/get_nbt
execute store result score .spect_mode _var run data get storage ult:temp Player.Spectate.joinWorld
function ult:exit/arena

tellraw @s {"text": "A game is currently in progress.", "color": "gold"}
function ult:tick/action/opt_prompt

scoreboard players reset * wins
scoreboard players set @a wins 0
