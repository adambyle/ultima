function uub:data/player/get_nbt

clear @s flint
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.wasteland.bomb
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wasteland/smoke_bomb"
function uub:spawn/items/give

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.wasteland.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wasteland/arrows"
function uub:spawn/items/give
