function ult:data/player/get

clear @s firework_rocket
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.marooned.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/marooned/arrows
function ult:items/give
