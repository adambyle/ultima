# The other player wins if you leave a duel
    execute as @s[tag=alive] if score .game_mode flag = flag.game_mode.duels const as @r[tag=alive, tag=!root] run function ult:victory

# Detach
    function ult:death/exit

# Remove from total player count
    scoreboard players remove .total_players control 1
