execute store result score .temp_map var run data get storage ult:temp SubArray[0].id
execute store result score .count var run data get storage ult:temp SubArray[0].count

function ult:data/map/get_details
data modify storage ult:temp Category set value '[{"storage": "ult:temp", "nbt": "Map"}, ": "]'

scoreboard players set .const var 100
execute store result score .num control run data get storage ult:temp SubArray[0].players
scoreboard players operation .den control = .num control
execute store result score .den_add var run data get storage ult:temp SubArray[0].losses
scoreboard players operation .den control += .den_add var
scoreboard players operation .num control *= .const var
scoreboard players set .places control 1
function ult:data/decimal
scoreboard players operation .num var = .count var
scoreboard players operation .num var *= .const var
scoreboard players operation .num var /= .games var

execute unless data storage ult:temp Player.StatMenu{mode: 0b} run item modify entity @s enderchest.16 ult:stats/view/all/map_entry
execute if data storage ult:temp Player.StatMenu{mode: 0b} run item modify entity @s enderchest.17 ult:stats/view/all/map_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/map_count/display
