execute if score .map_mode flag = flag.map_mode.cycle const run scoreboard players add .map flag 1
execute if score .map flag > flag.map.end_default const unless score .map flag matches 13.. run scoreboard players set .map flag 13
execute if score .map flag > flag.map.end_fandom const run scoreboard players set .map flag 1

scoreboard players operation .temp _var = flag.map.start_default const
function ult:data/map/choose_map/aec_assign_map

execute if score .map_mode flag = flag.map_mode.random const run scoreboard players operation .map flag = @e[tag=choose_map,limit=1,sort=random] _var
scoreboard players operation .random_map control = @e[tag=choose_map, limit=1, sort=random] map

scoreboard players set @e[tag=choose_map] _var 0
execute as @e[tag=choose_map] run function ult:data/map/choose_map/count_vote

execute if entity @a[scores={vote=0..}] if score .map_mode flag = flag.map_mode.vote const run function ult:data/map/choose_map/voting_done

kill @e[tag=choose_map]
kill @e[tag=vote_map]
