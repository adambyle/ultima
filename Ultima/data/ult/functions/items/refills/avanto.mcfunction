function ult:data/player/get

clear @s arrow
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.avanto.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/arrows
function ult:items/give

clear @s potion
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.avanto.potion
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/jump_pot
function ult:items/give
