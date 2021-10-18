# Choose map
    scoreboard players set .count_votes control 1
    execute if score .map_mode flag = flag.map_mode.vote const run function ult:data/map/choose_map
    # Determine if a new random map is needed
    scoreboard players set .new_random var 1
    execute if score .map flag >= flag.map.start_default const if score .map flag <= flag.map.end_default const run scoreboard players set .new_random var 0
    execute if score .map flag >= flag.map.start_fandom const if score .map flag <= flag.map.end_fandom const run scoreboard players set .new_random var 0
    execute if score .new_random var matches 1 if score .map_mode flag = flag.map_mode.random const run function ult:data/map/choose_map
    # Change day time
    function ult:start/lighting

# Determine players, setup game
    scoreboard players operation .game_state flag = flag.game_state.transition const
    # Mode specific preparations
    execute if score .game_mode flag = flag.game_mode.duels const run function ult:start/mode/duels
    execute if score .game_mode flag matches 1..2 run function ult:start/mode/multi

# Count the total players
    scoreboard players set .total_players control 0
    execute as @a[tag=player] run scoreboard players add .total_players control 1

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

# Reset AFK
    scoreboard players set @a afk 0
    tag @a remove afk

# Prepare lobby
    clear @a
    # Remove game mode switcher
    setblock 43 31 -9 air
    # Lock map picker
    data modify block 43 31 -12 Lock set value "Locked"
