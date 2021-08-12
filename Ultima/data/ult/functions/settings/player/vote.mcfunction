# Set up GUI space
    # Clear ender chest
    function ult:settings/player/clear
    # Change GUI flag
    scoreboard players operation @s menu = menu.vote const
    # Clear inventory of GUI items
    clear @s #ult:all{GUI: true}

# Set voting icons
    execute store result score .temp_map _var run data get storage ult:data Votes[0]
    function ult:settings/player/vote/set_loot_table
    item replace entity @s enderchest.2 from block 0 0 0 container.0
    execute store result score .temp_map _var run data get storage ult:data Votes[1]
    function ult:settings/player/vote/set_loot_table
    item replace entity @s enderchest.4 from block 0 0 0 container.0
    execute store result score .temp_map _var run data get storage ult:data Votes[2]
    function ult:settings/player/vote/set_loot_table
    item replace entity @s enderchest.6 from block 0 0 0 container.0

# Set other icons
    execute if score .mandatory control matches 0 run item replace entity @s enderchest.21 with structure_void{GUI: true, display: {Lore: ['{"text": "Click if you are not ready to play.", "color": "gray"}'], Name: '{"text": "Cancel", "color": "#43AA8B", "bold": true, "italic": false}'}}
    execute if score .mandatory control matches 0 run item replace entity @s enderchest.23 with lava_bucket{GUI: true, display: {Lore: ['{"text": "Choose this to skip adding your vote to the pool.", "color": "gray"}'], Name: '{"text": "Don\'t Vote", "color": "#F3722C", "bold": true, "italic": false}'}}
    execute if score .mandatory control matches 1 run item replace entity @s enderchest.22 with lava_bucket{GUI: true, display: {Lore: ['{"text": "Choose this to skip adding your vote to the pool.", "color": "gray"}'], Name: '{"text": "Don\'t Vote", "color": "#F3722C", "bold": true, "italic": false}'}}

# Go to station
    gamemode adventure
    effect clear @s night_vision
    execute as @e[tag=vote_station] store result score @s control at @s if entity @a[distance=..2]
    tp @s @e[limit=1, tag=vote_station, scores={control=0}]
    execute unless entity @e[scores={control=0}, tag=vote_station] run tp @s @e[limit=1, tag=vote_station]
