# Map-specific lighting options
    time set noon
    execute if score .map flag = flag.map.abyss const run time set 12800
    execute if score .map flag = flag.map.last_stand const run time set 13200
    execute if score .map flag = flag.map.reflection const run time set noon
    execute if score .map flag = flag.map.dracula const run time set midnight
    execute if score .map flag = flag.map.avanto const run time set midnight
