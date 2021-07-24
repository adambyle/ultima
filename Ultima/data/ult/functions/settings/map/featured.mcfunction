# Set up GUI space
# Clear chest
    data remove block 43 31 -12 Items
    # Change GUI flag
    scoreboard players operation .map_menu flag = flag.map_menu.featured const
    # Clear inventory of GUI items
    clear @a #ult:all{GUI: true}

# Display icons
    # Maps
    loot replace block 43 31 -12 container.3 loot ult:map_icon/reflection
    loot replace block 43 31 -12 container.4 loot ult:map_icon/dracula
    loot replace block 43 31 -12 container.5 loot ult:map_icon/avanto
    loot replace block 43 31 -12 container.6 loot ult:map_icon/boxing
    loot replace block 43 31 -12 container.7 loot ult:map_icon/ancient
    loot replace block 43 31 -12 container.8 loot ult:map_icon/marooned
    loot replace block 43 31 -12 container.12 loot ult:map_icon/hill
    loot replace block 43 31 -12 container.13 loot ult:map_icon/bathhouse
    loot replace block 43 31 -12 container.14 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.15 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.16 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.17 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.21 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.22 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.23 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.24 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.25 loot ult:map_icon/coming_soon/featured
    loot replace block 43 31 -12 container.26 loot ult:map_icon/coming_soon/featured
    item replace block 43 31 -12 container.10 with structure_void{GUI: true, display: {Lore: ['{"text": "Back to Map Selection...", "color": "gray"}'], Name: '{"text": "Back", "color": "#43AA8B", "italic": false, "bold": true}'}}
    # Mark selected item
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.reflection const run item modify block 43 31 -12 container.3 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.dracula const run item modify block 43 31 -12 container.4 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.avanto const run item modify block 43 31 -12 container.5 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.boxing const run item modify block 43 31 -12 container.6 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.ancient const run item modify block 43 31 -12 container.7 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.marooned const run item modify block 43 31 -12 container.8 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.hill const run item modify block 43 31 -12 container.12 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.bathhouse const run item modify block 43 31 -12 container.13 ult:tech/item_selected
