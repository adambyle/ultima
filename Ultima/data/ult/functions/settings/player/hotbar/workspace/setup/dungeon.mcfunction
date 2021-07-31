function ult:data/player/get
clear @s #ult:map_items/dungeon

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.axe
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/axe
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.harm_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/harm_pot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.frenzy_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/attack_pot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.stealth_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/speed_pot
function ult:settings/player/hotbar/workspace/hotbar_settings

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.shield
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/shield
function ult:settings/player/hotbar/workspace/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:stone_axe"}] run loot replace entity @s inventory.0 loot ult:map_items/dungeon/axe
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion"}] run loot replace entity @s inventory.1 loot ult:map_items/dungeon/harm_pot
execute unless data entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 1b}]}}] run loot replace entity @s inventory.2 loot ult:map_items/dungeon/speed_pot
execute unless data entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}] run loot replace entity @s inventory.3 loot ult:map_items/dungeon/attack_pot
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run loot replace entity @s inventory.4 loot ult:map_items/dungeon/shield
