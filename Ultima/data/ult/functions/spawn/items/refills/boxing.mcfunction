function ult:data/player/get_nbt

clear @s potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.boxing.potion
loot replace block 0 0 0 container.0 loot ult:map_items/boxing/potion
function ult:spawn/items/give

clear @s snowball
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.boxing.powerball
loot replace block 0 0 0 container.0 loot ult:map_items/boxing/snowball
function ult:spawn/items/give
