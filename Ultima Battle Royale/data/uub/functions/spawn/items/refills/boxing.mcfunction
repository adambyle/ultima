clear @s potion
scoreboard players operation #hotbar _var = @s z.boxing.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/boxing/potion"
function uub:spawn/items/give

clear @s snowball
scoreboard players operation #hotbar _var = @s z.boxing.ball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/boxing/snowball"
function uub:spawn/items/give
