function ult:data/player/get_nbt

clear @s ender_pearl
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.reflection.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/pearl"
function ult:spawn/items/give
