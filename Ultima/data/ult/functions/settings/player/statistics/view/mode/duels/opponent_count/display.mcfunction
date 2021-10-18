execute store result score .count var run data get storage ult:temp SubArray[0].count
execute store result score .wins var run data get storage ult:temp SubArray[0].wins
data remove storage ult:temp Merge
data modify storage ult:temp Merge.UUID set from storage ult:temp SubArray[0].id
data modify storage ult:temp Array set from storage ult:players Players
function ult:data/nbt/filter
data modify storage ult:temp Category set value '[{"storage": "ult:temp", "nbt": "SubArray[0].Name", "interpret": true}, ": "]'
execute unless data storage ult:temp SubArray[0].Name run data modify storage ult:temp Category set value '"[Name Removed]: "'
execute if data storage ult:temp Merge{UUID: [I; 0, 0, 0, 0]} run data modify storage ult:temp Category set value '"[Name Unrecorded]: "'

scoreboard players set .const var 100
scoreboard players operation .num control = .wins var
scoreboard players operation .num control *= .const var
scoreboard players operation .den control = .count var
scoreboard players set .places control 1
function ult:data/decimal
scoreboard players operation .num var = .count var
scoreboard players operation .num var *= .const var
scoreboard players operation .num var /= .games var

item modify entity @s enderchest.16 ult:stats/view/duels/map_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/duels/map_count/display
