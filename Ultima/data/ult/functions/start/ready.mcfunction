function ult:data/root

# Ready up
    tag @s add ready
    function ult:start/ready/update_notice
    tellraw @a[tag=!root, tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " is ready.", "color": "#577590"}]
    tellraw @a[tag=!root, tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "#577590"}, " +"]
    execute if score .map_mode flag = flag.map_mode.vote const run tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " is ready. ", "color": "#577590"}, {"text": "Mistake? Click to unready.", "color": "#F9C74F", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 4"}}, " ", {"text": "Misclick? Click to change your vote.", "color": "#F9C74F", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 5"}}]
    execute unless score .map_mode flag = flag.map_mode.vote const run tellraw @s[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " is ready. ", "color": "#577590"}, {"text": "Mistake? Click to unready.", "color": "#F9C74F", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 4"}}]
    execute if score .map_mode flag = flag.map_mode.vote const run tellraw @s[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"text": "Unready.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 4"}}, " ", {"text": "Change Vote.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 5"}}]
    execute unless score .map_mode flag = flag.map_mode.vote const run tellraw @s[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"text": "Unready.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 4"}}]
    execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 4 1

# If the first player to be ready...
    execute unless entity @a[tag=player, tag=!root, tag=ready] run function ult:start/ready/first_ready

# Test if the game can't start in these conditions
    # Test for inadequate player counts
    scoreboard players set .temp_pn _var 0
    scoreboard players set .temp _var 0
    execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
    # Valid if...
    execute if score .game_mode flag = flag.game_mode.duels const if score .temp_pn _var matches 2.. run scoreboard players set .temp _var 1
    execute if score .game_mode flag = flag.game_mode.royale const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1
    execute if score .game_mode flag = flag.game_mode.brawl const if score .temp_pn _var matches 3.. run scoreboard players set .temp _var 1
    # Warn if invalid
    execute if score .temp _var matches 0 run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "You need more players opted in to play this mode.", "color": "#F8961E"}]

# See if the game is ready to start
    function ult:start/ready/valid_start
