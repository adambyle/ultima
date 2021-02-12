tellraw @a [{"selector":"@s","color":"dark_gray"},{"text": " has opted out.","color": "dark_gray"}]
tag @s remove player
tag @s remove alive
tag @s add spectator
execute if score #flag game_state matches 1 run function uub:settings/opt/lobby
clear
function uub:data/player/detach
function uub:data/player/clean
scoreboard players reset @s score

execute at @s run playsound block.note_block.xylophone master @s
function uub:settings/ender_chest/main

scoreboard players reset @s score
