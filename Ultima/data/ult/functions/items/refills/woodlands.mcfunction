function ult:data/player/get

clear @s golden_apple
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.woodlands.gapple
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/gapple
function ult:items/give
