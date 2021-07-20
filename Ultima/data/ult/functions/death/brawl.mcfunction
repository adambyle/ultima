# The killer is now worth 2 points
    tag @a[tag=killer] remove fresh

# If the killer is still alive...
    execute unless entity @a[tag=killer, scores={death=1..}] run function ult:death/brawl/normal

# If not...
    execute if entity @a[tag=killer, scores={death=1..}] run function ult:death/simul

# If the killer has a high enough score, they win
    execute as @a[tag=killer, tag=alive] if score @s score >= .goal_score control run function ult:victory/brawl

# If the player won't respawn right away, give a lobby prompt
    execute if score .total_players control matches 4.. run function ult:settings/opt/prompt/lobby_tp
