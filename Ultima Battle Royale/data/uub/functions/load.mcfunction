execute if score #debug game_state matches 1 run tellraw beegyfleeg [{"text": "DEBUG MODE IS ON!\n","color": "yellow"},{"text": "Click to turn it off.","underlined": true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #debug game_state 0"}}]

# Declare scoreboard objectives
function uub:declarations/base
function uub:declarations/hotbar
execute as @a run function uub:data/player/default_hotbar

# Configure bossbars
bossbar set uub:game_start visible false
bossbar set uub:game_start players @a

# Increase the session number and assign it to each player
scoreboard players add #server game_id 1
scoreboard players operation @a game_id = #server game_id

defaultgamemode spectator

function uub:load/deop
