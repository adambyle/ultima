function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.permafrost.axe
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/axe
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.permafrost.pickaxe
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/pickaxe
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.permafrost.fishing_rod
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/fishing_rod
function ult:items/give

item replace entity @s armor.head with iron_helmet{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 2s}]}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: true, Enchantments: [{id: "minecraft:protection", lvl: 2s}]}

function ult:items/refills/permafrost
