# Notify the players of the change
    execute as @a at @s run playsound entity.item_frame.break master @s ~ ~ ~ 4
    # Display new map in chat
    execute if score .map_mode flag = flag.map_mode.cycle const run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Selected: ", "color": "#577590"}, {"text": "[Cycle Map]", "color": "#43AA8B"}]
    scoreboard players set .count_votes control 0
    execute if score .map_mode flag = flag.map_mode.random const run function ult:data/map/choose_map
    execute if score .map_mode flag = flag.map_mode.random const run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Selected: ", "color": "#577590"}, {"text": "[Random Map]", "color": "#43AA8B"}]
    execute if score .map_mode flag = flag.map_mode.vote const as @a[tag=ready] run function ult:start/ready/unready
    execute if score .map_mode flag = flag.map_mode.vote const run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Selected: ", "color": "#577590"}, {"text": "[Vote Map]", "color": "#43AA8B"}]
    scoreboard players operation .temp_map _var = .map flag
    function ult:data/map/get_details
    execute if score .map_mode flag = flag.map_mode.selected const run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Selected: ", "color": "#577590"}, {"storage": "ult:temp", "nbt": "Map", "color": "gray"}]

# Update the lobby display
    function ult:data/map/display
