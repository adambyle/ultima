function ult:data/player/get
clear @s #ult:map_items/avanto

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.avanto.sword
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.avanto.bow
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.avanto.potion
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/jump_pot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.avanto.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/avanto/sword
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/avanto/bow
execute unless data entity @s EnderItems[{id: "minecraft:potion"}] run loot replace entity @s inventory.2 loot ult:map_items/avanto/jump_pot
execute unless data entity @s EnderItems[{id: "minecraft:tipped_arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/avanto/one_arrow
