function uub:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.manor.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/arrows"
function uub:spawn/items/give

clear @s potion
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.manor.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/potion"
function uub:spawn/items/give
