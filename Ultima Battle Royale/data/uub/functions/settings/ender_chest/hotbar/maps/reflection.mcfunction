
clear @s #uub:map_items/reflection

scoreboard players operation #hotbar _var = @s z.reflect.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/sword"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.reflect.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/crossbow"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.reflect.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/arrows"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.reflect.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/pearl"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:stone_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/reflection/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot uub:map_items/reflection/crossbow
execute unless data entity @s EnderItems[{id:"minecraft:firework_rocket"}] run loot replace entity @s inventory.2 loot uub:map_items/reflection/arrows
execute unless data entity @s EnderItems[{id:"minecraft:ender_pearl"}] run loot replace entity @s inventory.3 loot uub:map_items/reflection/pearl
