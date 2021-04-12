# Declare scoreboard objectives
function uub:declarations/base
function uub:declarations/hotbar
execute as @a run function uub:data/player/default_hotbar

# Prepare the world if nobody is online yet
execute unless entity @a run function uub:reset
