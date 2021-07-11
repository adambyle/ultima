# Detach
    function ult:death/exit

# The other player wins if you leave a duel
    execute if score .game_mode flag = flag.game_mode.duels const as @r[tag=player, tag=alive, tag=!root] run function ult:victory

# Remove from total player count
    scoreboard players remove .total_players control 1
