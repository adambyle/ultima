data modify storage ult:temp Game set from storage ult:temp Sample[0]
execute if data storage ult:temp Game{win: true} run scoreboard players add .wins var 1
execute store result score .dat var run data get storage ult:temp Game.deaths
scoreboard players operation .deaths var += .dat var
execute store result score .dat var run data get storage ult:temp Game.kills
scoreboard players operation .kills var += .dat var

scoreboard players set .max_count var 0
data modify storage ult:temp Array set from storage ult:temp Deaths
data modify storage ult:temp Nums set from storage ult:temp Game.deaths
execute if data storage ult:temp Nums[0] run function ult:settings/player/statistics/view/mode/all/data_loop/death_loop
data modify storage ult:temp Deaths set from storage ult:temp Array
scoreboard players operation .max_death var > .max_count var

scoreboard players set .max_count var 0
data modify storage ult:temp Array set from storage ult:temp Kills
data modify storage ult:temp Nums set from storage ult:temp Game.kills
execute if data storage ult:temp Nums[0] run function ult:settings/player/statistics/view/mode/all/data_loop/death_loop
data modify storage ult:temp Kills set from storage ult:temp Array
scoreboard players operation .max_kill var > .max_count var

data remove storage ult:temp Merge
data modify storage ult:temp Merge.id set from storage ult:temp Game.map
data modify storage ult:temp Array set from storage ult:temp Maps
function ult:data/nbt/filter
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/data_loop/map/inc
execute unless data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/data_loop/map/append
data modify storage ult:temp Maps set from storage ult:temp Rejects
data modify storage ult:temp Maps append from storage ult:temp SubArray[0]
execute store result score .count var run data get storage ult:temp SubArray[0].count
scoreboard players operation .max_map var > .count var

data remove storage ult:temp Merge
data modify storage ult:temp Merge.id set from storage ult:temp Game.Opponent
execute unless data storage ult:temp Game.Opponent run data modify storage ult:temp Merge.id set value [I; 0, 0, 0, 0]
data modify storage ult:temp Array set from storage ult:temp Opponents
function ult:data/nbt/filter
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/data_loop/map/inc
execute unless data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/data_loop/map/append
data modify storage ult:temp Opponents set from storage ult:temp Rejects
data modify storage ult:temp Opponents append from storage ult:temp SubArray[0]
execute store result score .count var run data get storage ult:temp SubArray[0].count
scoreboard players operation .max_opp var > .count var

data remove storage ult:temp Sample[0]
execute if data storage ult:temp Sample[0] run function ult:settings/player/statistics/view/mode/duels/data_loop
