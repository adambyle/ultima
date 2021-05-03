# Declare scoreboard objectives
function ult:declarations/base
execute as @a run function ult:data/player/default_hotbar

# Prepare the world if nobody is online yet
execute unless entity @a run function ult:load/first

team modify lobby friendlyFire false
team modify lobby color gray
team modify playing color white
scoreboard objectives modify wins displayname {"text": "Wins","color": "dark_green"}
scoreboard objectives modify health displayname {"text": "HP","color": "dark_red"}
scoreboard objectives modify score displayname {"text": "Score","color": "blue"}

team add respawn_marker
team modify respawn_marker color dark_red
