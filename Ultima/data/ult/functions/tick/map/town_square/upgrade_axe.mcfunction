clear @s stone_axe
clear @s iron_axe

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.axe
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/iron_axe
function ult:items/give

tag @s add iron_axe
