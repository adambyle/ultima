function ult:data/player/get_nbt
clear @s #ult:map_items/citadel

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.axe
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/axe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.shield
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/shield"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.crossbow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/crossbow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/one_arrow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.pearls
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/pearl"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:golden_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/citadel/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/citadel/crossbow
execute unless data entity @s EnderItems[{id: "minecraft:golden_axe"}] run loot replace entity @s inventory.2 loot ult:map_items/citadel/axe
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run loot replace entity @s inventory.3 loot ult:map_items/citadel/shield
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.4 loot ult:map_items/citadel/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:ender_pearl"}] run loot replace entity @s inventory.5 loot ult:map_items/citadel/pearl
