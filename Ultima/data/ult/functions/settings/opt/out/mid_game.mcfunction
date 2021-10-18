# If the player manually decided to leave (as opposed to joining the world with bad tags)
    execute if score @s online matches 1 run function ult:settings/opt/out/mid_game/manual

# If not enough players remain, end early
    execute if score .game_mode flag = flag.game_mode.duels const unless score .total_players control matches 2.. run function ult:settings/opt/out/end_early
    execute if score .game_mode flag = flag.game_mode.royale const unless score .total_players control matches 3.. run function ult:settings/opt/out/end_early
    execute if score .game_mode flag = flag.game_mode.brawl const unless score .total_players control matches 3.. run function ult:settings/opt/out/end_early

# Spectate or lobby
    function ult:data/player/get
    execute store result score .spect_mode var run data get storage ult:temp Player.Spectate.optOut
    function ult:exit
