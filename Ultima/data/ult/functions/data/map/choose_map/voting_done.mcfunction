# Set the active map
    # Set to a random vote candidate (more voted maps will be weighted heavier, but all votes have a chance of being picked)
    scoreboard players operation .map flag = @e[sort=random, limit=1, tag=vote_map] control
    # If nobody, use the random backup
    execute unless entity @e[tag=vote_map] run scoreboard players operation .map flag = .random_map control

# Announce the results
    tellraw @a [{"text": "\nL: ", "color": "dark_gray"}, {"text": "== VOTE SUMMARY ==", "color": "#577590", "bold": true}]
    # Announce map 1: retrieve the map id and data
    execute store result score .temp_map _var run data get storage ult:data Votes[0]
    function ult:data/map/get_details
    # Retrieve the number of votes for this map
    scoreboard players set .count _var 0
    execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
    # Retrieve the players who voted for this map
    tag @a remove temp
    execute as @a if score @s vote = .temp_map _var run tag @s add temp
    # If nobody voted...
    execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
    # If someone voted...
    execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
    # If this was the chosen map, highlight...
    execute if score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "#43AA8B"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    # If this was not the chosen map...
    execute unless score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "dark_gray"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    # ..map 2
    execute store result score .temp_map _var run data get storage ult:data Votes[1]
    function ult:data/map/get_details
    scoreboard players set .count _var 0
    execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
    tag @a remove temp
    execute as @a if score @s vote = .temp_map _var run tag @s add temp
    execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
    execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
    execute if score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "#43AA8B"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    execute unless score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "dark_gray"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    # ..3
    execute store result score .temp_map _var run data get storage ult:data Votes[2]
    function ult:data/map/get_details
    scoreboard players set .count _var 0
    execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
    tag @a remove temp
    execute as @a if score @s vote = .temp_map _var run tag @s add temp
    execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
    execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
    execute if score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "#43AA8B"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    execute unless score .temp_map _var = .map flag run tellraw @a [{"text": "L: ", "color": "dark_gray"}, [{"storage": "ult:temp", "nbt": "Map", "color": "dark_gray"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]]
    tellraw @a ""
