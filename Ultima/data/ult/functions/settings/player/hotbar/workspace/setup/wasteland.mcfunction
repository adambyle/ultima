function ult:data/player/get
clear @s #ult:map_items/wasteland

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.sword
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.bomb
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/smoke_bomb
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.meat
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/rabbit
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:wooden_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/wasteland/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/wasteland/bow
execute unless data entity @s EnderItems[{id: "minecraft:flint"}] run loot replace entity @s inventory.2 loot ult:map_items/wasteland/smoke_bomb
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/wasteland/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:cooked_rabbit"}] run loot replace entity @s inventory.4 loot ult:map_items/wasteland/rabbit
