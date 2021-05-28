execute if score .game_mode flag = flag.game_mode.duels const unless score .total_players control matches 2.. run function ult:settings/opt/out/end_early
execute if score .game_mode flag = flag.game_mode.royale const unless score .total_players control matches 3.. run function ult:settings/opt/out/end_early
execute if score .game_mode flag = flag.game_mode.brawl const unless score .total_players control matches 3.. run function ult:settings/opt/out/end_early

function ult:data/player/get_nbt
execute store result score .spect_mode _var run data get storage ult:temp Player.Spectate.optOut
function ult:exit/arena

execute if score .game_mode flag = flag.game_mode.duels const as @r[tag=player, tag=alive, tag=!root] run function ult:victory
