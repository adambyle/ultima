# Choose four players to go first
    tag @r[limit=4, tag=player] add alive

# Handle the rest
    # If brawl, queue them
    execute if score .game_mode flag = flag.game_mode.brawl const as @a[tag=player, tag=!alive] run function ult:spawn/assign_queue

# Set the displays
    scoreboard objectives setdisplay belowName health_display
    scoreboard objectives setdisplay list health_display

# Set the goal score (for brawl mode)
    scoreboard players set .goal_score control 5
