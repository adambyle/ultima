function ult:data/player/get_nbt

data modify storage ult:temp PlayerSpectate set from storage ult:temp Player.Spectate

execute if score .selected _var matches 1 if data storage ult:temp PlayerSpectate{joinWorld: false} run data modify storage ult:temp Player.Spectate.joinWorld set value true
execute if score .selected _var matches 1 if data storage ult:temp PlayerSpectate{joinWorld: true} run data modify storage ult:temp Player.Spectate.joinWorld set value false
execute if score .selected _var matches 2 if data storage ult:temp PlayerSpectate{death: false} run data modify storage ult:temp Player.Spectate.death set value true
execute if score .selected _var matches 2 if data storage ult:temp PlayerSpectate{death: true} run data modify storage ult:temp Player.Spectate.death set value false
execute if score .selected _var matches 3 if data storage ult:temp PlayerSpectate{optOut: false} run data modify storage ult:temp Player.Spectate.optOut set value true
execute if score .selected _var matches 3 if data storage ult:temp PlayerSpectate{optOut: true} run data modify storage ult:temp Player.Spectate.optOut set value false
execute if score .selected _var matches 4 if data storage ult:temp PlayerSpectate{startGame: false} run data modify storage ult:temp Player.Spectate.startGame set value true
execute if score .selected _var matches 4 if data storage ult:temp PlayerSpectate{startGame: true} run data modify storage ult:temp Player.Spectate.startGame set value false

function ult:data/player/save_nbt
function ult:settings/player/spectate
