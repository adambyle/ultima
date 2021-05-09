function ult:tick/action/join_world

tp 45 30 -12
gamemode adventure
execute if score #debug game_state matches 1 run tellraw bgfl [{"text": "DEBUG MODE IS ON!\n","color": "yellow"},{"text": "Click to turn it off.","underlined": true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #debug game_state 0"}}]
team join lobby
effect clear
effect give @s instant_health 1 3 true

clear
