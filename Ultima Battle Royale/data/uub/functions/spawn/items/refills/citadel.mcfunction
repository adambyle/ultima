clear @s arrow
scoreboard players operation #hotbar _var = @s z.citadel.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/arrows"
function uub:spawn/items/give
