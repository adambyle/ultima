scoreboard players operation #hotbar _var = @s z.abyss.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.abyss.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/bow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.abyss.rod
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/rod"
function uub:spawn/items/give

function uub:spawn/items/refills/abyss
