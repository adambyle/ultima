function ult:data/player/get_nbt
clear @s #ult:map_items/last_stand

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/axe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/shield"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.cannonball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/cannonball"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/one_arrow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/potion"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:netherite_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/last_stand/sword
execute unless data entity @s EnderItems[{id: "minecraft:netherite_axe"}] run loot replace entity @s inventory.1 loot ult:map_items/last_stand/axe
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run loot replace entity @s inventory.2 loot ult:map_items/last_stand/shield
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run loot replace entity @s inventory.3 loot ult:map_items/last_stand/bow
execute unless data entity @s EnderItems[{id: "minecraft:coal"}] run loot replace entity @s inventory.4 loot ult:map_items/last_stand/cannonball
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.5 loot ult:map_items/last_stand/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion"}] run loot replace entity @s inventory.6 loot ult:map_items/last_stand/potion
