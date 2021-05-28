function ult:tick/action/join_world

function ult:lobby
execute if score .debug_mode flag matches 1 run tellraw @a[tag=operator] [{"text": "DEBUG MODE IS ON!\n", "color": "yellow"}, {"text": "Click to turn it off.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/scoreboard players set .debug_mode flag 0"}}]
effect give @s instant_health 1 3 true

clear

scoreboard players reset * wins
scoreboard players set @a wins 0
