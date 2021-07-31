function ult:data/player/get
clear @s #ult:map_items/marooned

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.sword
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/crossbow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.heart
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/heart
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.trident
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/trident
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.fish
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/fish
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/marooned/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/marooned/crossbow
execute unless data entity @s EnderItems[{id: "minecraft:heart_of_the_sea"}] run loot replace entity @s inventory.2 loot ult:map_items/marooned/heart
execute unless data entity @s EnderItems[{id: "minecraft:trident"}] run loot replace entity @s inventory.3 loot ult:map_items/marooned/trident
execute unless data entity @s EnderItems[{id: "minecraft:firework_rocket"}] run loot replace entity @s inventory.4 loot ult:map_items/marooned/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:cooked_salmon"}] run loot replace entity @s inventory.5 loot ult:map_items/marooned/fish
