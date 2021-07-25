# The killer is now worth 2 points
    tag @a[tag=killer] remove fresh
    effect give @a[tag=killer] instant_health 1 1 true

# If the killer is still alive...
    execute unless entity @a[tag=killer, scores={death=1..}] run function ult:death/brawl/normal

# If not...
    execute if entity @a[tag=killer, scores={death=1..}] run function ult:death/simul

# If the player won't respawn right away, give a lobby prompt
    execute if score .total_players control matches 4.. run function ult:settings/opt/prompt/lobby_tp
