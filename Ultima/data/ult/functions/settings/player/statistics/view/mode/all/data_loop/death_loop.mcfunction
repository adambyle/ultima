data remove storage ult:temp Merge
execute store result score .did var run data get storage ult:temp Nums[0]
scoreboard players set .type var 0
execute if score .did var = death_cause.normal const run scoreboard players set .type var 1
execute if score .did var = death_cause.abyss_fall const run scoreboard players set .type var 2
execute if score .did var = death_cause.hill_pitfall const run scoreboard players set .type var 2
execute if score .did var = death_cause.hill_pitfall_king const run scoreboard players set .type var 2
execute if score .did var = death_cause.glitch const run scoreboard players set .type var 2
execute if score .did var = death_cause.abyss_fished const run scoreboard players set .type var 3
execute if score .did var = death_cause.shot const run scoreboard players set .type var 4
execute if score .did var = death_cause.hill_shot const run scoreboard players set .type var 4
execute if score .did var = death_cause.shot_hard const run scoreboard players set .type var 4
execute if score .did var = death_cause.shot_aerial const run scoreboard players set .type var 4
execute if score .did var = death_cause.laser const run scoreboard players set .type var 4
execute if score .did var = death_cause.harming_potion const run scoreboard players set .type var 5
execute if score .did var = death_cause.snowballed const run scoreboard players set .type var 5
execute if score .did var = death_cause.exploded const run scoreboard players set .type var 6
execute if score .did var = death_cause.rocket const run scoreboard players set .type var 6
execute if score .did var = death_cause.fire const run scoreboard players set .type var 7
execute if score .did var = death_cause.lava const run scoreboard players set .type var 7
execute if score .did var = death_cause.froze const run scoreboard players set .type var 8
scoreboard players add .did var 100
execute if score .did var = death_cause.normal const run scoreboard players set .type var -1
execute if score .did var = death_cause.abyss_fall const run scoreboard players set .type var -2
execute if score .did var = death_cause.hill_pitfall const run scoreboard players set .type var -2
execute if score .did var = death_cause.hill_pitfall_king const run scoreboard players set .type var -2
execute if score .did var = death_cause.glitch const run scoreboard players set .type var -2
execute if score .did var = death_cause.abyss_fished const run scoreboard players set .type var -3
execute if score .did var = death_cause.shot const run scoreboard players set .type var -4
execute if score .did var = death_cause.hill_shot const run scoreboard players set .type var -4
execute if score .did var = death_cause.shot_hard const run scoreboard players set .type var -4
execute if score .did var = death_cause.shot_aerial const run scoreboard players set .type var -4
execute if score .did var = death_cause.laser const run scoreboard players set .type var -4
execute if score .did var = death_cause.harming_potion const run scoreboard players set .type var -5
execute if score .did var = death_cause.snowballed const run scoreboard players set .type var -5
execute if score .did var = death_cause.exploded const run scoreboard players set .type var -6
execute if score .did var = death_cause.rocket const run scoreboard players set .type var -6
execute if score .did var = death_cause.fire const run scoreboard players set .type var -7
execute if score .did var = death_cause.lava const run scoreboard players set .type var -7
execute if score .did var = death_cause.froze const run scoreboard players set .type var -8
execute if score .type var matches ..-1 run scoreboard players add .suicide var 1
execute store result storage ult:temp Merge.id byte 1 run scoreboard players get .type var
function ult:data/nbt/filter
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/data_loop/inc
execute unless data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/data_loop/append
data modify storage ult:temp Array set from storage ult:temp Rejects
data modify storage ult:temp Array append from storage ult:temp SubArray[0]
execute store result score .count var run data get storage ult:temp SubArray[0].count
scoreboard players operation .max_count var > .count var

data remove storage ult:temp Nums[0]
execute if data storage ult:temp Nums[0] run function ult:settings/player/statistics/view/mode/all/data_loop/death_loop
