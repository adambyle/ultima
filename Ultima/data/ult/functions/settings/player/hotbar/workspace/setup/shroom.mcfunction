function ult:data/player/get
clear @s #ult:map_items/shroom

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.sword
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.shears
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/shears
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.bow
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/shroom/sword
execute unless data entity @s EnderItems[{id: "minecraft:shears"}] run loot replace entity @s inventory.1 loot ult:map_items/shroom/sword
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.2 loot ult:map_items/shroom/bow
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/shroom/one_arrow
