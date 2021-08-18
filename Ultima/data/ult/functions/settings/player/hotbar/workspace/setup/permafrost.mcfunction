function ult:data/player/get
clear @s #ult:map_items/permafrost

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.axe
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/axe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.pickaxe
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/pickaxe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.snowball
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/one_snowball
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.milk
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/milk
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.diamond
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/one_diamond
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.fishing_rod
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/fishing_rod
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:wooden_axe"}] run loot replace entity @s inventory.0 loot ult:map_items/permafrost/axe
execute unless data entity @s EnderItems[{id: "minecraft:iron_pickaxe"}] run loot replace entity @s inventory.1 loot ult:map_items/permafrost/pickaxe
execute unless data entity @s EnderItems[{id: "minecraft:snowball"}] run loot replace entity @s inventory.2 loot ult:map_items/permafrost/one_snowball
execute unless data entity @s EnderItems[{id: "minecraft:milk_bucket"}] run loot replace entity @s inventory.3 loot ult:map_items/permafrost/milk
execute unless data entity @s EnderItems[{id: "minecraft:diamond"}] run loot replace entity @s inventory.4 loot ult:map_items/permafrost/one_diamond
execute unless data entity @s EnderItems[{id: "minecraft:fishing_rod"}] run loot replace entity @s inventory.5 loot ult:map_items/permafrost/fishing_rod
