function ult:data/player/get_nbt

clear @s firework_rocket
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.marooned.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/marooned/arrows"
function ult:spawn/items/give
