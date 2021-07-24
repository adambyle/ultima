# Cycle through maps
    # If on cycle mode, increment by one
    execute if score .map_mode flag = flag.map_mode.cycle const run scoreboard players add .map flag 1
    # If above the default map limit, bring to featured map start
    execute if score .map flag > flag.map.end_default const unless score .map flag >= flag.map.start_featured const run scoreboard players operation .map flag = flag.map.start_featured const
    # If above the default featured limit, bring to default map start
    execute if score .map flag > flag.map.end_featured const run scoreboard players operation .map flag = flag.map.start_default const

# Generate markers for each map
    scoreboard players operation .temp _var = flag.map.start_default const
    function ult:data/map/choose_map/marker_assign_map

# Generate the random selection of a map
    # If on random mode, make it the active map
    execute if score .map_mode flag = flag.map_mode.random const run scoreboard players operation .map flag = @e[sort=random, limit=1, tag=choose_map] control
    # Generate a backup random for failed votes
    scoreboard players operation .random_map control = @e[sort=random, limit=1, tag=choose_map] control

# Count the votes for each map
    scoreboard players set @e[tag=choose_map] _var 0
    execute as @e[tag=choose_map] run function ult:data/map/choose_map/count_vote

# If anybody voted, determine the vote winner
    # Proceed to announce and apply votes if on vote mode
    execute if score .count_votes control matches 1 if score .map_mode flag = flag.map_mode.vote const run function ult:data/map/choose_map/voting_done

# Clean up
    kill @e[tag=choose_map]
    kill @e[tag=vote_map]
