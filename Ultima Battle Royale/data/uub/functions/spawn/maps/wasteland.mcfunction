function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.wasteland.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wasteland/sword"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.wasteland.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wasteland/bow"
function uub:spawn/items/give

replaceitem entity @s armor.feet leather_boots{Unbreakable:1b, display: {color: 8004622}}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b, display: {color: 15291665}}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b, display: {color: 8004622}}

function uub:spawn/items/refills/wasteland

attribute @s generic.attack_speed base set 22.4
