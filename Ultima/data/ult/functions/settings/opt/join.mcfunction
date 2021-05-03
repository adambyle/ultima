scoreboard players add #server pn 1
gamemode spectator
function ult:tp
function ult:tick/action/opt_prompt

scoreboard players reset @s queue
function ult:spawn/assign_queue

execute if score #flag game_mode = #brawl game_mode if score #server pn matches 5.. run tellraw @s [{"text": "Opt >> ","color": "dark_green","bold": true},{"text": "You will spawn very soon! Just hang on.","bold": false}]
execute if score #flag game_mode = #duels game_mode run tellraw @s [{"text": "Opt >> ","color": "dark_green","bold": true},{"text": "In games of this size, you have to wait your turn. You have opted in successfully.","bold": false}]

tag @s remove menu_operator
tag @s add participating

scoreboard players set @s score 0
scoreboard players set @s health 20

team leave lobby
