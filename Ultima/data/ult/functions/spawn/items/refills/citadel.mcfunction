function ult:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/arrows"
function ult:spawn/items/give
