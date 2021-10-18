execute store result score .type var run data get storage ult:temp SubArray[0].id
execute store result score .count var run data get storage ult:temp SubArray[0].count

execute if score .type var matches 1 run data modify storage ult:temp Category set value '"Slain: "'
execute if score .type var matches 2 run data modify storage ult:temp Category set value '"Knocked Into Pit: "'
execute if score .type var matches 3 run data modify storage ult:temp Category set value '"Fished Into Pit: "'
execute if score .type var matches 4 run data modify storage ult:temp Category set value '"Shot: "'
execute if score .type var matches 5 run data modify storage ult:temp Category set value '"Splashed With Potion: "'
execute if score .type var matches 6 run data modify storage ult:temp Category set value '"Blown Up: "'
execute if score .type var matches 7 run data modify storage ult:temp Category set value '"Slain While Burning: "'
execute if score .type var matches 8 run data modify storage ult:temp Category set value '"Slain While Freezing: "'

scoreboard players set .const var 100
scoreboard players operation .num var = .count var
scoreboard players operation .num var *= .const var
scoreboard players operation .num var /= .kills var
item modify entity @s enderchest.14 ult:stats/view/kd_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/kill_count/display
