# Have the game choose which map comes next
    scoreboard players set .count_votes control 0
    function ult:data/map/choose_map

# Generate markers for each map
    scoreboard players operation .temp var = flag.map.start_default const
    function ult:data/map/choose_map/marker_assign_map

# Choose three new distinct maps for voting
    data modify storage ult:data Votes set value [0, 0, 0]
    # Generate first map
    tag @e remove temp
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[0] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]
    # ..second
    tag @e remove temp
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[1] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]
    # ...third
    tag @e remove temp
    tag @e[sort=random, limit=1, tag=choose_map] add temp
    execute store result storage ult:data Votes[2] int 1 run scoreboard players get @e[limit=1, tag=temp] control
    kill @e[tag=temp]

# Clean up the map markers
    kill @e[tag=choose_map]

# Reset player votes
    scoreboard players reset * vote
