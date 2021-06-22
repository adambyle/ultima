function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/crossbow"
function ult:spawn/items/give

item replace entity @s armor.feet with iron_boots{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}
item replace entity @s armor.head with iron_helmet{Unbreakable:1b}

function ult:spawn/items/refills/dracula
