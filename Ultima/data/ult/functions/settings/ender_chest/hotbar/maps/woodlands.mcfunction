function ult:data/player/get_nbt
clear @s #ult:map_items/woodlands

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.gapple
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/gapple"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/bow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.woodlands.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/woodlands/one_arrow"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:wooden_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/woodlands/sword
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run loot replace entity @s inventory.1 loot ult:map_items/woodlands/bow
execute unless data entity @s EnderItems[{id:"minecraft:golden_apple"}] run loot replace entity @s inventory.2 loot ult:map_items/woodlands/gapple
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run loot replace entity @s inventory.3 loot ult:map_items/woodlands/one_arrow
