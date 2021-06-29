# Prepare bossbar
    bossbar set ult:game_start visible true
    execute store result bossbar ult:game_start max store result bossbar ult:game_start value run scoreboard players set .ready_timeout _var 30

# Initialize the timer
    schedule function ult:start/ready/timer 1s
    scoreboard players set .starting_soon control 0
