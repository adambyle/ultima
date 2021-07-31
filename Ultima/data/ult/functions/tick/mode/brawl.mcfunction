# Respawn players when there is room
    # Total active players
    scoreboard players set .temp_pn _var 0
    execute as @a[tag=alive] run scoreboard players add .temp_pn _var 1
    # Include players who are currently respawning
    execute as @a[tag=player, scores={respawn=0..}] run scoreboard players add .temp_pn _var 1
    # If there is room, respawn the next player in line
    execute if score .temp_pn _var matches ..3 as @r[tag=player, tag=!alive, scores={queue=1, respawn=-1}] run function ult:respawn

# The leading player glows
    effect give @a[tag=alive, scores={score=3..}] glowing 999999 0 true
    effect clear @a[tag=alive, scores={score=..2}] glowing
