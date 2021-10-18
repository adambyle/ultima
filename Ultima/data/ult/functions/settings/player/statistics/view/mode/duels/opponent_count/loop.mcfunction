data remove storage ult:temp Merge
execute store result storage ult:temp Merge.count int 1 run scoreboard players get .iter var
data modify storage ult:temp Array set from storage ult:temp Opponents
function ult:data/nbt/filter
data modify storage ult:temp Opponents set from storage ult:temp Rejects

execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/opponent_count/display
scoreboard players remove .iter var 1
execute if score .iter var matches 1.. run function ult:settings/player/statistics/view/mode/duels/opponent_count/loop
