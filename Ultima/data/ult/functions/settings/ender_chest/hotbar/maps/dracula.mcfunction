function ult:data/player/get_nbt
clear @s #ult:map_items/dracula

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/sword"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.weak_pot
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/weak_pot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.harm_pot
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/harm_pot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.crossbow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/crossbow"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dracula.arrows
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/dracula/one_arrow"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] run loot replace entity @s inventory.0 loot ult:map_items/dracula/sword
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run loot replace entity @s inventory.1 loot ult:map_items/dracula/crossbow
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run loot replace entity @s inventory.2 loot ult:map_items/dracula/one_arrow
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion", tag: {Potion: "minecraft:water"}}] run loot replace entity @s inventory.3 loot ult:map_items/dracula/weak_pot
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion", tag: {Potion: "minecraft:harming"}}] run loot replace entity @s inventory.4 loot ult:map_items/dracula/harm_pot
