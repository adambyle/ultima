# Check for missing ender chest items and react accordingly
    function ult:settings/player/hotbar/workspace/gray_out
    # Lava Bucket: reset interface
    execute unless data entity @s EnderItems[{id: "minecraft:lava_bucket"}] run function ult:settings/player/hotbar/workspace/setup
    # Swords: auto ready settings
    execute if score @s menu = menu.hotbar_workspace const unless data entity @s EnderItems[{id: "minecraft:emerald"}] run function ult:settings/player/hotbar/workspace/verify
    # Structure Void: back
    execute if score @s menu = menu.hotbar_workspace const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] if score @s hotbar_map >= flag.map.start_default const if score @s hotbar_map <= flag.map.end_default const run function ult:settings/player/hotbar/default
    execute if score @s menu = menu.hotbar_workspace const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] if score @s hotbar_map >= flag.map.start_featured const if score @s hotbar_map <= flag.map.end_featured const run function ult:settings/player/hotbar/featured
