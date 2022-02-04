# Announce opt
    tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " has opted in.", "color": "#43AA8B"}]
    tellraw @a[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "gray"}, " <-"]
    execute at @s run playsound block.note_block.xylophone master @s ~ ~ ~ 4

# Opt in
    tag @s remove spectator
    tag @s add player

execute if score .game_state flag = flag.game_state.voting const run function ult:settings/opt/in/voting

# Determine if the player can join the game
    scoreboard players set .temp var 0
    # Can if brawl or duels mode
    execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard players set .temp var 1
    execute if score .game_mode flag = flag.game_mode.duels const run scoreboard players set .temp var 1

# If a game is going and the player is able to join, let them in
    execute if score .game_state flag = flag.game_state.active const if score .temp var matches 1 run function ult:settings/opt/in/join_game
