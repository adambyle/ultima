# Count and test for valid number of players
    scoreboard players set .valid _var 0
    scoreboard players set .temp_pn _var 0
    execute as @a[tag=player, tag=ready] run scoreboard players add .temp_pn _var 1
    execute if score .game_mode flag = flag.game_mode.duels const if score .temp_pn _var matches 2.. run scoreboard players set .valid _var 1
    execute if score .game_mode flag = flag.game_mode.royale const if score .temp_pn _var matches 3.. run scoreboard players set .valid _var 1
    execute if score .game_mode flag = flag.game_mode.brawl const if score .temp_pn _var matches 3.. run scoreboard players set .valid _var 1

# Cannot start on duels+vote mode
    execute if score .game_mode flag = flag.game_mode.duels const if score .map_mode flag = flag.map_mode.vote const run scoreboard players set .valid _var 0

# Always valid in debug mode
    execute if score .debug_mode flag = flag.debug_mode.on const run scoreboard players set .valid _var 1

# Start the game if everyone is ready; prepare to start if enough are
execute if score .valid _var matches 1 unless score .starting_soon control matches 1 if entity @a[tag=player, tag=!ready] run tellraw @a {"text": "Enough players are ready! The game starts soon.", "color": "blue"}
scoreboard players operation .starting_soon control = .valid _var
execute if score .valid _var matches 1 unless entity @a[tag=player, tag=!ready] run function ult:start/ready/timeout
