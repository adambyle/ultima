clear @s #uub:map_items/woodlands

scoreboard players operation #hotbar _var = @s z.woods.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.woods.gapple
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/gapple"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.woods.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/bow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.woods.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/one_arrow"
function uub:spawn/items/hotbar_settings
