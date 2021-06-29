# Check for missing chest items and react accordingly
    # Structure Void: back
    execute unless data block 43 31 -12 Items[{id: "minecraft:structure_void"}] run function ult:settings/map/main
    # Detect missing map icons
    scoreboard players operation .selected_map _var = flag.map.none const
    execute unless data block 43 31 -12 Items[{id: "minecraft:white_stained_glass"}] run scoreboard players operation .selected_map _var = flag.map.reflection const
    execute unless data block 43 31 -12 Items[{id: "minecraft:red_nether_bricks"}] run scoreboard players operation .selected_map _var = flag.map.dracula const
    execute unless data block 43 31 -12 Items[{id: "minecraft:snow_block"}] run scoreboard players operation .selected_map _var = flag.map.avanto const
    execute unless data block 43 31 -12 Items[{id: "minecraft:light_blue_wool"}] run scoreboard players operation .selected_map _var = flag.map.boxing const
    execute unless data block 43 31 -12 Items[{id: "minecraft:ancient_debris"}] run scoreboard players operation .selected_map _var = flag.map.ancient const
    execute unless data block 43 31 -12 Items[{id: "minecraft:nether_wart_block"}] run scoreboard players operation .selected_map _var = flag.map.marooned const
    execute unless data block 43 31 -12 Items[{id: "minecraft:oak_wood"}] run scoreboard players operation .selected_map _var = flag.map.hill const
    execute unless data block 43 31 -12 Items[{id: "minecraft:sea_lantern"}] run scoreboard players operation .selected_map _var = flag.map.bathhouse const
    # If in range of allowed maps, select
    execute if score .map_menu flag = flag.map_menu.featured const if score .selected_map _var >= flag.map.start_featured const if score .selected_map _var <= flag.map.end_featured const run function ult:settings/map/verify
    # Discard if coming soon
    execute if score .map_menu flag = flag.map_menu.featured const if score .selected_map _var >= flag.map.end_featured const run function ult:settings/map/featured
    # Discard if empty slot
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 14b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 15b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 16b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 17b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 21b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 22b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 23b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 24b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 25b}] run function ult:settings/map/featured
    execute if score .map_menu flag = flag.map_menu.featured const unless data block 43 31 -12 Items[{Slot: 26b}] run function ult:settings/map/featured
