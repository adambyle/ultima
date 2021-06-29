# Have the game choose which map comes next
    function ult:data/map/choose_map

# Generate markers for each map
    scoreboard players operation .temp _var = flag.map.start_default const
    function ult:data/map/choose_map/marker_assign_map

# Choose three new distinct maps for voting
    data modify storage ult:data Votes set value [0, 0, 0]
    tag @e remove temp
    # Generate first map
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[0] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]
    # ..second
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[1] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]
    # ...third
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[2] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]

# Clean up the map markers
    kill @e[tag=choose_map]

# Reset player votes
    scoreboard players reset * vote
