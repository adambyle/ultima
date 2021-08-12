# Map-specifics
    execute if score .map flag = flag.map.ancient const run function ult:start/map/reset/ancient
    execute if score .map flag = flag.map.last_stand const run function ult:start/map/reset/last_stand
    execute if score .map flag = flag.map.bathhouse const run function ult:start/map/reset/bathhouse

# Refill items (usually when someone dies; game has to be active)
    execute if score .game_state flag = flag.game_state.active const as @a[tag=alive] run function ult:items/refill
