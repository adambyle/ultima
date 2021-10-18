# Set up GUI space
    # Clear chest
    data remove block 43 31 -12 Items
    # Change GUI flag
    scoreboard players operation .map_menu flag = flag.map_menu.main const
    # Clear inventory of GUI items
    clear @a #ult:all{GUI: true}

# Display icons
    # Grass Block: default maps
    item replace block 43 31 -12 container.3 with grass_block{GUI: true, display: {Lore: ['{"text": "Maps designed alongside Ultima.", "color": "gray"}'], Name: '{"text": "Default Maps", "color": "#90BE6D", "italic": false, "bold": true}'}}
    # Crafting Table: featured maps
    item replace block 43 31 -12 container.5 with crafting_table{GUI: true, display: {Lore: ['{"text": "Maps designed by players like you!", "color": "gray"}'], Name: '{"text": "Featured Maps", "color": "#F3722C", "italic": false, "bold": true}'}}
    # Jukebox: vote mode
    item replace block 43 31 -12 container.20 with jukebox{GUI: true, display: {Lore: ['{"text": "Vote between three different maps before each game.", "color": "gray"}'], Name: '{"text": "Vote Map", "color": "#43AA8B", "italic": false, "bold": true}'}}
    # Player Head: random mode
    item replace block 43 31 -12 container.22 with player_head{GUI: true, display: {Lore: ['{"text": "Play a completely random map each game.", "color": "gray"}'], Name: '{"text": "Random Map", "color": "#43AA8B", "italic": false, "bold": true}'}, SkullOwner: {Id: [I; 747841846,649743677, -1669641069, -1832488580], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjg4ZmE5NzNlYTQ0NGNjODA4NzY4ZWE0OGJmMjY1N2FlOWE1NmMwYWY2MDI3NWU4NDQ2M2IxOTU2MjliY2UifX19"}]}}}
    # Magenta Glazed Terracotta: cycle mode
    item replace block 43 31 -12 container.24 with magenta_glazed_terracotta{GUI: true, display: {Lore: ['{"text": "Go through every map in order.", "color": "gray"}'], Name: '{"text": "Cycle Map", "color": "#43AA8B", "italic": false, "bold": true}'}}
    # Mark selected specific map
    scoreboard players operation .temp_map var = .map flag
    function ult:data/map/get_details
    execute as @r run item modify block 0 0 0 container.0 ult:tech/chosen_map
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag >= flag.map.start_default const if score .map flag <= flag.map.end_default const run data modify block 43 31 -12 Items[{Slot: 3b}].tag.display.Lore append from block 0 0 0 Items[0].tag.display.Lore[0]
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag >= flag.map.start_featured const if score .map flag <= flag.map.end_featured const run data modify block 43 31 -12 Items[{Slot: 5b}].tag.display.Lore append from block 0 0 0 Items[0].tag.display.Lore[0]
    # Mark map mode, if needed
    execute if score .map_mode flag = flag.map_mode.vote const run data modify block 43 31 -12 Items[{Slot: 20b}].tag.display.Lore append value '{"text": "Selected.", "color": "#90BE6D"}'
    execute if score .map_mode flag = flag.map_mode.random const run data modify block 43 31 -12 Items[{Slot: 22b}].tag.display.Lore append value '{"text": "Selected.", "color": "#90BE6D"}'
    execute if score .map_mode flag = flag.map_mode.cycle const run data modify block 43 31 -12 Items[{Slot: 24b}].tag.display.Lore append value '{"text": "Selected.", "color": "#90BE6D"}'
