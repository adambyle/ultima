function ult:data/player/get
clear @s #ult:map_items/bathhouse

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.sword
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.shears
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/shears
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.bow
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.blocks
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/block
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/bathhouse/sword
execute unless data entity @s EnderItems[{id: "minecraft:shears"}] run loot replace entity @s inventory.1 loot ult:map_items/bathhouse/shears
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.2 loot ult:map_items/bathhouse/bow
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/bathhouse/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:white_wool"}] run loot replace entity @s inventory.4 loot ult:map_items/bathhouse/block
