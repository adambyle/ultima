clear @s fire_charge
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.fireball
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/fireball"
function ult:spawn/items/give
