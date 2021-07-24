# Respawn players with no tether
    tag @a remove temp
    execute if score .game_state flag = flag.game_state.active const as @a[tag=!alive, scores={tether=-1, respawn=-1}] run tag @s add temp
    # Only allow one respawn at a time
    execute as @r[tag=temp] run function ult:respawn

# Tell dead players who they're tethered to
    execute as @a[tag=!alive] run function ult:tech/tether_notif

# Tell the players who is in the lead
    execute as @a[tag=alive] run scoreboard players operation @s _var = @s score
    scoreboard players operation @a[tag=alive] _var -= .total_players control
    # _var is the number of points the player is away from the total player count (negative) in order to win
    effect give @a[tag=alive, scores={_var=-1..}] glowing 999999 0 true
    effect clear @a[tag=alive, scores={_var=..-2}] glowing
