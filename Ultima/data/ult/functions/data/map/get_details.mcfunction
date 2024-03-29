# Get the author
    execute if score .temp_map var >= flag.map.start_default const if score .temp_map var <= flag.map.end_default const run data modify storage ult:temp Author set value "Adam Byle"
    execute if score .temp_map var = flag.map.reflection const run data modify storage ult:temp Author set value "Jonathan Deiss"
    execute if score .temp_map var = flag.map.dracula const run data modify storage ult:temp Author set value "Reed Aldridge"
    execute if score .temp_map var = flag.map.avanto const run data modify storage ult:temp Author set value "TuckThuDuck"
    execute if score .temp_map var = flag.map.boxing const run data modify storage ult:temp Author set value "Reed Aldridge"
    execute if score .temp_map var = flag.map.ancient const run data modify storage ult:temp Author set value "TuckThuDuck"
    execute if score .temp_map var = flag.map.marooned const run data modify storage ult:temp Author set value "Reed Aldridge"
    execute if score .temp_map var = flag.map.hill const run data modify storage ult:temp Author set value "Jonathan Deiss"
    execute if score .temp_map var = flag.map.bathhouse const run data modify storage ult:temp Author set value "Jonathan Deiss"
    execute if score .temp_map var = flag.map.chasm const run data modify storage ult:temp Author set value "Reed Aldridge"

# Get the map name
    execute if score .temp_map var = flag.map.none const run data modify storage ult:temp Map set value "All Maps"
    execute if score .temp_map var = flag.map.manor const run data modify storage ult:temp Map set value "Manor"
    execute if score .temp_map var = flag.map.woodlands const run data modify storage ult:temp Map set value "Woodlands"
    execute if score .temp_map var = flag.map.dungeon const run data modify storage ult:temp Map set value "Dungeon"
    execute if score .temp_map var = flag.map.abyss const run data modify storage ult:temp Map set value "Abyss"
    execute if score .temp_map var = flag.map.citadel const run data modify storage ult:temp Map set value "Citadel"
    execute if score .temp_map var = flag.map.wasteland const run data modify storage ult:temp Map set value "Wasteland"
    execute if score .temp_map var = flag.map.town_square const run data modify storage ult:temp Map set value "Town Square"
    execute if score .temp_map var = flag.map.last_stand const run data modify storage ult:temp Map set value "Last Stand"
    execute if score .temp_map var = flag.map.permafrost const run data modify storage ult:temp Map set value "Permafrost"
    execute if score .temp_map var = flag.map.shroom const run data modify storage ult:temp Map set value "Shroom"
    execute if score .temp_map var = flag.map.haven const run data modify storage ult:temp Map set value "Haven"
    execute if score .temp_map var = flag.map.frontier const run data modify storage ult:temp Map set value "Frontier"
    execute if score .temp_map var = flag.map.facility const run data modify storage ult:temp Map set value "Facility"
    execute if score .temp_map var = flag.map.meadow const run data modify storage ult:temp Map set value "Meadow"
    execute if score .temp_map var = flag.map.leagues const run data modify storage ult:temp Map set value "Leagues Beneath"
    execute if score .temp_map var = flag.map.reflection const run data modify storage ult:temp Map set value "Reflection"
    execute if score .temp_map var = flag.map.dracula const run data modify storage ult:temp Map set value "Dracula's Castle"
    execute if score .temp_map var = flag.map.avanto const run data modify storage ult:temp Map set value "Avanto"
    execute if score .temp_map var = flag.map.boxing const run data modify storage ult:temp Map set value "Boxing Ring"
    execute if score .temp_map var = flag.map.ancient const run data modify storage ult:temp Map set value "Ancient Mines"
    execute if score .temp_map var = flag.map.marooned const run data modify storage ult:temp Map set value "Marooned"
    execute if score .temp_map var = flag.map.hill const run data modify storage ult:temp Map set value "The Hill"
    execute if score .temp_map var = flag.map.bathhouse const run data modify storage ult:temp Map set value "Bathhouse"
    execute if score .temp_map var = flag.map.chasm const run data modify storage ult:temp Map set value "Chasm"
