function ult:data/player/get_nbt

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.citadel.sword
loot replace block 0 0 0 container.0 loot ult:map_items/citadel/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.citadel.axe
loot replace block 0 0 0 container.0 loot ult:map_items/citadel/axe
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.citadel.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/citadel/crossbow
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.citadel.shield
loot replace block 0 0 0 container.0 loot ult:map_items/citadel/shield
function ult:spawn/items/give

item replace entity @s armor.feet with golden_boots{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.legs with golden_leggings{Unbreakable: true, Enchantments: [{id: "projectile_protection", lvl: 3s}]}
item replace entity @s armor.chest with golden_chestplate{Unbreakable: true, Enchantments: [{id: "projectile_protection", lvl: 3s}]}
item replace entity @s armor.head with golden_helmet{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}

function ult:spawn/items/refills/citadel

attribute @s generic.armor base set 3

scoreboard players set @s event.rune 0
