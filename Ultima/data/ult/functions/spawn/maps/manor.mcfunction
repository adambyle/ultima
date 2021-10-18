function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.sword
loot replace block 0 0 0 container.0 loot ult:map_items/manor/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.axe
loot replace block 0 0 0 container.0 loot ult:map_items/manor/axe
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.bow
loot replace block 0 0 0 container.0 loot ult:map_items/manor/bow
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/manor/crossbow
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.shield
loot replace block 0 0 0 container.0 loot ult:map_items/manor/shield
function ult:items/give

item replace entity @s armor.feet with diamond_boots{Unbreakable: true}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: true}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable: true}
item replace entity @s armor.head with diamond_helmet{Unbreakable: true}

function ult:items/refills/manor
