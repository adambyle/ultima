clear @s arrow
scoreboard players operation #hotbar _var = @s z.manor.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/arrows"
function uub:spawn/items/give

clear @s potion
scoreboard players operation #hotbar _var = @s z.manor.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/potion"
function uub:spawn/items/give
