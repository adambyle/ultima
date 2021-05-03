function ult:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.avanto.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/arrows"
function ult:spawn/items/give

clear @s potion
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/jump_pot"
function ult:spawn/items/give
