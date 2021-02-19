clear @s arrow
scoreboard players operation #hotbar _var = @s z.avanto.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/arrows"
function uub:spawn/items/give

clear @s potion
scoreboard players operation #hotbar _var = @s z.avanto.jump
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/jump_pot"
function uub:spawn/items/give
