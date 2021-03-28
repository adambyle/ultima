execute if score #debug game_state matches 1 run tellraw beegyfleeg [{"text": "DEBUG MODE IS ON!\n","color": "yellow"},{"text": "Click to turn it off.","underlined": true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #debug game_state 0"}}]

# Declare scoreboard objectives
function uub:declarations/base
function uub:declarations/hotbar
execute as @a run function uub:data/player/default_hotbar

# Configure bossbars
bossbar set uub:game_start visible false
bossbar set uub:game_start players @a

function uub:load/deop

# Prepare the world if nobody is online yet
execute unless entity @a run function uub:reset
