# Respawn players with no tether
    tag @a remove temp
    execute if score .game_state flag = flag.game_state.active const as @a[tag=player, tag=!alive, scores={tether=-1}] run tag @s add temp
    execute as @r[tag=temp] run function ult:respawn

# Tell dead players who they're tethered to
    execute as @a[tag=player, tag=!alive] run function ult:tick/action/tether_notif

# Tell the players who is in the lead
    execute as @a[tag=player, tag=alive] run scoreboard players operation @s _var = @s score
    scoreboard players operation @a[tag=player, tag=alive] _var -= .total_players control
    effect give @a[tag=player, tag=alive, scores={_var=-1..}] glowing 999999 0 true
    effect clear @a[tag=player, tag=alive, scores={_var=..-2}] glowing
