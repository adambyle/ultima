data modify storage ult:temp Game set from storage ult:temp Sample[0]
execute if data storage ult:temp Game{win: true} run function ult:settings/player/statistics/view/mode/all/win
execute store result score .dat var run data get storage ult:temp Game.players
scoreboard players operation .faces var += .dat var
scoreboard players remove .faces var 1
execute store result score .dat var run data get storage ult:temp Game.deaths
scoreboard players operation .deaths var += .dat var
execute store result score .dat var run data get storage ult:temp Game.kills
scoreboard players operation .kills var += .dat var
execute store result score .dat var run data get storage ult:temp Game.brawl.freshkills
scoreboard players operation .freshkills var += .dat var
execute store result score .dat var run data get storage ult:temp Game.brawl.normkills
scoreboard players operation .normkills var += .dat var
execute store result score .dat var run data get storage ult:temp Game.brawl.revenge
scoreboard players operation .revenge var += .dat var
execute store result score .mode var run data get storage ult:temp Game.mode
execute if score .mode var = flag.game_mode.duels const run scoreboard players add .duels var 1
execute if score .mode var = flag.game_mode.royale const run scoreboard players add .royale var 1
execute if score .mode var = flag.game_mode.brawl const run scoreboard players add .brawl var 1

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
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/data_loop/map/inc
execute unless data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/data_loop/map/append
data modify storage ult:temp Maps set from storage ult:temp Rejects
data modify storage ult:temp Maps append from storage ult:temp SubArray[0]
execute store result score .count var run data get storage ult:temp SubArray[0].count
scoreboard players operation .max_map var > .count var

data remove storage ult:temp Sample[0]
execute if data storage ult:temp Sample[0] run function ult:settings/player/statistics/view/mode/all/data_loop
