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

execute unless data entity @s EnderItems[{id:"minecraft:diamond_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/manor/sword
execute unless data entity @s EnderItems[{id:"minecraft:diamond_axe"}] run loot replace entity @s inventory.1 loot uub:map_items/manor/axe
execute unless data entity @s EnderItems[{id:"minecraft:shield"}] run loot replace entity @s inventory.2 loot uub:map_items/manor/shield
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.3 loot uub:map_items/manor/bow
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.4 loot uub:map_items/manor/crossbow
execute unless data entity @s EnderItems[{id:"minecraft:potion"}] run loot replace entity @s inventory.5 loot uub:map_items/manor/potion
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.6 loot uub:map_items/manor/one_arrow
