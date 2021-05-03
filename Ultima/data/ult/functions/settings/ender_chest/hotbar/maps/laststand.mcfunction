function ult:data/player/get_nbt
clear @s #ult:map_items/laststand

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/axe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/shield"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.cannonball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/cannonball"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/one_arrow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/potion"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:netherite_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/laststand/sword
execute unless data entity @s EnderItems[{id:"minecraft:netherite_axe"}] run loot replace entity @s inventory.1 loot ult:map_items/laststand/axe
execute unless data entity @s EnderItems[{id:"minecraft:shield"}] run loot replace entity @s inventory.2 loot ult:map_items/laststand/shield
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.3 loot ult:map_items/laststand/bow
execute unless data entity @s EnderItems[{id:"minecraft:coal"}] run loot replace entity @s inventory.4 loot ult:map_items/laststand/cannonball
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.5 loot ult:map_items/laststand/one_arrow
execute unless data entity @s EnderItems[{id:"minecraft:potion"}] run loot replace entity @s inventory.6 loot ult:map_items/laststand/potion
