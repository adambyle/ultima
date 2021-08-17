function ult:data/player/get

clear @s arrow
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/arrows
function ult:items/give

clear @s coal
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.cannonball
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/cannonball
function ult:items/give

clear @s splash_potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.potion
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/potion
function ult:items/give
