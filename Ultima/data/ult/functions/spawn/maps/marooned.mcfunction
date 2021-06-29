function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.trident
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/trident"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.crossbow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/crossbow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.heart
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/heart"
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
item replace entity @s armor.legs with iron_leggings{Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
item replace entity @s armor.head with iron_helmet{Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}

function ult:spawn/items/refills/marooned

effect give @s night_vision 99999 0 true
