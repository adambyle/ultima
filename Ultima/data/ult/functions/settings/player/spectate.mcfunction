# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.spectate const
    # Get player data
    function ult:data/player/get_nbt
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    item replace entity @s enderchest.0 with structure_void{GUI: true, display: {Name: '{"text": "Save and Exit", "color": "dark_aqua", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.2 with dragon_egg{GUI: true, display: {Name: '{"text": "Joining World", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.4 with skeleton_skull{GUI: true, display: {Name: '{"text": "Death", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.6 with red_bed{GUI: true, display: {Name: '{"text": "Opting Out", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.8 with diamond_sword{GUI: true, display: {Name: '{"text": "Game Start", "bold": true, "italic": false, "color": "white"}'}, HideFlags: 63}
    item replace entity @s enderchest.9 with ender_eye{GUI: true, display: {Lore: ['{"text": "Use the panels to the right!", "color": "gray"}'], Name: '{"text": "Spectate Current Game", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.18 with crafting_table{GUI: true, display: {Lore: ['{"text": "Use the panels to the right!", "color": "gray"}'], Name: '{"text": "Go to Lobby", "bold": true, "italic": false, "color": "white"}'}}
    # Gray "disabled" panels
    item replace entity @s enderchest.11 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.20 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.13 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.22 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.24 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.26 with gray_stained_glass_pane{GUI: true, display: {Lore: ['{"text": "Click to enable", "color": "gray"}'], Name: '{"text": "Disabled", "bold": true, "italic": false, "color": "gray"}'}}

# Mark choices
    execute if data storage ult:temp Player.Spectate{joinWorld: true} run item replace entity @s enderchest.11 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{joinWorld: false} run item replace entity @s enderchest.20 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{death: true} run item replace entity @s enderchest.13 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{death: false} run item replace entity @s enderchest.22 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{optOut: true} run item replace entity @s enderchest.15 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{optOut: false} run item replace entity @s enderchest.24 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{startGame: true} run item replace entity @s enderchest.17 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{startGame: false} run item replace entity @s enderchest.26 with blue_stained_glass_pane{GUI: true, display: {Name: '{"text": "Enabled", "bold": true, "italic": false, "color": "blue"}'}}
