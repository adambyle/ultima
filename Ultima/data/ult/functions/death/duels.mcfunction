# No killer necessary, as long as someone died
    execute unless entity @a[tag=killer] run tag @a[tag=alive] add killer

# Process simultaneous kills
    execute as @a[tag=killer, scores={death=1..}] run function ult:death/exit

# If no killer exists
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}]
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " S.D."]

# Otherwise...
    execute if entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}]
    execute if entity @a[tag=killer] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "white"}, " x ", {"selector": "@s", "color": "#F94144"}]

# Reset death/kill count for next round
    scoreboard players reset * death
    scoreboard players reset * kill
