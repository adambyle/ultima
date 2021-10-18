function ult:data/player/get
clear @s #ult:map_items/ancient

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.axe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/axe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.pickaxe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/pickaxe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.fireball
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/fireball
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.ingot
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/ingot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.hoe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/hoe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:diamond_axe"}] run loot replace entity @s inventory.0 loot ult:map_items/ancient/axe
execute unless data entity @s EnderItems[{id: "minecraft:diamond_pickaxe"}] run loot replace entity @s inventory.1 loot ult:map_items/ancient/pickaxe
execute unless data entity @s EnderItems[{id: "minecraft:netherite_ingot"}] run loot replace entity @s inventory.2 loot ult:map_items/ancient/ingot
execute unless data entity @s EnderItems[{id: "minecraft:fire_charge"}] run loot replace entity @s inventory.3 loot ult:map_items/ancient/fireball
execute unless data entity @s EnderItems[{id: "minecraft:diamond_hoe"}] run loot replace entity @s inventory.6 loot ult:map_items/ancient/hoe
