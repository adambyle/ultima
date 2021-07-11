# Map-specifics
    execute if score .map flag = flag.map.ancient const run function ult:start/map/reset/ancient
    execute if score .map flag = flag.map.last_stand const run function ult:start/map/reset/last_stand

# Refill items (usually when someone dies; game has to be active)
    execute if score .game_state flag = flag.game_state.active const as @a[tag=player, tag=alive] run function ult:spawn/items/refill
