clear @s #uub:map_items/manor

scoreboard players operation #hotbar _var = @s z.manor.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/axe"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/crossbow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/shield"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/potion"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.manor.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/one_arrow"
function uub:spawn/items/hotbar_settings
