function ult:data/player/get
clear @s #ult:map_items/town_square

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.sword
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/sword
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.shield
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/shield
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.bow
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/bow
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.axe
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/axe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/town_square/sword
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/town_square/bow
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run loot replace entity @s inventory.2 loot ult:map_items/town_square/shield
execute unless data entity @s EnderItems[{id: "minecraft:stone_axe"}] run loot replace entity @s inventory.3 loot ult:map_items/town_square/axe
