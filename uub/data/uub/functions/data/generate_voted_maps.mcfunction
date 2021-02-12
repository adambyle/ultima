scoreboard players set #temp _var 1
function uub:data/choose_map/aec_assign_map

data modify storage uub:map_data Votes set value [0, 0, 0]

tag @e remove temp
tag @e[tag=choose_map,limit=1,sort=random] add temp
execute store result storage uub:map_data Votes[0] int 1 run scoreboard players get @e[tag=temp,limit=1] map
kill @e[tag=temp]

tag @e remove temp
tag @e[tag=choose_map,limit=1,sort=random] add temp
execute store result storage uub:map_data Votes[1] int 1 run scoreboard players get @e[tag=temp,limit=1] map
kill @e[tag=temp]

tag @e remove temp
tag @e[tag=choose_map,limit=1,sort=random] add temp
execute store result storage uub:map_data Votes[2] int 1 run scoreboard players get @e[tag=temp,limit=1] map
kill @e[tag=temp]

kill @e[tag=choose_map]
