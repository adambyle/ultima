# Summon arrows for nearby players
execute positioned 46 10 42 as @p[tag=player, tag=alive, distance=..2] run scoreboard players remove .map event 1
execute if score .map event matches ..0 run summon item 46 10 42 {Item: {Count: 1b, id: "arrow"}, Tags: ["static_item"]}
execute if score .map event matches ..0 run scoreboard players set .map event 40
execute positioned 46 10 42 unless entity @a[gamemode=adventure, tag=player, distance=..6] run kill @e[type=item, tag=static_item]
