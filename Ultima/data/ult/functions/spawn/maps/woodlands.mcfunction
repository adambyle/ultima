function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.sword
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.bow
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/bow
function ult:spawn/items/give


execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.arrows
loot replace block 0 0 0 container.0 loot ult:map_items/woodlands/arrows
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 4s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable: true}
item replace entity @s armor.chest with leather_chestplate{Unbreakable: true}
item replace entity @s armor.head with iron_helmet{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 4s}]}

function ult:spawn/items/refills/woodlands
