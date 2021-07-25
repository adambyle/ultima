function ult:data/player/get_nbt
execute unless score .debug_mode flag = flag.debug_mode.on const run data modify storage ult:temp Player.Games prepend from storage ult:temp Game
data remove storage ult:temp Player.Games[501]
function ult:data/player/save_nbt
