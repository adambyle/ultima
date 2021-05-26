function ult:data/player/get_nbt
clear @s #ult:map_items/dungeon

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/axe"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/harm_pot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.frenzy_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/attack_pot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.stealth_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/speed_pot"
function ult:spawn/items/hotbar_settings

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/shield"
function ult:spawn/items/hotbar_settings

execute unless data entity @s EnderItems[{id: "minecraft:stone_axe"}] run loot replace entity @s inventory.0 loot ult:map_items/dungeon/axe
execute unless data entity @s EnderItems[{id: "minecraft:splash_potion"}] run loot replace entity @s inventory.1 loot ult:map_items/dungeon/harm_pot
execute unless data entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 1b}]}}] run loot replace entity @s inventory.2 loot ult:map_items/dungeon/speed_pot
execute unless data entity @s EnderItems[{id: "minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}] run loot replace entity @s inventory.3 loot ult:map_items/dungeon/attack_pot
