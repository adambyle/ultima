function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.sword
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.bow
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/bow
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.abyss.fishing_rod
loot replace block 0 0 0 container.0 loot ult:map_items/abyss/rod
function ult:spawn/items/give

function ult:spawn/items/refills/abyss

attribute @s generic.attack_speed base set 22.4
