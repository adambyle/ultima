# Check for missing chest items and react accordingly
    # Jukebox: vote mode
    execute unless data block 43 31 -12 Items[{id: "minecraft:jukebox"}] run function ult:settings/map/main/vote_mode
    # Player Head: random mode
    execute unless data block 43 31 -12 Items[{id: "minecraft:player_head"}] run function ult:settings/map/main/random_mode
    # Magenta Glazed Terracotta: cycle mode
    execute unless data block 43 31 -12 Items[{id: "minecraft:magenta_glazed_terracotta"}] run function ult:settings/map/main/cycle_mode
    # Grass Block: default maps
    execute if score .map_menu flag = flag.map_menu.main const unless data block 43 31 -12 Items[{id: "minecraft:grass_block"}] run function ult:settings/map/default
    # Crafting Table: featured maps
    execute if score .map_menu flag = flag.map_menu.main const unless data block 43 31 -12 Items[{id: "minecraft:crafting_table"}] run function ult:settings/map/featured
