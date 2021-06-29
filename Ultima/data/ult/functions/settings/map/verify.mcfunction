# Make sure the selected map does not match the current one
    scoreboard players operation temp.map _var = .map flag
    scoreboard players operation .map flag = .selected_map _var
    scoreboard players operation .map_mode flag = flag.map_mode.selected const
    execute unless score temp.map _var = .map flag run function ult:settings/map/change

# Reset the active menu
    execute if score .map_menu flag = flag.map_menu.default const run function ult:settings/map/default
    execute if score .map_menu flag = flag.map_menu.featured const run function ult:settings/map/featured
