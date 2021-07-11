# Set up GUI space
# Clear chest
    data remove block 43 31 -12 Items
    # Change GUI flag
    scoreboard players operation .map_menu flag = flag.map_menu.default const
    # Clear inventory of GUI items
    clear @a #ult:all{GUI: true}

# Display icons
    # Maps
    loot replace block 43 31 -12 container.3 loot ult:map_icon/manor
    loot replace block 43 31 -12 container.4 loot ult:map_icon/woodlands
    loot replace block 43 31 -12 container.5 loot ult:map_icon/dungeon
    loot replace block 43 31 -12 container.6 loot ult:map_icon/abyss
    loot replace block 43 31 -12 container.7 loot ult:map_icon/citadel
    loot replace block 43 31 -12 container.8 loot ult:map_icon/wasteland
    loot replace block 43 31 -12 container.12 loot ult:map_icon/town_square
    loot replace block 43 31 -12 container.13 loot ult:map_icon/last_stand
    loot replace block 43 31 -12 container.14 loot ult:map_icon/permafrost
    loot replace block 43 31 -12 container.15 loot ult:map_icon/shroom
    loot replace block 43 31 -12 container.16 loot ult:map_icon/hellscape
    loot replace block 43 31 -12 container.17 loot ult:map_icon/frontier
    loot replace block 43 31 -12 container.21 loot ult:map_icon/facility
    loot replace block 43 31 -12 container.22 loot ult:map_icon/meadow
    loot replace block 43 31 -12 container.23 loot ult:map_icon/leagues
    loot replace block 43 31 -12 container.24 loot ult:map_icon/coming_soon/default
    loot replace block 43 31 -12 container.25 loot ult:map_icon/coming_soon/default
    loot replace block 43 31 -12 container.26 loot ult:map_icon/coming_soon/default
    item replace block 43 31 -12 container.10 with structure_void{GUI: true, display: {Lore: ['{"text": "Back to Map Selection...", "color": "gray"}'], Name: '{"text": "Back", "color": "dark_aqua", "italic":false, "bold": true}'}}
    # Mark selected item
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.manor const run item modify block 43 31 -12 container.3 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.woodlands const run item modify block 43 31 -12 container.4 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.dungeon const run item modify block 43 31 -12 container.5 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.abyss const run item modify block 43 31 -12 container.6 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.citadel const run item modify block 43 31 -12 container.7 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.wasteland const run item modify block 43 31 -12 container.8 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.town_square const run item modify block 43 31 -12 container.12 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.last_stand const run item modify block 43 31 -12 container.13 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.permafrost const run item modify block 43 31 -12 container.14 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.shroom const run item modify block 43 31 -12 container.15 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.hellscape const run item modify block 43 31 -12 container.16 ult:tech/item_selected
    execute if score .map_mode flag = flag.map_mode.selected const if score .map flag = flag.map.frontier const run item modify block 43 31 -12 container.17 ult:tech/item_selected
