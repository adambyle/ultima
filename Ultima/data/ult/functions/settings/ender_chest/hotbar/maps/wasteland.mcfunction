function ult:data/player/get_nbt
clear @s #ult:map_items/wasteland

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.bomb
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/smoke_bomb"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/one_arrow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.wasteland.meat
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/wasteland/rabbit"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:wooden_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/wasteland/sword
execute unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/wasteland/bow
execute unless data entity @s EnderItems[{id:"minecraft:flint"}] run loot replace entity @s inventory.2 loot ult:map_items/wasteland/smoke_bomb
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/wasteland/one_arrow
execute unless data entity @s EnderItems[{id:"minecraft:cooked_rabbit"}] run loot replace entity @s inventory.4 loot ult:map_items/wasteland/rabbit