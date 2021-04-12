scoreboard players remove #map event 1
execute if score #map event matches ..0 run loot give @a[tag=player, tag=alive] loot uub:map_items/townsquare/emerald
execute if score #map event matches ..0 run scoreboard players set #map event 40
loot give @a[scores={x.damage=1..}] loot uub:map_items/townsquare/emerald
loot give @a[scores={x.damage=1..}] loot uub:map_items/townsquare/emerald
