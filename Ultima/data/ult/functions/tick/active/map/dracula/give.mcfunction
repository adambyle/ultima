data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/trident"
loot give @p[tag=player, tag=alive] kill @e[limit=1, tag=loot_table_handler]

kill @s
