scoreboard players operation .map flag = @e[tag=vote_map,limit=1,sort=random] control
execute unless entity @e[tag=vote_map] run scoreboard players operation .map flag = .random_map control

tellraw @a {"text": "\n== VOTE SUMMARY ==", "color": "dark_purple", "bold": true}

execute store result score .temp_map _var run data get storage ult:players Votes[0]
function ult:data/map/get_map_data
scoreboard players set .count _var 0
execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
tag @a remove temp
execute as @a if score @s control = .temp_map _var run tag @s add temp
execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
execute if score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_red", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]
execute unless score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]

execute store result score .temp_map _var run data get storage ult:players Votes[1]
function ult:data/map/get_map_data
scoreboard players set .count _var 0
execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
tag @a remove temp
execute as @a if score @s control = .temp_map _var run tag @s add temp
execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
execute if score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_red", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]
execute unless score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]

execute store result score .temp_map _var run data get storage ult:players Votes[2]
function ult:data/map/get_map_data
scoreboard players set .count _var 0
execute as @e[tag=vote_map] if score @s control = .temp_map _var run scoreboard players add .count _var 1
tag @a remove temp
execute as @a if score @s control = .temp_map _var run tag @s add temp
execute if score .count _var matches 0 run data modify storage ult:temp Voters set value '"(Nobody)"'
execute if score .count _var matches 1.. run data modify storage ult:temp Voters set value '{"selector": "@a[tag=temp]"}'
execute if score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_red", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]
execute unless score .temp_map _var = .map flag run tellraw @a ["", {"storage": "ult:temp", "nbt": "Map"}, ": ", [{"score": {"name": ".count", "objective": "_var"}, "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"storage": "ult:temp", "nbt": "Voters", "interpret": true, "color": "white"}, {"text": " voted for ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray", "italic": true}]}}, " votes"]]

tellraw @a ""
