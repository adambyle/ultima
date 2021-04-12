function uub:data/player/get_nbt
clear @s #uub:map_items/reflection

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/sword"
function uub:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/crossbow"
function uub:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.rocket
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/arrows"
function uub:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/pearl"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:stone_sword"}] run loot replace entity @s inventory.0 loot uub:map_items/reflection/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot uub:map_items/reflection/crossbow
execute unless data entity @s EnderItems[{id:"minecraft:firework_rocket"}] run loot replace entity @s inventory.2 loot uub:map_items/reflection/arrows
execute unless data entity @s EnderItems[{id:"minecraft:ender_pearl"}] run loot replace entity @s inventory.3 loot uub:map_items/reflection/pearl
