function ult:data/player/get
clear @s #ult:map_items/woodlands

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.sword
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.gapple
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/gapple
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.bow
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/one_arrow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:wooden_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/woodlands/sword
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/woodlands/bow
execute unless data entity @s EnderItems[{id: "minecraft:golden_apple"}] run loot replace entity @s inventory.2 loot ult:map_items/woodlands/gapple
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/woodlands/one_arrow
