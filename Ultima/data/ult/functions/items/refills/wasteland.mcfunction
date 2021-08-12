function ult:data/player/get

clear @s flint
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.bomb
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/smoke_bomb
function ult:items/give

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/arrows
function ult:items/give
