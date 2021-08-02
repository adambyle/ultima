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
