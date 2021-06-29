# Check for missing chest items and react accordingly
    # Structure Void: back
    execute unless data block 43 31 -12 Items[{id: "minecraft:structure_void"}] run function ult:settings/map/main
    # Detect missing map icons
    scoreboard players operation .selected_map _var = flag.map.none const
    execute unless data block 43 31 -12 Items[{id: "minecraft:dark_oak_planks"}] run scoreboard players operation .selected_map _var = flag.map.manor const
    execute unless data block 43 31 -12 Items[{id: "minecraft:spruce_leaves"}] run scoreboard players operation .selected_map _var = flag.map.woodlands const
    execute unless data block 43 31 -12 Items[{id: "minecraft:chiseled_stone_bricks"}] run scoreboard players operation .selected_map _var = flag.map.dungeon const
    execute unless data block 43 31 -12 Items[{id: "minecraft:blackstone"}] run scoreboard players operation .selected_map _var = flag.map.abyss const
    execute unless data block 43 31 -12 Items[{id: "minecraft:gold_block"}] run scoreboard players operation .selected_map _var = flag.map.citadel const
    execute unless data block 43 31 -12 Items[{id: "minecraft:red_sand"}] run scoreboard players operation .selected_map _var = flag.map.wasteland const
    execute unless data block 43 31 -12 Items[{id: "minecraft:emerald_block"}] run scoreboard players operation .selected_map _var = flag.map.town_square const
    execute unless data block 43 31 -12 Items[{id: "minecraft:cracked_deepslate_bricks"}] run scoreboard players operation .selected_map _var = flag.map.last_stand const
    execute unless data block 43 31 -12 Items[{id: "minecraft:packed_ice"}] run scoreboard players operation .selected_map _var = flag.map.permafrost const
    execute unless data block 43 31 -12 Items[{id: "minecraft:red_mushroom_block"}] run scoreboard players operation .selected_map _var = flag.map.shroom const
    execute unless data block 43 31 -12 Items[{id: "minecraft:netherrack"}] run scoreboard players operation .selected_map _var = flag.map.hellscape const
    execute unless data block 43 31 -12 Items[{id: "minecraft:end_stone"}] run scoreboard players operation .selected_map _var = flag.map.frontier const
    execute unless data block 43 31 -12 Items[{id: "minecraft:exposed_cut_copper"}] run scoreboard players operation .selected_map _var = flag.map.facility const
    execute unless data block 43 31 -12 Items[{id: "minecraft:flowering_azalea_leaves"}] run scoreboard players operation .selected_map _var = flag.map.meadow const
    execute unless data block 43 31 -12 Items[{id: "minecraft:dark_prismarine"}] run scoreboard players operation .selected_map _var = flag.map.leagues const
    # If in range of allowed maps, select
    execute if score .map_menu flag = flag.map_menu.default const if score .selected_map _var >= flag.map.start_default const if score .selected_map _var <= flag.map.end_default const run function ult:settings/map/verify
    # Discard if coming soon
    execute if score .map_menu flag = flag.map_menu.default const if score .selected_map _var >= flag.map.end_default const run function ult:settings/map/default
    # Discard if empty slot
    execute if score .map_menu flag = flag.map_menu.default const unless data block 43 31 -12 Items[{Slot: 24b}] run function ult:settings/map/default
    execute if score .map_menu flag = flag.map_menu.default const unless data block 43 31 -12 Items[{Slot: 25b}] run function ult:settings/map/default
    execute if score .map_menu flag = flag.map_menu.default const unless data block 43 31 -12 Items[{Slot: 26b}] run function ult:settings/map/default
