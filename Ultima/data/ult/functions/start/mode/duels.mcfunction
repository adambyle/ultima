# Choose two players to go first
    tag @r[limit=2, tag=player] add alive

# Queue the rest
    execute as @a[tag=player, tag=!alive] run function ult:spawn/assign_queue

# Set displays
    scoreboard objectives setdisplay belowName health_display
    scoreboard objectives setdisplay list health_display
