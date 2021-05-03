function ult:data/player/get_nbt
clear @s #ult:map_items/ancient

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/axe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.pickaxe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/pickaxe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.fireball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/fireball"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.ingot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/ingot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.hoe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/hoe"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id:"minecraft:diamond_axe"}] run loot replace entity @s inventory.0 loot ult:map_items/ancient/axe
execute unless data entity @s EnderItems[{id:"minecraft:diamond_pickaxe"}] run loot replace entity @s inventory.1 loot ult:map_items/ancient/pickaxe
execute unless data entity @s EnderItems[{id:"minecraft:netherite_ingot"}] run loot replace entity @s inventory.2 loot ult:map_items/ancient/ingot
execute unless data entity @s EnderItems[{id:"minecraft:fire_charge"}] run loot replace entity @s inventory.3 loot ult:map_items/ancient/fireball
execute unless data entity @s EnderItems[{id:"minecraft:diamond_hoe"}] run loot replace entity @s inventory.6 loot ult:map_items/ancient/hoe
