function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dracula.sword
loot replace block 0 0 0 container.0 loot ult:map_items/dracula/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dracula.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/dracula/crossbow
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: true}
item replace entity @s armor.legs with iron_leggings{Unbreakable: true}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable: true}
item replace entity @s armor.head with iron_helmet{Unbreakable: true}

function ult:spawn/items/refills/dracula
