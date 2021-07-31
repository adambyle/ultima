function ult:data/player/get
execute store result score .timespan _var run data get storage ult:temp Player.StatMenu.timespan
scoreboard players add .timespan _var 1
execute if score .timespan _var matches 3.. run scoreboard players remove .timespan _var 3
execute store result storage ult:temp Player.StatMenu.timespan byte 1 run scoreboard players get .timespan _var
function ult:data/player/save
