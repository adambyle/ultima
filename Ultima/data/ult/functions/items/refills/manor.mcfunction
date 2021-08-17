function ult:data/player/get

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.manor.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/manor/arrows
function ult:items/give

clear @s potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.manor.potion
loot replace block 0 0 0 container.0 loot ult:map_items/manor/potion
function ult:items/give
