scoreboard players add .total_players control 1
function ult:spectate
function ult:tick/action/opt_prompt

scoreboard players reset @s queue
function ult:spawn/assign_queue

execute if score .game_mode flag = flag.game_mode.brawl const if score .total_players control matches 5.. run tellraw @s [{"text": "Opt >> ", "color": "dark_green", "bold": true}, {"text": "You will spawn where there is room in the arena! Just hang on.", "bold": false}]
execute if score .game_mode flag = flag.game_mode.duels const run tellraw @s [{"text": "Opt >> ", "color": "dark_green", "bold": true}, {"text": "In games of this size, you have to wait your turn. You have opted in successfully.", "bold": false}]

tag @s add participating

scoreboard players set @s score 0
execute unless score .game_mode flag = flag.game_mode.duels const run scoreboard players set @s health_display 20

