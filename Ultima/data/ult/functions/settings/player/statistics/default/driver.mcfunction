# Check for missing chest items and react accordingly
    # Grass Block: default maps
    execute unless data entity @s EnderItems[{id: "minecraft:grass_block"}] run function ult:settings/player/statistics/default
    # Crafting Table: featured maps
    execute unless data entity @s EnderItems[{id: "minecraft:crafting_table"}] run function ult:settings/player/statistics/featured
    # Detect missing map icons
    scoreboard players operation .selected_map var = flag.map.none const
    execute unless data entity @s EnderItems[{id: "minecraft:dark_oak_planks"}] run scoreboard players operation .selected_map var = flag.map.manor const
    execute unless data entity @s EnderItems[{id: "minecraft:spruce_leaves"}] run scoreboard players operation .selected_map var = flag.map.woodlands const
    execute unless data entity @s EnderItems[{id: "minecraft:chiseled_stone_bricks"}] run scoreboard players operation .selected_map var = flag.map.dungeon const
    execute unless data entity @s EnderItems[{id: "minecraft:blackstone"}] run scoreboard players operation .selected_map var = flag.map.abyss const
    execute unless data entity @s EnderItems[{id: "minecraft:gold_block"}] run scoreboard players operation .selected_map var = flag.map.citadel const
    execute unless data entity @s EnderItems[{id: "minecraft:orange_terracotta"}] run scoreboard players operation .selected_map var = flag.map.wasteland const
    execute unless data entity @s EnderItems[{id: "minecraft:emerald_block"}] run scoreboard players operation .selected_map var = flag.map.town_square const
    execute unless data entity @s EnderItems[{id: "minecraft:cracked_deepslate_bricks"}] run scoreboard players operation .selected_map var = flag.map.last_stand const
    execute unless data entity @s EnderItems[{id: "minecraft:packed_ice"}] run scoreboard players operation .selected_map var = flag.map.permafrost const
    execute unless data entity @s EnderItems[{id: "minecraft:red_mushroom_block"}] run scoreboard players operation .selected_map var = flag.map.shroom const
    execute unless data entity @s EnderItems[{id: "minecraft:sand"}] run scoreboard players operation .selected_map var = flag.map.haven const
    execute unless data entity @s EnderItems[{id: "minecraft:purpur_block"}] run scoreboard players operation .selected_map var = flag.map.frontier const
    execute unless data entity @s EnderItems[{id: "minecraft:exposed_cut_copper"}] run scoreboard players operation .selected_map var = flag.map.facility const
    execute unless data entity @s EnderItems[{id: "minecraft:flowering_azalea_leaves"}] run scoreboard players operation .selected_map var = flag.map.meadow const
    execute unless data entity @s EnderItems[{id: "minecraft:dark_prismarine"}] run scoreboard players operation .selected_map var = flag.map.leagues const
    # If in range of allowed maps, select
    execute if score @s menu = menu.statistics_default const if score .selected_map var >= flag.map.start_default const if score .selected_map var <= flag.map.end_default const run function ult:settings/player/statistics/view/map
    execute if score @s menu = menu.statistics_default const if score .selected_map var > flag.map.end_default const run function ult:settings/player/statistics/default
    # Discard if empty slot
    execute if score @s menu = menu.statistics_default const unless data entity @s EnderItems[{Slot: 24b}] run function ult:settings/player/statistics/default
    execute if score @s menu = menu.statistics_default const unless data entity @s EnderItems[{Slot: 25b}] run function ult:settings/player/statistics/default
    execute if score @s menu = menu.statistics_default const unless data entity @s EnderItems[{Slot: 26b}] run function ult:settings/player/statistics/default
    # Structure Void: back
    execute if score @s menu = menu.statistics_default const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/statistics
