function ult:data/player/get_nbt
clear @s #ult:map_items/abyss

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.sword
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.bow
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.potion
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/lev_pot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.ingot
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/ingot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.fishing_rod
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/rod
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:diamond_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/abyss/sword
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/abyss/bow
execute unless data entity @s EnderItems[{id: "minecraft:netherite_ingot"}] run loot replace entity @s inventory.2 loot ult:map_items/abyss/ingot
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion"}] run loot replace entity @s inventory.3 loot ult:map_items/abyss/lev_pot
execute unless data entity @s EnderItems[{id: "minecraft:fishing_rod"}] run loot replace entity @s inventory.4 loot ult:map_items/abyss/rod
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.5 loot ult:map_items/abyss/one_arrow
