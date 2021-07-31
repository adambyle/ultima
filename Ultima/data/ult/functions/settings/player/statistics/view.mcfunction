# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.statistics_display const
    # Get player data
    function ult:data/player/get
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Display icons
    item replace entity @s enderchest.9 with structure_void{GUI: true, HideFlags: 127, display: {Name: '{"text": "Back", "color": "#43AA8B", "bold": true, "italic": false}'}}
    function ult:settings/player/statistics/timespan

# Get data set
    function ult:settings/player/statistics/get_sample

# Get footer data
    execute store result score .temp_map _var run data get storage ult:temp Player.StatMenu.map
    function ult:data/map/get_details
    data modify storage ult:temp Player.StatMenu.mapName set from storage ult:temp Map
    execute if data storage ult:temp Player.StatMenu{mode: 0b} run data modify storage ult:temp Player.StatMenu.modeName set value "All Modes"
    execute if data storage ult:temp Player.StatMenu{mode: 1b} run data modify storage ult:temp Player.StatMenu.modeName set value "Duels Mode"
    execute if data storage ult:temp Player.StatMenu{mode: 2b} run data modify storage ult:temp Player.StatMenu.modeName set value "Group PvP Modes"
    execute if data storage ult:temp Player.StatMenu{mode: 3b} run data modify storage ult:temp Player.StatMenu.modeName set value "Royale Mode"
    execute if data storage ult:temp Player.StatMenu{mode: 4b} run data modify storage ult:temp Player.StatMenu.modeName set value "Brawl Mode"
    function ult:data/player/save
