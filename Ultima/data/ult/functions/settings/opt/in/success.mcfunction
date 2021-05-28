tellraw @a [{"selector": "@s", "color": "dark_green"}, " has opted in."]
execute at @s run playsound block.note_block.xylophone master @s
tag @s remove spectator
tag @s add player

scoreboard players set .temp _var 0
execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp _var 1

execute if score .game_state flag = flag.game_state.active const if score .temp _var matches 1 run function ult:settings/opt/in/join_game
