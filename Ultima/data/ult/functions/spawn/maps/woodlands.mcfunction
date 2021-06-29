function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.bow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/bow"
function ult:spawn/items/give


execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/arrows"
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "protection", lvl: 4}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable: 1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable: 1b}
item replace entity @s armor.head with iron_helmet{Unbreakable: 1b, Enchantments: [{id: "protection", lvl: 4}]}

function ult:spawn/items/refills/woodlands
