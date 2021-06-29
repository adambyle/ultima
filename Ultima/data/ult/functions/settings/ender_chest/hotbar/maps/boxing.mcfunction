function ult:data/player/get_nbt
clear @s #ult:map_items/boxing

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.boxing.potion
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/boxing/potion"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.boxing.powerball
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/boxing/snowball"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:potion"}] run loot replace entity @s inventory.0 loot ult:map_items/boxing/potion
execute unless data entity @s EnderItems[{id: "minecraft:snowball"}] run loot replace entity @s inventory.1 loot ult:map_items/boxing/snowball
