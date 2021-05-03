clear @s firework_rocket
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.reflection.rocket
execute if score @s pn matches 1 run data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/rocket_red"
execute if score @s pn matches 2 run data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/rocket_blue"
execute if score @s pn matches 3 run data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/rocket_green"
execute if score @s pn matches 4 run data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/rocket_yellow"
function ult:spawn/items/give
