# Have the game choose which map comes next
    function ult:data/map/choose_map

# Generate markers for each map
    scoreboard players operation .temp _var = flag.map.start_default const
    function ult:data/map/choose_map/marker_assign_map

# Choose three new distinct maps for voting
    data modify storage ult:players Votes set value [0, 0, 0]
    tag @e remove temp
    # Generate first map
    tag @e[tag=choose_map, limit=1, sort=random] add temp
    execute store result storage ult:players Votes[0] int 1 run scoreboard players get @e[tag=temp, limit=1] map
    kill @e[tag=temp]
    # ..second
    tag @e[tag=choose_map, limit=1, sort=random] add temp
    execute store result storage ult:players Votes[1] int 1 run scoreboard players get @e[tag=temp, limit=1] map
    kill @e[tag=temp]
    # ...third
    tag @e[tag=choose_map, limit=1, sort=random] add temp
    execute store result storage ult:players Votes[2] int 1 run scoreboard players get @e[tag=temp, limit=1] map
    kill @e[tag=temp]

# Clean up the map markers
    kill @e[tag=choose_map]

# Reset player votes
    scoreboard players reset * vote
