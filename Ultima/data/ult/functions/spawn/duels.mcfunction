# Standard game-start setup
    scoreboard players operation .game_state flag = flag.game_state.active const
    function ult:start/round

# The winning player spawns again
    execute as @a[tag=alive] run function ult:spawn

# If no player won, spawn an extra
    execute unless entity @a[tag=alive] run function ult:spawn/next

# Regardless of the above two, a second player is needed; spawn them
    function ult:spawn/next

# Move players to the next map if needed
    execute as @a[gamemode=spectator] run function ult:tp
