# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.hotbar_featured const
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    # Map icons
    function ult:data/ender_chest/icons/featured
    # Control icons
    item replace entity @s enderchest.1 with grass_block{GUI: true, display: {Name: '{"text": "Default Maps", "color": "#90BE6D", "italic": false, "bold": true}', Lore: ['{"text": "Click to switch views.", "color": "gray", "italic": true}']}}
    item replace entity @s enderchest.19 with crafting_table{GUI: true, display: {Name: '{"text": "Featured Maps", "color": "#F3722C", "italic": false, "bold": true}', Lore: ['{"text": "Choose a map to the right -->", "color": "white", "italic": false}']}}
    item replace entity @s enderchest.9 with structure_void{GUI: true, display: {Name: '{"text": "Back", "color": "#43AA8B", "italic": false, "bold": true}'}}
