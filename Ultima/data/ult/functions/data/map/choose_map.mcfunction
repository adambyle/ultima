# Cycle through maps
    # If on cycle mode, increment by one
    execute if score .map_mode flag = flag.map_mode.cycle const run scoreboard players add .map flag 1
    # If above the default map limit, bring to fandom map start
    execute if score .map flag > flag.map.end_default const unless score .map flag >= flag.map.start_fandom const run scoreboard players operation .map flag = flag.map.start_fandom const
    # If above the default fandom limit, bring to default map start
    execute if score .map flag > flag.map.end_fandom const run scoreboard players operation .map flag = flag.map.start_default const

# Generate markers for each map
    scoreboard players operation .temp _var = flag.map.start_default const
    function ult:data/map/choose_map/marker_assign_map

# Generate the random selection of a map
    # If on random mode, make it the active map
    execute if score .map_mode flag = flag.map_mode.random const run scoreboard players operation .map flag = @e[tag=choose_map, limit=1, sort=random] _var
    # Generate a backup random for failed votes
    scoreboard players operation .random_map control = @e[tag=choose_map, limit=1, sort=random] map

# Count the votes for each map
    scoreboard players set @e[tag=choose_map] _var 0
    execute as @e[tag=choose_map] run function ult:data/map/choose_map/count_vote

# If anybody voted, determine the vote winner
    scoreboard players set .count_votes _var 0
    # Only announce votes if voting has occured
    execute as @a if score @s vote matches -2147483648..2147483647 run scoreboard players set .count_votes _var 1
    # Proceed to announce and apply votes if on vote mode
    execute if score .count_votes _var matches 1 if score .map_mode flag = flag.map_mode.vote const run function ult:data/map/choose_map/voting_done

# Clean up
    kill @e[tag=choose_map]
    kill @e[tag=vote_map]
