function ult:spawn/assign_queue
scoreboard players set @a[tag=player, tag=!alive] respawn -1
tellraw @a[tag=player, tag=!alive, tag=chat.g.e] [{"text": "\nG: ", "color": "dark_gray"}, {"text": "You were not a starting player! Please wait to spawn.", "color": "#577590", "bold": true}]
function ult:start/spectate

function ult:data/player/get

# Players already in spectator mode
execute if data storage ult:temp Player.Spectate{startGame: true} run function ult:spectate
