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
    item replace entity @s enderchest.9 with structure_void{GUI: true, display: {Name: '{"text": "Save and Exit", "color": "dark_aqua", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.2 with dragon_egg{GUI: true, display: {Name: '{"text": "Joining World Mid-Game", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.4 with skeleton_skull{GUI: true, display: {Name: '{"text": "Death", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.6 with red_bed{GUI: true, display: {Name: '{"text": "Opting Out Mid-Game", "bold": true, "italic": false, "color": "white"}'}}
    item replace entity @s enderchest.8 with diamond_sword{GUI: true, display: {Name: '{"text": "Game Start (When Opted Out)", "bold": true, "italic": false, "color": "white"}'}, HideFlags: 63}
    # Gray "disabled" panels
    item replace entity @s enderchest.11 with white_terracotta{GUI: true, display: {Lore: ['{"text": "Click to spectate game on this trigger", "color": "gray"}'], Name: '{"text": "Lobby", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.13 with white_terracotta{GUI: true, display: {Lore: ['{"text": "Click to spectate game on this trigger", "color": "gray"}'], Name: '{"text": "Lobby", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.15 with white_terracotta{GUI: true, display: {Lore: ['{"text": "Click to spectate game on this trigger", "color": "gray"}'], Name: '{"text": "Lobby", "bold": true, "italic": false, "color": "gray"}'}}
    item replace entity @s enderchest.17 with white_terracotta{GUI: true, display: {Lore: ['{"text": "Click to spectate game on this trigger", "color": "gray"}'], Name: '{"text": "Lobby", "bold": true, "italic": false, "color": "gray"}'}}

# Mark choices
    execute if data storage ult:temp Player.Spectate{joinWorld: true} run item replace entity @s enderchest.11 with blue_terracotta{GUI: true, display: {Lore: ['{"text": "Click to go to lobby on this trigger", "color": "gray"}'], Name: '{"text": "Spectate", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{death: true} run item replace entity @s enderchest.13 with blue_terracotta{GUI: true, display: {Lore: ['{"text": "Click to go to lobby on this trigger", "color": "gray"}'], Name: '{"text": "Spectate", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{optOut: true} run item replace entity @s enderchest.15 with blue_terracotta{GUI: true, display: {Lore: ['{"text": "Click to go to lobby on this trigger", "color": "gray"}'], Name: '{"text": "Spectate", "bold": true, "italic": false, "color": "blue"}'}}
    execute if data storage ult:temp Player.Spectate{startGame: true} run item replace entity @s enderchest.17 with blue_terracotta{GUI: true, display: {Lore: ['{"text": "Click to go to lobby on this trigger", "color": "gray"}'], Name: '{"text": "Spectate", "bold": true, "italic": false, "color": "blue"}'}}
