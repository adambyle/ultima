function ult:data/player/get_nbt

execute if score .selected _var matches 1 run data modify storage ult:temp Player.Spectate.joinWorld set value true
execute if score .selected _var matches 2 run data modify storage ult:temp Player.Spectate.joinWorld set value false
execute if score .selected _var matches 3 run data modify storage ult:temp Player.Spectate.death set value true
execute if score .selected _var matches 4 run data modify storage ult:temp Player.Spectate.death set value false
execute if score .selected _var matches 5 run data modify storage ult:temp Player.Spectate.optOut set value true
execute if score .selected _var matches 6 run data modify storage ult:temp Player.Spectate.optOut set value false
execute if score .selected _var matches 7 run data modify storage ult:temp Player.Spectate.startGame set value true
execute if score .selected _var matches 8 run data modify storage ult:temp Player.Spectate.startGame set value false

function ult:data/player/save_nbt
function ult:settings/player/spectate
