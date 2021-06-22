# Make a marker with this map value
    tag @e remove temp
    summon marker ~ ~ ~ {Tags: ["temp", "choose_map"]}
    scoreboard players operation @e[tag=temp, limit=1] control = .temp _var

# Increase the map value
    scoreboard players add .temp _var 1
    # Carry over if through all the defaults
    execute if score .temp _var > flag.map.end_default const unless score .temp _var > flag.map.start_fandom const run scoreboard players operation .temp _var = flag.map.start_fandom const
    # Assign the next map if not through all maps
    execute unless score .temp _var > flag.map.end_fandom const run function ult:data/map/choose_map/marker_assign_map
