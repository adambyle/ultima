function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.sword
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.axe
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/axe
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.bow
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/bow
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.townSquare.shield
loot replace block 0 0 0 container.0 loot ult:map_items/town_square/shield
function ult:items/give

item replace entity @s armor.feet with diamond_boots{Unbreakable: true}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: true}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable: true}
item replace entity @s armor.head with diamond_helmet{Unbreakable: true}

function ult:items/refills/town_square
