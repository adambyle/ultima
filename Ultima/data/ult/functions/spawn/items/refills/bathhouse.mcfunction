function ult:data/player/get_nbt

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/arrows
function ult:spawn/items/give
