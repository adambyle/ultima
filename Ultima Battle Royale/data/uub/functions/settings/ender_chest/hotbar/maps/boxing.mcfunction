
clear @s #uub:map_items/boxing

scoreboard players operation #hotbar _var = @s z.boxing.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/boxing/potion"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.boxing.ball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/boxing/snowball"
function uub:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:potion"}] run loot replace entity @s inventory.0 loot uub:map_items/boxing/potion
execute unless data entity @s EnderItems[{id:"minecraft:snowball"}] run loot replace entity @s inventory.1 loot uub:map_items/boxing/snowball
