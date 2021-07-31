function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.axe
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/axe
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.shield
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/shield
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: true}
item replace entity @s armor.legs with iron_leggings{Unbreakable: true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: true}
item replace entity @s armor.head with iron_helmet{Unbreakable: true}

function ult:spawn/items/refills/dungeon
