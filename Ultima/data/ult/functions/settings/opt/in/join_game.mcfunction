# Increase player count
    scoreboard players add .total_players control 1

# Player may spectate
    function ult:spectate

# Queue to play
    scoreboard players reset @s queue
    function ult:spawn/assign_queue

# Tell player when they should expect to play
    execute if score .game_mode flag = flag.game_mode.brawl const if score .total_players control matches 5.. run tellraw @s [{"text": "Opt >> ", "color": "dark_green", "bold": true}, {"text": "You will spawn where there is room in the arena! Just hang on.", "bold": false}]
    execute if score .game_mode flag = flag.game_mode.duels const run tellraw @s [{"text": "Opt >> ", "color": "dark_green", "bold": true}, {"text": "In games of this size, you have to wait your turn. You have opted in successfully.", "bold": false}]

# Prevent player from joining back after leaving this round
    tag @s add participating

# Add player to the scoreboard
    scoreboard players set @s score 0
    execute unless score .game_mode flag = flag.game_mode.duels const run scoreboard players set @s health_display 20

