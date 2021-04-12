kill
tp 45 30 -12
gamemode adventure
function uub:settings/ender_chest/main
function uub:data/player/reset
execute if score #debug game_state matches 1 run tellraw bgfl [{"text": "DEBUG MODE IS ON!\n","color": "yellow"},{"text": "Click to turn it off.","underlined": true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #debug game_state 0"}}]
team join lobby
function uub:load/deop
bossbar set uub:game_start players @a

function uub:data/player/default_hotbar
