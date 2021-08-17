# Otherwise
    execute if entity @a[tag=killer, scores={death=1..}] run function ult:death/simul

# If the killer is also dead
    execute unless entity @a[tag=killer, scores={death=1..}] run function ult:death/royale/normal
