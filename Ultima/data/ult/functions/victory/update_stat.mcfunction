function ult:data/player/get
execute unless score .debug_mode flag = bool.true const run data modify storage ult:temp Player.Games prepend from storage ult:temp Player.Game
data remove storage ult:temp Player.Games[2501]
function ult:data/player/save
