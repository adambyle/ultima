function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.sword
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.wasteland.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/wasteland/bow
function ult:items/give

item replace entity @s armor.feet with leather_boots{Unbreakable: true, display: {color: 8004622}}
item replace entity @s armor.legs with leather_leggings{Unbreakable: true, display: {color: 15291665}}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: true}
item replace entity @s armor.head with leather_helmet{Unbreakable: true, display: {color: 8004622}}

function ult:items/refills/wasteland

attribute @s generic.attack_speed base set 22.4
