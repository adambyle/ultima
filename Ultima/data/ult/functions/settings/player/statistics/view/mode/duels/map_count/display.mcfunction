execute store result score .temp_map _var run data get storage ult:temp SubArray[0].id
execute store result score .count _var run data get storage ult:temp SubArray[0].count
execute store result score .wins _var run data get storage ult:temp SubArray[0].wins

function ult:data/map/get_details
data modify storage ult:temp Category set value '[{"storage": "ult:temp", "nbt": "Map"}, ": "]'

scoreboard players set .const _var 100
scoreboard players operation .num control = .wins _var
scoreboard players operation .num control *= .const _var
scoreboard players operation .den control = .count _var
scoreboard players set .places control 1
function ult:data/decimal
scoreboard players operation .num _var = .count _var
scoreboard players operation .num _var *= .const _var
scoreboard players operation .num _var /= .games _var

item modify entity @s enderchest.17 ult:stats/view/duels/map_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/map_count/display
