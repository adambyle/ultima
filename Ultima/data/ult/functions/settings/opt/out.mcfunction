function ult:data/root
execute if score #flag game_mode = #duels game_mode as @s[tag=player, tag=alive] as @r[tag=alive, tag=!root] run function ult:victory

tellraw @a [{"selector": "@s","color":"dark_gray"}, {"text": " has opted out.", "color": "dark_gray"}]
execute if score @s[tag=player] online matches 1 run scoreboard players remove #server pn 1
tag @s remove player
tag @s remove alive
tag @s add spectator
scoreboard players set @s ready 0
execute if score #flag game_state matches 1.. run function ult:settings/opt/lobby
function ult:data/player/detach
function ult:data/player/clean
scoreboard players reset @s score
scoreboard players reset @s health

execute at @s run playsound block.note_block.xylophone master @s
function ult:settings/ender_chest/main

effect give @s instant_health 1 2 true
