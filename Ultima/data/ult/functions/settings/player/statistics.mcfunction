# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.statistics const
    # Get player data
    function ult:data/player/get
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    item replace entity @s enderchest.9 with structure_void{GUI: true, HideFlags: 127, display: {Name: '{"text": "Exit", "color": "#43AA8B", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.13 with diamond_sword{GUI: true, HideFlags: 63, display: {Name: '{"text": "Combined Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.14 with iron_sword{GUI: true, HideFlags: 63, display: {Name: '{"text": "Duels Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.15 with iron_axe{GUI: true, HideFlags: 63, display: {Name: '{"text": "Group PvP Stats", "bold": true, "italic": false}', Lore: ['{"text": "Combined stats for Royale and Brawl mode.", "color": "gray"}', '""']}}
    item replace entity @s enderchest.16 with golden_helmet{GUI: true, HideFlags: 63, display: {Name: '{"text": "Royale Mode Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.17 with crossbow{GUI: true, HideFlags: 63, display: {Name: '{"text": "Brawl Mode Stats", "bold": true, "italic": false}'}}
    item replace entity @s enderchest.22 with grass_block{GUI: true, HideFlags: 63, display: {Name: '[{"italic": false, "text": "Combined Stats", "bold": true}, {"text": " (Map Specific)", "bold": false}]'}}
    item replace entity @s enderchest.23 with grass_block{GUI: true, HideFlags: 63, display: {Name: '[{"italic": false, "text": "Duels Stats", "bold": true}, {"text": " (Map Specific)", "bold": false}]'}}
    item replace entity @s enderchest.24 with grass_block{GUI: true, HideFlags: 63, display: {Name: '[{"italic": false, "text": "Group PvP Stats", "bold": true}, {"text": " (Map Specific)", "bold": false}]', Lore: ['{"text": "Combined stats for Royale and Brawl mode.", "color": "gray"}', '""']}}
    item replace entity @s enderchest.25 with grass_block{GUI: true, HideFlags: 63, display: {Name: '[{"italic": false, "text": "Royale Mode Stats", "bold": true}, {"text": " (Map Specific)", "bold": false}]'}}
    item replace entity @s enderchest.26 with grass_block{GUI: true, HideFlags: 63, display: {Name: '[{"italic": false, "text": "Brawl Mode Stats", "bold": true}, {"text": " (Map Specific)", "bold": false}]'}}
    # Timespan icons
    function ult:settings/player/statistics/timespan

# Get games played
    # Get subarray of most recent games, record the number needed
    data modify storage ult:temp Array set from storage ult:temp Player.Games
    function ult:data/nbt/splice
    # Get total games recorded
    scoreboard players operation .sample var < .len control
    scoreboard players set .const var 100
    # Data for all games
    data modify storage ult:temp Games set from storage ult:temp SubArray
    execute store result score .entries var run data get storage ult:temp Games
    # Data for duels
    data modify storage ult:temp Array set from storage ult:temp Games
    data remove storage ult:temp Merge
    execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.duels const
    function ult:data/nbt/filter
    execute store result score .entries var run data get storage ult:temp SubArray
    scoreboard players operation .num var = .entries var
    scoreboard players operation .num var *= .const var
    scoreboard players operation .num var /= .sample var
    item modify entity @s enderchest.14 ult:stats/entry_count
    item modify entity @s enderchest.23 ult:stats/entry_count
    # Data for royale
    data modify storage ult:temp Array set from storage ult:temp Games
    data remove storage ult:temp Merge
    execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.royale const
    function ult:data/nbt/filter
    execute store result score .royale var run data get storage ult:temp SubArray
    scoreboard players operation .entries var = .royale var
    scoreboard players operation .num var = .royale var
    scoreboard players operation .num var *= .const var
    scoreboard players operation .num var /= .sample var
    item modify entity @s enderchest.16 ult:stats/entry_count
    item modify entity @s enderchest.25 ult:stats/entry_count
    # Data for brawl
    data modify storage ult:temp Array set from storage ult:temp Games
    data remove storage ult:temp Merge
    execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.brawl const
    function ult:data/nbt/filter
    execute store result score .entries var run data get storage ult:temp SubArray
    scoreboard players operation .num var = .entries var
    scoreboard players operation .num var *= .const var
    scoreboard players operation .num var /= .sample var
    item modify entity @s enderchest.17 ult:stats/entry_count
    item modify entity @s enderchest.26 ult:stats/entry_count
    # Data for combined multiplayer
    scoreboard players operation .entries var += .royale var
    scoreboard players operation .num var = .entries var
    scoreboard players operation .num var *= .const var
    scoreboard players operation .num var /= .sample var
    item modify entity @s enderchest.15 ult:stats/entry_count
    item modify entity @s enderchest.24 ult:stats/entry_count
