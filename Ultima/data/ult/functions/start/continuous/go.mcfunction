execute if score .game_mode flag = flag.game_mode.duels const run function ult:start/continuous/duels
execute unless score .game_mode flag = flag.game_mode.duels const run tag @a remove alive
execute if score .game_mode flag = flag.game_mode.royale const run tag @a[limit=4, sort=random, tag=player] add alive
execute if score .game_mode flag = flag.game_mode.brawl const run tag @a[tag=player] add alive
tellraw @a ""

# Start the game
    function ult:start/lighting
    function ult:start/start
