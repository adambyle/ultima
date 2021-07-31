execute store result score .temp_map _var run data get storage ult:temp SubArray[0].id
execute store result score .count _var run data get storage ult:temp SubArray[0].count

function ult:data/map/get_details
data modify storage ult:temp Category set value '[{"storage": "ult:temp", "nbt": "Map"}, ": "]'

scoreboard players set .const _var 100
execute store result score .num control run data get storage ult:temp SubArray[0].players
scoreboard players operation .den control = .num control
execute store result score .den_add _var run data get storage ult:temp SubArray[0].losses
scoreboard players operation .den control += .den_add _var
scoreboard players operation .num control *= .const _var
scoreboard players set .places control 1
function ult:data/decimal
scoreboard players operation .num _var = .count _var
scoreboard players operation .num _var *= .const _var
scoreboard players operation .num _var /= .games _var

execute unless data storage ult:temp Player.StatMenu{mode: 0b} run item modify entity @s enderchest.16 ult:stats/view/all/map_entry
execute if data storage ult:temp Player.StatMenu{mode: 0b} run item modify entity @s enderchest.17 ult:stats/view/all/map_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/map_count/display
