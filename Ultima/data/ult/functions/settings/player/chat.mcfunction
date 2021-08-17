# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.chat const
    # Get player data
    function ult:data/player/get
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    item replace entity @s enderchest.0 with structure_void{GUI: true, display: {Name: '{"text": "Save and Exit", "color": "#43AA8B", "bold": true, "italic": false}'}}
    # Pronouns
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run item replace entity @s enderchest.18 with gray_terracotta{GUI: true, display: {Name: '{"text": "They/Them", "italic": false, "bold": true, "color": "gray"}', Lore: ['{"text": "Click to cycle.", "color": "dark_gray", "italic": false}']}}
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run item replace entity @s enderchest.18 with blue_terracotta{GUI: true, display: {Name: '{"text": "He/Him", "italic": false, "bold": true, "color": "#577590"}', Lore: ['{"text": "Click to cycle.", "color": "dark_gray", "italic": false}']}}
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run item replace entity @s enderchest.18 with pink_terracotta{GUI: true, display: {Name: '{"text": "She/Her", "italic": false, "bold": true, "color": "red"}', Lore: ['{"text": "Click to cycle.", "color": "dark_gray", "italic": false}']}}
    # Channel settings
    item replace entity @s enderchest.3 with diamond_sword{GUI: true, display: {Name: '{"text": "Game Channel (G)", "italic": false}', Lore: ['{"text": "Configure below.", "color": "gray", "italic": false}']}, HideFlags: 63}
    item replace entity @s enderchest.4 with grass_block{GUI: true, display: {Name: '{"text": "Notices Channel (N)", "italic": false}', Lore: ['{"text": "Configure below.", "color": "gray", "italic": false}']}}
    item replace entity @s enderchest.5 with ender_chest{GUI: true, display: {Name: '{"text": "Settings Channel (S)", "italic": false}', Lore: ['{"text": "Configure below.", "color": "gray", "italic": false}']}}
    item replace block 0 0 0 container.0 with lime_terracotta{GUI: true, display: {Name: '{"text": "Enabled", "italic": false, "color": "#90BE6D"}', Lore: ['{"text": "All messages will show.", "color": "gray", "italic": false}']}}
    item replace block 0 0 0 container.1 with orange_terracotta{GUI: true, display: {Name: '{"text": "Limited", "italic": false, "color": "#F8961E"}', Lore: ['{"text": "Messages are less verbose.", "color": "gray", "italic": false}']}}
    item replace block 0 0 0 container.2 with red_terracotta{GUI: true, display: {Name: '{"text": "Disabled", "italic": false, "color": "#F94144"}', Lore: ['{"text": "Only essential messages will show.", "color": "gray", "italic": false}']}}
    item replace entity @s[tag=chat.g.e] enderchest.12 from block 0 0 0 container.0
    item replace entity @s[tag=chat.g.l] enderchest.12 from block 0 0 0 container.1
    item replace entity @s[tag=chat.g.d] enderchest.12 from block 0 0 0 container.2
    item replace entity @s[tag=chat.n.e] enderchest.13 from block 0 0 0 container.0
    item replace entity @s[tag=chat.n.l] enderchest.13 from block 0 0 0 container.1
    item replace entity @s[tag=chat.n.d] enderchest.13 from block 0 0 0 container.2
    item replace entity @s[tag=chat.s.e] enderchest.14 from block 0 0 0 container.0
    item replace entity @s[tag=chat.s.l] enderchest.14 from block 0 0 0 container.1
    item replace entity @s[tag=chat.s.d] enderchest.14 from block 0 0 0 container.2
