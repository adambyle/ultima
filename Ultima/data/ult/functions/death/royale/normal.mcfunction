# Give killer a point
    scoreboard players add @a[tag=killer] score 1

# Standard death message
    execute if entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "#F94144"}, {"text": " HP.\n", "color": "#F94144"}, {"selector": "@a[tag=killer]", "color": "white"}, {"text": " reached ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "score"}, "color": "#43AA8B"}, {"text": " out of ", "color": "gray"}, {"score": {"name": ".temp_pn", "objective": "pn"}, "color": "#90BE6D"}, {"text": " kills needed to win.", "color": "gray"}]}}]
    execute if entity @a[tag=killer] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "gray"}, " x ", {"selector": "@s", "color": "#F94144"}]

# If no killer was found, choose someone random
    tag @a remove random
    tag @r[tag=alive] add random
    execute unless entity @a[tag=killer] run scoreboard players add @a[tag=random] score 1
    execute unless entity @a[tag=killer] if entity @a[tag=random] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ", and is tethered to ", "color": "gray"}, {"selector": "@a[tag=random]", "color": "white"}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=random]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "#F94144"}, {"text": " HP.\n", "color": "#F94144"}, {"selector": "@a[tag=random]", "color": "white"}, {"text": " reached ", "color": "gray"}, {"score": {"name": "@r[tag=random]", "objective": "score"}, "color": "#43AA8B"}, {"text": " out of ", "color": "gray"}, {"score": {"name": ".temp_pn", "objective": "pn"}, "color": "#90BE6D"}, {"text": " kills needed to win.", "color": "gray"}]}}]
    execute unless entity @a[tag=killer] if entity @a[tag=random] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]"}, " <- ", {"selector": "@s", "color": "#F94144"}]
    execute unless entity @a[tag=killer] run tag @a[tag=random] add killer

# If STILL no killer exists
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ".", "color": "gray"}]
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " S.D."]

# Set tether
    scoreboard players operation @s tether = @r[tag=killer] pn

# Reset score
    scoreboard players set @s score 0

# If the player will be waiting for their killer to die
    execute if entity @a[tag=killer] run function ult:settings/opt/prompt/lobby_tp
