function ult:data/player/get

clear @s ender_pearl
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.reflection.pearls
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/pearls
function ult:items/give
