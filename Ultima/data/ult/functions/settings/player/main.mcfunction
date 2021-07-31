# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.main const
    # Get player data
    function ult:data/player/get
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    # Terracotta: opt in/out
    item replace entity @s[tag=player] enderchest.1 with oxidized_copper{GUI: true, display: {Lore: ['{"text": "Click to opt out.", "color": "gray"}'], Name: '{"text": "Opted in", "color": "#43AA8B", "italic": false, "bold": true}'}}
    item replace entity @s[tag=spectator] enderchest.1 with polished_deepslate{GUI: true, display: {Lore: ['{"text": "Click to opt in.", "color": "gray"}'], Name: '{"text": "Opted out", "color": "dark_gray", "italic": false, "bold": true}'}}
    # Golden Apple: hotbar settings
    item replace entity @s enderchest.20 with golden_apple{GUI: true, display: {Name: '{"text": "Hotbar Settings", "color": "#F9C74F", "bold": true, "italic": false}'}, HideFlags: 63}
    # Swords: auto ready settings
    execute if data storage ult:temp Player{autoReady: 0b} run item replace entity @s enderchest.3 with stone_sword{GUI: true, display: {Lore: ['{"text": "Control when the game automatically makes you ready.", "color": "gray"}'], Name: '{"text": "Never Auto-Ready", "color": "gray", "bold": true, "italic": false}'}, HideFlags: 63}
    execute if data storage ult:temp Player{autoReady: 1b} run item replace entity @s enderchest.3 with golden_sword{GUI: true, display: {Lore: ['{"text": "Control when the game automatically makes you ready.", "color": "gray"}'], Name: '{"text": "Auto-Ready When Not AFK", "color": "#F8961E", "bold": true, "italic": false}'}, HideFlags: 63}
    execute if data storage ult:temp Player{autoReady: 2b} run item replace entity @s enderchest.3 with netherite_sword{GUI: true, display: {Lore: ['{"text": "Control when the game automatically makes you ready.", "color": "gray"}'], Name: '{"text": "Always Auto-Ready", "color": "#F94144", "bold": true, "italic": false}'}, HideFlags: 63}
    # Heads: afk time out settings
    execute if data storage ult:temp Player{afkTime: 0b} run item replace entity @s enderchest.5 with player_head{GUI: true, display: {Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}'], Name: '{"text": "AFK after 5 seconds", "bold": true, "italic": false, "color": "#F9C74F"}'}}
    execute if data storage ult:temp Player{afkTime: 1b} run item replace entity @s enderchest.5 with zombie_head{GUI: true, display: {Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}'], Name: '{"text": "AFK after 10 seconds", "bold": true, "color": "#43AA8B", "italic": false}'}}
    execute if data storage ult:temp Player{afkTime: 2b} run item replace entity @s enderchest.5 with skeleton_skull{GUI: true, display: {Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}'], Name: '{"text": "AFK after 15 seconds", "bold": true, "color": "gray", "italic": false}'}}
    execute if data storage ult:temp Player{afkTime: 3b} run item replace entity @s enderchest.5 with wither_skeleton_skull{GUI: true, display: {Lore: ['{"text": "Control when the game thinks you\'re AFK.", "color": "gray"}'], Name: '{"text": "Never AFK", "bold": true, "color": "dark_gray", "italic": false}'}}
    # Ballot-like items: skip vote settings
    execute if data storage ult:temp Player{skipVote: 0b} run item replace entity @s enderchest.7 with paper{GUI: true, display: {Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}'], Name: '{"text": "Require Voting", "bold": true, "color": "white", "italic": false}'}}
    execute if data storage ult:temp Player{skipVote: 1b} run item replace entity @s enderchest.7 with jukebox{GUI: true, display: {Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}'], Name: '{"text": "Skip Voting When AFK (Only With Always Auto-Ready)", "bold": true, "color": "#F8961E", "italic": false}'}}
    execute if data storage ult:temp Player{skipVote: 2b} run item replace entity @s enderchest.7 with barrier{GUI: true, display: {Lore: ['{"text": "Control when the game makes you vote.", "color": "gray"}'], Name: '{"text": "Always Skip Voting", "bold": true, "color": "#F3722C", "italic": false}'}}
    # Eye of Ender: spectator settings
    item replace entity @s enderchest.22 with ender_eye{GUI: true, display: {Lore: ['{"text": "Control when the game makes you a spectator.", "color": "gray"}'], Name: '{"text": "Spectator Settings", "bold": true, "color": "#43AA8B", "italic": false}'}}
    # Book: statistics
    item replace entity @s enderchest.24 with book{GUI: true, display: {Lore: ['{"text": "Check your game statistics.", "color": "gray"}'], Name: '{"text": "Statistics", "bold": true, "color": "#7A3200", "italic": false}'}}
