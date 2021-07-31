function ult:data/player/get

clear @s ender_pearl
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.pearls
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/pearl
function ult:spawn/items/give
