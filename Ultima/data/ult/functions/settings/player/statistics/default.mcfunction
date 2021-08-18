# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.statistics_default const
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

function ult:settings/player/statistics/get_sample

# Display icons
    # Map icons
    function ult:data/ender_chest/icons/default
    # Control icons
    item replace entity @s enderchest.1 with grass_block{GUI: true, display: {Name: '{"text": "Default Maps", "color": "#90BE6D", "italic": false, "bold": true}', Lore: ['{"text": "Choose a map to the right -->", "color": "white", "italic": false}']}}
    item replace entity @s enderchest.19 with crafting_table{GUI: true, display: {Name: '{"text": "Featured Maps", "color": "#F3722C", "italic": false, "bold": true}', Lore: ['{"text": "Click to switch views.", "color": "gray", "italic": true}']}}
    item replace entity @s enderchest.9 with structure_void{GUI: true, display: {Name: '{"text": "Back", "color": "#43AA8B", "italic": false, "bold": true}'}}

# Display footer stats
    data remove storage ult:temp Merge

    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.manor const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.3 ult:stats/entry_count

    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.woodlands const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.4 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.dungeon const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.5 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.abyss const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.6 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.citadel const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.7 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.wasteland const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.8 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.town_square const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.12 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.last_stand const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.13 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.permafrost const
    function ult:settings/player/statistics/map_footer
    item modify entity @s enderchest.14 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.shroom const
    function ult:settings/player/statistics/map_footer
    #item modify entity @s enderchest.15 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.hellscape const
    function ult:settings/player/statistics/map_footer
    #item modify entity @s enderchest.3 ult:stats/entry_count
    
    execute store result storage ult:temp Merge.map int 1 run scoreboard players get flag.map.frontier const
    function ult:settings/player/statistics/map_footer
    #item modify entity @s enderchest.3 ult:stats/entry_count
