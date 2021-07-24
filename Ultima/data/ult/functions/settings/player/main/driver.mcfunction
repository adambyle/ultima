# Check for missing ender chest items and react accordingly
    # Terracotta: opt in/out
    execute as @s[tag=player] unless data entity @s EnderItems[{id: "minecraft:oxidized_copper"}] run function ult:settings/opt/out
    execute as @s[tag=spectator] unless data entity @s EnderItems[{id: "minecraft:polished_deepslate"}] run function ult:settings/opt/in
    # Swords: auto ready settings
    execute if data storage ult:temp Player{autoReady: 0b} unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] run function ult:settings/player/auto_ready
    execute if data storage ult:temp Player{autoReady: 1b} unless data entity @s EnderItems[{id: "minecraft:golden_sword"}] run function ult:settings/player/auto_ready
    execute if data storage ult:temp Player{autoReady: 2b} unless data entity @s EnderItems[{id: "minecraft:netherite_sword"}] run function ult:settings/player/auto_ready
    # Heads: afk time out settings
    execute if data storage ult:temp Player{afkTime: 0b} unless data entity @s EnderItems[{id: "minecraft:player_head"}] run function ult:settings/player/afk
    execute if data storage ult:temp Player{afkTime: 1b} unless data entity @s EnderItems[{id: "minecraft:zombie_head"}] run function ult:settings/player/afk
    execute if data storage ult:temp Player{afkTime: 2b} unless data entity @s EnderItems[{id: "minecraft:skeleton_skull"}] run function ult:settings/player/afk
    execute if data storage ult:temp Player{afkTime: 3b} unless data entity @s EnderItems[{id: "minecraft:wither_skeleton_skull"}] run function ult:settings/player/afk
    # Ballot-like items: skip vote settings
    execute if data storage ult:temp Player{skipVote: 0b} unless data entity @s EnderItems[{id: "minecraft:paper"}] run function ult:settings/player/vote_skip
    execute if data storage ult:temp Player{skipVote: 1b} unless data entity @s EnderItems[{id: "minecraft:jukebox"}] run function ult:settings/player/vote_skip
    execute if data storage ult:temp Player{skipVote: 2b} unless data entity @s EnderItems[{id: "minecraft:barrier"}] run function ult:settings/player/vote_skip
    # Eye of Ender: spectator settings
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:ender_eye"}] run function ult:settings/player/spectate
    # Golden Apple: hotbar settings
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:golden_apple"}] run function ult:settings/player/hotbar/default
    # Book: statistics
    execute if score @s menu = menu.main const unless data entity @s EnderItems[{id: "minecraft:book"}] run function ult:settings/player/main
