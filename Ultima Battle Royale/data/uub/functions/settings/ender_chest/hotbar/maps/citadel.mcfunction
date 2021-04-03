clear @s #uub:map_items/citadel

scoreboard players operation #hotbar _var = @s z.citadel.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/axe"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.citadel.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.citadel.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/shield"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.citadel.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/crossbow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.citadel.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/one_arrow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.citadel.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/pearl"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:golden_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/citadel/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot uub:map_items/citadel/crossbow
execute unless data entity @s EnderItems[{id:"minecraft:golden_axe"}] run loot replace entity @s inventory.2 loot uub:map_items/citadel/axe
execute unless data entity @s EnderItems[{id:"minecraft:shield"}] run loot replace entity @s inventory.3 loot uub:map_items/citadel/shield
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.4 loot uub:map_items/citadel/one_arrow
execute unless data entity @s EnderItems[{id:"minecraft:ender_pearl"}] run loot replace entity @s inventory.5 loot uub:map_items/citadel/pearl
