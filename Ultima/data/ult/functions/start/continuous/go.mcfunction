# Duels mode has special functions
    execute if score .game_mode flag = flag.game_mode.duels const run function ult:start/continuous/duels

# Make pre-game preparations
    scoreboard players operation .game_state flag = flag.game_state.transition const
    execute unless score .game_mode flag = flag.game_mode.duels const run tag @a remove alive
    execute if score .game_mode flag matches 1..2 run function ult:start/mode/multi

    tellraw @a ""

# Start the game
    function ult:start/lighting
    function ult:start/trigger_timeout
