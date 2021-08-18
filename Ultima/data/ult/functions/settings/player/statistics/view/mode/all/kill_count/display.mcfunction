execute store result score .type _var run data get storage ult:temp SubArray[0].id
execute store result score .count _var run data get storage ult:temp SubArray[0].count

execute if score .type _var matches 1 run data modify storage ult:temp Category set value '"Slain: "'
execute if score .type _var matches 2 run data modify storage ult:temp Category set value '"Knocked Into Pit: "'
execute if score .type _var matches 3 run data modify storage ult:temp Category set value '"Fished Into Pit: "'
execute if score .type _var matches 4 run data modify storage ult:temp Category set value '"Shot: "'
execute if score .type _var matches 5 run data modify storage ult:temp Category set value '"Splashed With Potion: "'
execute if score .type _var matches 6 run data modify storage ult:temp Category set value '"Blown Up: "'
execute if score .type _var matches 7 run data modify storage ult:temp Category set value '"Slain While Burning: "'
execute if score .type _var matches 8 run data modify storage ult:temp Category set value '"Slain While Freezing: "'

scoreboard players set .const _var 100
scoreboard players operation .num _var = .count _var
scoreboard players operation .num _var *= .const _var
scoreboard players operation .num _var /= .kills _var
item modify entity @s enderchest.14 ult:stats/view/kd_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/kill_count/display