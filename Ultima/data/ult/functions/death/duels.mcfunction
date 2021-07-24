# No killer necessary, as long as someone died
    execute unless entity @a[tag=killer] run tag @a[tag=alive] add killer

# Process simultaneous kills
    execute as @a[tag=killer, scores={death=1..}] run function ult:death/exit

# If no player left living
    execute unless entity @a[tag=alive] run tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"text": "It's a tie!", "color": "#90BE6D", "bold": true}]

# Otherwise
    execute if entity @a[tag=alive] run tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "#90BE6D"}, {"text": " wins! ", "color": "#90BE6D", "bold": true}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=alive]", "color": "white"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "#F94144"}, {"text": " HP.", "color": "#F94144"}]}}]

# Prompt players to switch modes
    tellraw @a[tag=player] [{"text": "L: ", "color": "dark_gray"}, [{"text": "If you want to change gamemodes, ", "color": "#577590"}, {"text": "click here.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 1"}}]]

# Reset death/kill count for next round
    scoreboard players reset * death
    scoreboard players reset * kill
