clear @s fire_charge
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.fireball
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/fireball
function ult:items/give
