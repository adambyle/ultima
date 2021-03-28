
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

scoreboard players operation #hotbar _var = @s z.abyss.rod
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/rod"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:diamond_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/abyss/sword
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.1 loot uub:map_items/abyss/bow
execute unless data entity @s EnderItems[{id:"minecraft:netherite_ingot"}] run loot replace entity @s inventory.2 loot uub:map_items/abyss/ingot
execute unless data entity @s EnderItems[{id:"minecraft:potion"}] run loot replace entity @s inventory.3 loot uub:map_items/abyss/lev_pot
execute unless data entity @s EnderItems[{id:"minecraft:fishing_rod"}] run loot replace entity @s inventory.4 loot uub:map_items/abyss/rod
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.5 loot uub:map_items/abyss/one_arrow
