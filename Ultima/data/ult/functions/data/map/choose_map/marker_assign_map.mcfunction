# Make a marker with this map value
    tag @e remove temp
    summon marker ~ ~ ~ {Tags: ["temp", "choose_map"]}
    scoreboard players operation @e[limit=1, tag=temp] control = .temp var

# Increase the map value
    scoreboard players add .temp var 1
    # Carry over if through all the defaults
    execute if score .temp var > flag.map.end_default const unless score .temp var >= flag.map.start_featured const run scoreboard players operation .temp var = flag.map.start_featured const
    # Assign the next map if not through all maps
    execute unless score .temp var > flag.map.end_featured const run function ult:data/map/choose_map/marker_assign_map
