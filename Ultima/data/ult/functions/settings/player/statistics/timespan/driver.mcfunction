function ult:data/player/get
execute store result score .timespan var run data get storage ult:temp Player.StatMenu.timespan
scoreboard players add .timespan var 1
execute if score .timespan var matches 3.. run scoreboard players remove .timespan var 3
execute store result storage ult:temp Player.StatMenu.timespan byte 1 run scoreboard players get .timespan var
function ult:data/player/save
