scoreboard players operation #hotbar _var = @p[tag=player, tag=alive] z.dracula.tri
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/trident"
execute as @p[tag=player, tag=alive] run function uub:spawn/items/give

kill @s
