# Count and test for valid number of players
    scoreboard players set .valid var 0
    scoreboard players set .temp_pn var 0
    execute as @a[tag=player, tag=ready] run scoreboard players add .temp_pn var 1
    execute if score .game_mode flag = flag.game_mode.duels const if score .temp_pn var matches 2.. run scoreboard players set .valid var 1
    execute if score .game_mode flag = flag.game_mode.royale const if score .temp_pn var matches 3.. run scoreboard players set .valid var 1
    execute if score .game_mode flag = flag.game_mode.brawl const if score .temp_pn var matches 3.. run scoreboard players set .valid var 1

# Always valid in debug mode
    execute if score .debug_mode flag = bool.true const run scoreboard players set .valid var 1

# Start the game if everyone is ready; prepare to start if enough are
execute if score .valid var matches 1 unless score .starting_soon control matches 1 if entity @a[tag=player, tag=!ready] run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"text": "Enough players are ready! The game starts soon.", "color": "#577590"}]
scoreboard players operation .starting_soon control = .valid var
execute if score .valid var matches 1 unless entity @a[tag=player, tag=!ready] run function ult:start/ready/timeout
