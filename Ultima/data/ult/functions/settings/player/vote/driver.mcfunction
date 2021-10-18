# Check for missing chest items and react accordingly
    # Structure Void: back
    execute if score .mandatory control matches 0 if score @s menu = menu.vote const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/vote/exit
    # Lava Bucket: don't vote
    execute if score @s menu = menu.vote const unless data entity @s EnderItems[{id: "minecraft:lava_bucket"}] run function ult:settings/player/vote/skip
    # Test for vote selections
    scoreboard players operation .selected_map var = flag.map.none const
    execute unless data entity @s EnderItems[{Slot: 2b}] store result score .selected_map var run data get storage ult:data Votes[0]
    execute unless data entity @s EnderItems[{Slot: 4b}] store result score .selected_map var run data get storage ult:data Votes[1]
    execute unless data entity @s EnderItems[{Slot: 6b}] store result score .selected_map var run data get storage ult:data Votes[2]
    execute if score @s menu = menu.vote const if score .selected_map var >= flag.map.start_default const run function ult:settings/player/vote/map_selected
