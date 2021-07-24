# No killer necessary, as long as someone died
    execute unless entity @a[tag=killer] run tag @a[tag=alive] add killer

# Process simultaneous kills
    execute as @a[tag=killer, scores={death=1..}] run function ult:death/exit

# If no player left living
    execute unless entity @a[tag=alive] run tellraw @a {"text": "Tie!", "color": "gold"}

# Otherwise
    execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=killer]", "color": "green"}, {"text": " wins! ", "color": "green"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=alive]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.", "color": "dark_red"}]}}]

# Prompt players to switch modes
    tellraw @a[tag=player] [{"text": "If you want to change gamemodes, ", "color": "blue"}, {"text": "click here.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 1"}}]

# Reset death/kill count for next round
    scoreboard players reset * death
    scoreboard players reset * kill
