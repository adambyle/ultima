clear @s #uub:map_items/avanto

scoreboard players operation #hotbar _var = @s z.avanto.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.avanto.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/bow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.avanto.jump
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/jump_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.avanto.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/one_arrow"
function uub:spawn/items/hotbar_settings
