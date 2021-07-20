# Determine score increases and decreases
    # 2 normally
    scoreboard players set .inc _var 2
    # 1 if just spawned
    execute as @s[tag=fresh] run scoreboard players set .inc _var 1
    # 3 if a vengeance kill
    execute if score @s pn = @r[tag=killer] tether run scoreboard players set .inc _var 3
    # 1 point loss
    scoreboard players set .dec _var 1
    # Point loss cannot be greater than existing score
    scoreboard players operation .dec _var < @s score

function ult:data/root

# Handle scores
    scoreboard players operation @s score -= .dec _var
    scoreboard players operation @a[tag=killer] score += .inc _var
    # If the player killed themself, everyone gets a point
    execute unless entity @a[tag=killer] run scoreboard players add @a[tag=player, tag=!root] score 1

# Tether to killer
    scoreboard players operation @s tether = @r[tag=killer] pn

# If no killer exists
    execute unless entity @a[tag=killer] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@s"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "dark_blue"}, {"score": {"name": ".dec", "objective": "_var"}, "color": "dark_blue"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=!root, tag=player]"}, {"text": " all gain a point. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+1", "color": "dark_blue"}, {"text": ")", "color": "dark_gray"}]}}]

# Otherwise...
    execute if entity @a[tag=killer] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.\n", "color": "dark_red"}, {"selector": "@s"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "dark_blue"}, {"score": {"name": ".dec", "objective": "_var"}, "color": "dark_blue"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=killer]"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+", "color": "dark_blue"}, {"score": {"name": ".inc", "objective": "_var"}, "color": "dark_blue"}, {"text": ")", "color": "dark_gray"}]}}]
