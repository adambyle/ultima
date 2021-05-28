execute if score .game_mode flag = flag.game_mode.duels const if score .map_mode flag = flag.map_mode.vote const run tellraw @s {"text": "Notice: you can't play Vote Map in Duels mode.", "color": "yellow"}

scoreboard players set .temp_pn _var 0
scoreboard players set .temp _var 0
execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
execute if score .game_mode flag = flag.game_mode.duels const if score .temp_pn _var matches 2.. run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.royale const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1
execute if score .game_mode flag = flag.game_mode.brawl const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1

execute if score .temp _var matches 0 run tellraw @a {"text": "Notice: you need more players opted in to play this mode.", "color": "yellow"}
