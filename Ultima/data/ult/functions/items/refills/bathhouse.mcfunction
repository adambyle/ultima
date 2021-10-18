function ult:data/player/get

clear @s arrow
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.bathhouse.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/arrows
function ult:items/give
