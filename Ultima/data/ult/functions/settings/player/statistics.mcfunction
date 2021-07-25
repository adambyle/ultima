# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.stats const
    # Get player data
    function ult:data/player/get_nbt
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    item replace entity @s enderchest.9 with structure_void{GUI: true, HideFlags: 127, display: {Name: '{"text": "Save and Exit", "color": "#43AA8B", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.13 with diamond_sword{GUI: true, HideFlags: 63, display: {Name: '{"text": "Combined Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.14 with iron_sword{GUI: true, HideFlags: 63, display: {Name: '{"text": "Duels Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.15 with iron_axe{GUI: true, HideFlags: 63, display: {Name: '{"text": "Group PvP Stats", "bold": true, "italic": false}', Lore: ['{"text": "Combined stats for Royale and Brawl mode.", "color": "gray"}']}}
    item replace entity @s enderchest.16 with golden_helmet{GUI: true, HideFlags: 63, display: {Name: '{"text": "Royale Mode Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.17 with crossbow{GUI: true, HideFlags: 63, display: {Name: '{"text": "Brawl Mode Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.22 with grass_block{GUI: true, HideFlags: 63, display: {Name: '{"text": "Combined Stats (Map Specific)", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.23 with grass_block{GUI: true, HideFlags: 63, display: {Name: '{"text": "Duels Stats (Map Specific)", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.24 with grass_block{GUI: true, HideFlags: 63, display: {Name: '{"text": "Group PvP Stats (Map Specific)", "bold": true, "italic": false}', Lore: ['{"text": "Combined stats for Royale and Brawl mode.", "color": "gray"}']}}
    item replace entity @s enderchest.25 with grass_block{GUI: true, HideFlags: 63, display: {Name: '{"text": "Royale Mode Stats (Map Specific)", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.26 with grass_block{GUI: true, HideFlags: 63, display: {Name: '{"text": "Brawl Mode Stats (Map Specific)", "bold": true, "italic": false}'}}
    # Timespan icons
    execute if data storage ult:temp Player.StatMenu{timespan: 0b} run item replace entity @s enderchest.11 with gold_nugget{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 20 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
    execute if data storage ult:temp Player.StatMenu{timespan: 1b} run item replace entity @s enderchest.11 with gold_ingot{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 100 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
    execute if data storage ult:temp Player.StatMenu{timespan: 2b} run item replace entity @s enderchest.11 with gold_block{GUI: true, display: {Name: '[{"text": "Stats for ", "color": "#F8961E", "italic": false}, {"text": "Last 500 Games", "bold": true}]', Lore: ['{"text": "Click to cycle.", "color": "gray"}']}}
