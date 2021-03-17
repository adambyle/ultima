clear @s ender_pearl
scoreboard players operation #hotbar _var = @s z.reflect.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/pearl"
function uub:spawn/items/give
