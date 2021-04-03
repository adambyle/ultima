clear @s flint
scoreboard players operation #hotbar _var = @s z.wastes.bomb
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/smoke_bomb"
function uub:spawn/items/give

clear @s arrow
scoreboard players operation #hotbar _var = @s z.wastes.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/arrows"
function uub:spawn/items/give
