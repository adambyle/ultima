function ult:data/player/get

clear @s slime_ball
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.chasm.charm
loot replace block 0 0 0 container.0 loot ult:map_items/chasm/charms
function ult:items/give
