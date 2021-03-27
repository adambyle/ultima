tellraw @a [{"selector":"@s","color":"dark_gray"},{"text": " has opted out.","color": "dark_gray"}]
execute as @s[tag=player] run scoreboard players remove #server pn 1
tag @s remove player
tag @s remove alive
tag @s add spectator
scoreboard players set @s ready 0
execute if score #flag game_state matches 1 run function uub:settings/opt/lobby
function uub:data/player/detach
function uub:data/player/clean
scoreboard players reset @s score

execute at @s run playsound block.note_block.xylophone master @s
function uub:settings/ender_chest/main
