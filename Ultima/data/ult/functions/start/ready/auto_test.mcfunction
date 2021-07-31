function ult:data/player/get

# Ready when not AFK
    execute if data storage ult:temp Player{autoReady: 1b} as @s[tag=!afk] unless score .map_mode flag = flag.map_mode.vote const run function ult:start/ready

# Ready always
    execute if data storage ult:temp Player{autoReady: 2b} unless score .map_mode flag = flag.map_mode.vote const run function ult:start/ready

# Skip voting if AFK (ready always)
    execute if data storage ult:temp Player{autoReady: 2b, skipVote: 1b} as @s[tag=afk] if score .map_mode flag = flag.map_mode.vote const run function ult:start/ready

# Skip voting always (and ready)
    execute if data storage ult:temp Player{skipVote: 2b} if score .map_mode flag = flag.map_mode.vote const run function ult:start/ready
