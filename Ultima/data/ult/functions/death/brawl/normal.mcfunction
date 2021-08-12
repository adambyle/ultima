# Determine score increases and decreases
    # 2 normally
    scoreboard players set .inc _var 2
    # 1 if just spawned
    execute as @s[tag=fresh] run scoreboard players set .inc _var 1
    # 1 point loss
    scoreboard players set .dec _var 1
    # Point loss cannot be greater than existing score
    scoreboard players operation .dec _var < @s score

# Update stats
    # Self
    function ult:data/player/get
    execute store result score .minus _var run data get storage ult:temp Player.Game.brawl.minus
    execute store result storage ult:temp Player.Game.brawl.minus int 1 run scoreboard players operation .minus _var += .dec _var
    execute store result score .freshdeaths _var run data get storage ult:temp Player.Game.brawl.freshdeaths
    execute as @s[tag=fresh] store result storage ult:temp Player.Game.brawl.freshdeaths int 1 run scoreboard players add .freshdeaths _var 1
    function ult:data/player/save
    # Killer
    execute as @a[tag=killer] run function ult:data/player/get
    execute store result score .plus _var run data get storage ult:temp Player.Game.brawl.plus
    execute store result storage ult:temp Player.Game.brawl.plus int 1 run scoreboard players operation .plus _var += .inc _var
    execute store result score .normkills _var run data get storage ult:temp Player.Game.brawl.normkills
    execute store result score .freshkills _var run data get storage ult:temp Player.Game.brawl.freshkills
    execute store result score .revenge _var run data get storage ult:temp Player.Game.brawl.revenge
    execute as @s[tag=!fresh] unless score @s pn = @r[tag=killer] tether store result storage ult:temp Player.Game.brawl.normkills int 1 run scoreboard players add .normkills _var 1
    execute as @s[tag=fresh] store result storage ult:temp Player.Game.brawl.freshkills int 1 run scoreboard players add .freshkills _var 1
    execute if score @s pn = @r[tag=killer] tether store result storage ult:temp Player.Game.brawl.revenge int 1 run scoreboard players add .revenge _var 1
    execute as @a[tag=killer] run function ult:data/player/save

function ult:data/root

# Handle scores
    scoreboard players operation @s score -= .dec _var
    scoreboard players operation @a[tag=killer] score += .inc _var
    # If the player killed themself, everyone gets a point
    execute unless entity @a[tag=killer] run scoreboard players add @a[tag=player, tag=!root] score 1

# Tether to killer
    scoreboard players operation @s tether = @r[tag=killer] pn

# If no killer exists
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@s"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "#F8961E"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "#F8961E"}, {"score": {"name": ".dec", "objective": "_var"}, "color": "#F8961E"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=!root, tag=player]", "color": "white"}, {"text": " all gain a point. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+1", "color": "#43AA8B"}, {"text": ")", "color": "dark_gray"}]}}]
    execute unless entity @a[tag=killer] run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " S.D."]

# Otherwise...
    execute if entity @a[tag=killer] run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "health"}, "color": "#F94144"}, {"text": " HP.\n", "color": "#F94144"}, {"selector": "@s", "color": "white"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "#F8961E"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "#F8961E"}, {"score": {"name": ".dec", "objective": "_var"}, "color": "#F8961E"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "white"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "score"}, "color": "#43AA8B"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+", "color": "#43AA8B"}, {"score": {"name": ".inc", "objective": "_var"}, "color": "#43AA8B"}, {"text": ")", "color": "dark_gray"}]}}]
    execute if entity @a[tag=killer] if score .inc _var matches 2 run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "white"}, " x ", {"selector": "@s", "color": "#F94144"}, "(+2)"]
    execute if entity @a[tag=killer] if score .inc _var matches 1 run tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=killer]", "color": "white"}, " x ", {"selector": "@s", "color": "#F94144"}, "(+1)"]
