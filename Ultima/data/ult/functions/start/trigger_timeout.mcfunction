# Announce the map (in certain cases)
    scoreboard players operation .temp_map var = .map flag
    function ult:data/map/get_details
    title @a reset
    title @a times 0 16 4
    title @a subtitle [{"text": "By ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Author", "color": "white"}]
    # If not selected
    execute unless score .map_mode flag = flag.map_mode.selected const run title @a[tag=player] title {"storage": "ult:temp", "nbt": "Map", "color": "#577590", "bold": true}

# Timeout for actual game start
    tellraw @a[tag=chat.g.e] [{"text": "\nG: ", "color": "dark_gray"}, {"text": "The game is starting!", "color": "#577590", "bold": true}]
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 0.75
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1
    schedule function ult:start/start 1s
