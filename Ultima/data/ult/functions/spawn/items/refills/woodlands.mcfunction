function ult:data/player/get_nbt

clear @s golden_apple
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.gapple
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/gapple"
function ult:spawn/items/give
