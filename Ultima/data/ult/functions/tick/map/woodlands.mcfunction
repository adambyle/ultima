# Summon arrows for nearby players at the arrow refill station
    # Countdown timer if nearby player
    execute positioned 46 10 42 as @p[tag=alive, distance=..2] run scoreboard players remove .map event 1
    # Summon arrow when at 0
    execute if score .map event matches ..0 run summon item 46 10 42 {Item: {Count: 1b, id: "arrow"}, Tags: ["static"]}
    execute if score .map event matches ..0 run scoreboard players set .map event 30
    # Don't let missed arrows be collected by later players
    execute positioned 46 10 42 unless entity @a[gamemode=adventure, tag=player, distance=..6] run kill @e[type=item, tag=static]
