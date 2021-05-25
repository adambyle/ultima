function ult:data/player/get_nbt
clear @s #ult:map_items/town_square

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.town_square.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.town_square.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/shield"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.town_square.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.town_square.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/town_square/axe"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/town_square/sword
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/town_square/bow
execute unless data entity @s EnderItems[{id:"minecraft:shield"}] run loot replace entity @s inventory.2 loot ult:map_items/town_square/shield
execute unless data entity @s EnderItems[{id:"minecraft:stone_axe"}] run loot replace entity @s inventory.3 loot ult:map_items/town_square/axe
