function ult:data/map/choose_map

scoreboard players set .temp _var 1
function ult:data/map/choose_map/aec_assign_map

data modify storage ult:players Votes set value [0, 0, 0]

tag @e remove temp
tag @a remove temp
tag @e[tag=choose_map, limit=1, sort=random] add temp
execute store result storage ult:players Votes[0] int 1 run scoreboard players get @e[tag=temp, limit=1] map
kill @e[tag=temp]

tag @e[tag=choose_map, limit=1, sort=random] add temp
execute store result storage ult:players Votes[1] int 1 run scoreboard players get @e[tag=temp, limit=1] map
kill @e[tag=temp]

tag @e[tag=choose_map, limit=1, sort=random] add temp
execute store result storage ult:players Votes[2] int 1 run scoreboard players get @e[tag=temp, limit=1] map
kill @e[tag=temp]

kill @e[tag=choose_map]

execute store result score .vote_1 _var run data get storage ult:players Votes[0]
execute store result score .vote_2 _var run data get storage ult:players Votes[1]
execute store result score .vote_3 _var run data get storage ult:players Votes[2]

scoreboard players reset * vote
