# Only allow player deaths if the game is still going
    execute if score .game_state flag = flag.game_state.active const as @s[tag=alive, scores={death=1..}] run function ult:death
