function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.trident
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/trident"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/crossbow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.heart
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/heart"
function ult:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable:1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]}

function ult:spawn/items/refills/marooned

effect give @s night_vision 99999 0 true
