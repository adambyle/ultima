clear @s #uub:map_items/dracula

scoreboard players operation #hotbar _var = @s z.dracula.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.weak
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/weak_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/harm_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/crossbow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dracula.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/one_arrow"
function uub:spawn/items/hotbar_settings
