function ult:data/player/get_nbt

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dracula.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/dracula/arrows
function ult:spawn/items/give

clear @s splash_potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dracula.harm_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dracula/harm_pot
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dracula.weak_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dracula/weak_pot
function ult:spawn/items/give
