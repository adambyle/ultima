# Check for missing chest items and react accordingly
    # Grass Block: default maps
    execute unless data entity @s EnderItems[{id: "minecraft:grass_block"}] run function ult:settings/player/hotbar/default
    # Crafting Table: featured maps
    execute unless data entity @s EnderItems[{id: "minecraft:crafting_table"}] run function ult:settings/player/hotbar/featured
    # Detect missing map icons
    scoreboard players operation .selected_map var = flag.map.none const
    execute unless data entity @s EnderItems[{id: "minecraft:white_stained_glass"}] run scoreboard players operation .selected_map var = flag.map.reflection const
    execute unless data entity @s EnderItems[{id: "minecraft:red_nether_bricks"}] run scoreboard players operation .selected_map var = flag.map.dracula const
    execute unless data entity @s EnderItems[{id: "minecraft:snow_block"}] run scoreboard players operation .selected_map var = flag.map.avanto const
    execute unless data entity @s EnderItems[{id: "minecraft:light_blue_wool"}] run scoreboard players operation .selected_map var = flag.map.boxing const
    execute unless data entity @s EnderItems[{id: "minecraft:ancient_debris"}] run scoreboard players operation .selected_map var = flag.map.ancient const
    execute unless data entity @s EnderItems[{id: "minecraft:nether_wart_block"}] run scoreboard players operation .selected_map var = flag.map.marooned const
    execute unless data entity @s EnderItems[{id: "minecraft:oak_wood"}] run scoreboard players operation .selected_map var = flag.map.hill const
    execute unless data entity @s EnderItems[{id: "minecraft:sea_lantern"}] run scoreboard players operation .selected_map var = flag.map.bathhouse const
    execute unless data entity @s EnderItems[{id: "minecraft:amethyst_block"}] run scoreboard players operation .selected_map var = flag.map.chasm const
    # If in range of allowed maps, select
    execute if score @s menu = menu.hotbar_featured const if score .selected_map var >= flag.map.start_featured const if score .selected_map var <= flag.map.end_featured const run function ult:settings/player/hotbar/workspace
    execute if score @s menu = menu.hotbar_featured const if score .selected_map var > flag.map.end_featured const run function ult:settings/player/hotbar/featured
    # Discard if empty slot
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 14b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 15b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 16b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 17b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 21b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 22b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 23b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 24b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 25b}] run function ult:settings/player/hotbar/featured
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{Slot: 26b}] run function ult:settings/player/hotbar/featured
    # Structure Void: back
    execute if score @s menu = menu.hotbar_featured const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
