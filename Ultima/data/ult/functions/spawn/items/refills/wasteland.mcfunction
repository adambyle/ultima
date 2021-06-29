function ult:data/player/get_nbt

clear @s flint
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.bomb
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/smoke_bomb"
function ult:spawn/items/give

clear @s arrow
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/arrows"
function ult:spawn/items/give
