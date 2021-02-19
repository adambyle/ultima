clear @s #uub:map_items/abyss

scoreboard players operation #hotbar _var = @s z.abyss.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.abyss.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/bow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.abyss.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/lev_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.abyss.ingot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/ingot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.abyss.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/one_arrow"
function uub:spawn/items/hotbar_settings
