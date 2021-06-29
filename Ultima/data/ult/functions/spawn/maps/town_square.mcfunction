function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townSquare.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townSquare.axe
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/axe"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townSquare.bow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/bow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townSquare.shield
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/shield"
function ult:spawn/items/give

item replace entity @s armor.feet with diamond_boots{Unbreakable: 1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: 1b}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable: 1b}
item replace entity @s armor.head with diamond_helmet{Unbreakable: 1b}

function ult:spawn/items/refills/town_square
