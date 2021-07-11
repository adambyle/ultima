function ult:data/player/get_nbt

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.manor.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/manor/arrows
function ult:spawn/items/give

clear @s potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.manor.potion
loot replace block 0 0 0 container.0 loot ult:map_items/manor/potion
function ult:spawn/items/give
