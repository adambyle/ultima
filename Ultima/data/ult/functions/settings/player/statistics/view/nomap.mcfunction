function ult:data/player/get
data modify storage ult:temp Player.StatMenu.map set value -1
execute store result storage ult:temp Player.StatMenu.mode byte 1 run scoreboard players get .mode control
function ult:data/player/save
function ult:settings/player/statistics/view/mode
