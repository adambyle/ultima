# Anybody who didn't ready in time is opted out
    execute as @a[tag=player, tag=!ready] run function ult:start/ready/deopt

# Close down the timer; it has ended
    bossbar set ult:game_start visible false
    schedule clear ult:start/ready/timer
    scoreboard players set .ready_timeout _var -1
    tag @a remove ready

# Start the game
    tellraw @a {"text": "The game is starting!", "color": "green"}
    function ult:start
