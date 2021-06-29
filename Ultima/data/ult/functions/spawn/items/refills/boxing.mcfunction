function ult:data/player/get_nbt

clear @s potion
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.boxing.potion
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/boxing/potion"
function ult:spawn/items/give

clear @s snowball
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.boxing.powerball
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/boxing/snowball"
function ult:spawn/items/give
