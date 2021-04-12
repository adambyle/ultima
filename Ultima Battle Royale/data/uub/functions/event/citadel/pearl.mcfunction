clear @s ender_pearl
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.citadel.pearls
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/citadel/pearl"
function uub:spawn/items/give
