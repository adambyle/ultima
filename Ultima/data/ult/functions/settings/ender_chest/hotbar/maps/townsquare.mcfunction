function ult:data/player/get_nbt
clear @s #ult:map_items/townsquare

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townsquare.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/townsquare/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townsquare.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/townsquare/shield"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townsquare.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/townsquare/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.townsquare.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/townsquare/axe"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:iron_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/townsquare/sword
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/townsquare/bow
execute unless data entity @s EnderItems[{id:"minecraft:shield"}] run loot replace entity @s inventory.2 loot ult:map_items/townsquare/shield
execute unless data entity @s EnderItems[{id:"minecraft:stone_axe"}] run loot replace entity @s inventory.3 loot ult:map_items/townsquare/axe
