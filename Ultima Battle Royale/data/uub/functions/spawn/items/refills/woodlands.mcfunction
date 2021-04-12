function uub:data/player/get_nbt

clear @s golden_apple
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.woodlands.gapple
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woodlands/gapple"
function uub:spawn/items/give

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.woodlands.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woodlands/arrows"
function uub:spawn/items/give
