# Notify the players of the change
    execute as @a at @s run playsound entity.item_frame.break master @s ~ ~ ~ 4
    # Display new map in chat
    execute if score .map_mode flag = flag.map_mode.cycle const run tellraw @a [{"text": "Selected: ", "color": "dark_gray"}, {"text": "[Cycle Map]", "color": "light_purple"}]
    execute if score .map_mode flag = flag.map_mode.random const run tellraw @a [{"text": "Selected: ", "color": "dark_gray"}, {"text": "[Random Map]", "color": "dark_aqua"}]
    execute if score .map_mode flag = flag.map_mode.vote const run tellraw @a [{"text": "Selected: ", "color": "dark_gray"}, {"text": "[Vote Map]", "color": "dark_red"}]
    scoreboard players operation .temp_map _var = .map flag
    function ult:data/map/get_details
    execute if score .map_mode flag = flag.map_mode.selected const run tellraw @a [{"text": "Selected: ", "color": "dark_gray"}, {"storage": "ult:temp", "nbt": "Map", "color": "gold"}]

# Update the lobby display
    function ult:data/map/display
