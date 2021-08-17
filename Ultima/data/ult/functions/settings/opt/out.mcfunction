# Opt out
    function ult:data/root
    tag @s remove player
    tag @s add spectator
    tag @s remove ready
    # Don't announce anything if this is part of joining the world
    execute if score @s online matches 1 run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " has opted out.", "color": "gray"}]
    execute if score @s online matches 1 run tellraw @a[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s"}, " ->"]
    execute at @s run playsound block.note_block.xylophone master @s ~ ~ ~ 4
    # Exit the arena properly if mid-game
    execute if score .game_state flag = flag.game_state.active const run function ult:settings/opt/out/mid_game

# Leave scoreboard
    scoreboard players reset @s score
    scoreboard players reset @s health

# Lobby procedures
    effect give @s instant_health 1 2 true
    function ult:settings/player/main
    execute if entity @a[tag=ready] run function ult:start/ready/update_notice
