function ult:data/player/get
execute store result storage ult:temp Player.StatMenu.mode byte 1 run scoreboard players get .mode control
data modify storage ult:temp Player.StatMenu.map set value -1
function ult:data/player/save
function ult:settings/player/statistics/default
