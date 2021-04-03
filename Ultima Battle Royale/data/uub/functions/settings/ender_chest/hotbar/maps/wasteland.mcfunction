clear @s #uub:map_items/wasteland

scoreboard players operation #hotbar _var = @s z.wastes.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.wastes.bomb
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/smoke_bomb"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.wastes.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/bow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.wastes.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/one_arrow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.wastes.rabbit
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/rabbit"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:wooden_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/wastes/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot uub:map_items/wastes/bow
execute unless data entity @s EnderItems[{id:"minecraft:flint"}] run loot replace entity @s inventory.2 loot uub:map_items/wastes/smoke_bomb
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.3 loot uub:map_items/wastes/one_arrow
execute unless data entity @s EnderItems[{id:"minecraft:cooked_rabbit"}] run loot replace entity @s inventory.4 loot uub:map_items/wastes/rabbit
