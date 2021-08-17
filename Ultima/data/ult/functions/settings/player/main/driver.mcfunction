# Check for missing ender chest items and react accordingly
    function ult:data/player/get
    # Terracotta: opt in/out
    execute as @s[tag=player] unless data entity @s EnderItems[{id: "minecraft:oxidized_copper"}] run function ult:settings/opt/out
    execute as @s[tag=spectator] unless data entity @s EnderItems[{id: "minecraft:polished_deepslate"}] run function ult:settings/opt/in
    # Swords: auto ready settings
    execute unless data entity @s EnderItems[{Slot: 3b}] run function ult:settings/player/auto_ready
    # Heads: afk time out settings
    execute unless data entity @s EnderItems[{Slot: 5b}] run function ult:settings/player/afk
    # Ballot-like items: skip vote settings
    execute unless data entity @s EnderItems[{Slot: 7b}] run function ult:settings/player/vote_skip
    # Eye of Ender: spectator settings
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:ender_eye"}] run function ult:settings/player/spectate
    # Golden Apple: hotbar settings
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:golden_apple"}] run function ult:settings/player/hotbar/default
    # Book: statistics
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:book"}] run function ult:settings/player/statistics
    # Command block: chat settings
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:command_block"}] run function ult:settings/player/chat
