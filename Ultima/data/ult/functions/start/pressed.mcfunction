function ult:data/root
function ult:lobby

# Opt in if not already
    execute as @s[tag=spectator] run function ult:settings/opt/in

# If not vote mode, ready up
    execute unless score .map_mode flag = flag.map_mode.vote const as @s[tag=!ready] run function ult:start/ready

# If vote mode, try to go to voting station
    execute if score .map_mode flag = flag.map_mode.vote const run function ult:start/vote
