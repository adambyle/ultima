clear @s firework_rocket
scoreboard players operation #hotbar _var = @s z.reflect.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/arrows"
function uub:spawn/items/give
