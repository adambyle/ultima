function ult:data/player/get_nbt
clear @s #ult:map_items/marooned

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.crossbow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/crossbow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.heart
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/heart"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/one_arrow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.trident
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/trident"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.fish
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/fish"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/marooned/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/marooned/crossbow
execute unless data entity @s EnderItems[{id: "minecraft:heart_of_the_sea"}] run loot replace entity @s inventory.2 loot ult:map_items/marooned/heart
execute unless data entity @s EnderItems[{id: "minecraft:trident"}] run loot replace entity @s inventory.3 loot ult:map_items/marooned/trident
execute unless data entity @s EnderItems[{id: "minecraft:firework_rocket"}] run loot replace entity @s inventory.4 loot ult:map_items/marooned/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:cooked_salmon"}] run loot replace entity @s inventory.5 loot ult:map_items/marooned/fish
