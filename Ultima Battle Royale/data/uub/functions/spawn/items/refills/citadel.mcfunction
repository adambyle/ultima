function uub:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.citadel.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/arrows"
function uub:spawn/items/give
